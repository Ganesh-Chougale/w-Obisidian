```csharp
using System;
using PagedList;
using System.Linq;
using System.Web.Mvc;
using System.Configuration;
using System.Threading.Tasks;
using System.Collections.Generic;
using ZanvarGroup.Erp.Business.Base;
using ZanvarGroup.Controllers.Filters;
using ZanvarGroup.Erp.Business.Masters;
using ZanvarGroup.Erp.Business.Entities.Masters;
using ZanvarGroup.Erp.Business.Services.Masters;
using ZanvarGroup.Erp.Business.Transactions.Material;

namespace ZanvarGroup.Areas.Material.Controllers
{
    public class ToolStockConversionController : Controller
    {
        // GET: Material/ToolStockConversion
        [AuthorizationFilter(MenuId = 40623, AccessType = "Console")]
        public async Task<ActionResult> Index(string sortOrder, string sortdir, string searchString, int? page, string FromDate, string ToDate)
        {
            string strStartDate = "";
            string strToDate = "";
            string strSortDir = "";
            if (FromDate == null)
            {
                MstMenu _objMstMenu = MstMenu.getMenuByDocNo(ToolStockConversion.MenuDocNo);
                strStartDate = DateUtility.getFormatedDate(DateUtility.getBackDateOnDays(_objMstMenu.ViewDays), 1);
            }
            else
            {
                strStartDate = FromDate;
            }
            if (ToDate == null)
            {
                strToDate = DateUtility.getFormatedDate(DateUtility.getCurrentDate(), 1);
            }
            else
            {
                strToDate = ToDate;
            }
            List<ToolStockConversion> lst = await ToolStockConversion.GetDateWiseAll(strStartDate, strToDate);
            TranGridSettings _objTranGridSettings = new TranGridSettings() { TranFromDate = DateUtility.getFormatedDate(strStartDate, 0), TranToDate = DateUtility.getFormatedDate(strToDate, 0) };
            ViewData["trangridsettings"] = _objTranGridSettings;

            ViewBag.CurrentSort = sortOrder;
            ViewBag.FromDate = strStartDate;
            ViewBag.ToDate = strToDate;

            if (!string.IsNullOrEmpty(searchString))
            {
                ViewBag.CurrentFilter = searchString;
                //lst = lst.Where(obj => (obj.ShortTrnNo != null && obj.ShortTrnNo.ToUpper().Contains(searchString.ToUpper())) || (obj.FormattedGrnDate != null && obj.FormattedGrnDate.ToUpper().Contains(searchString.ToUpper()))).ToList();
                lst = lst.Where(obj => (obj.ShortTrnNo != null && obj.ShortTrnNo.ToUpper().Contains(searchString.ToUpper())) || (obj.FormattedTrnDate != null && obj.FormattedTrnDate.ToUpper().Contains(searchString.ToUpper()))).ToList();
            }

            if (!string.IsNullOrEmpty(sortdir))
            {
                strSortDir = sortdir;
                if (sortdir == "desc")
                {
                    ViewBag.SortDir = "asc";
                }
                else
                {
                    ViewBag.SortDir = "desc";
                }
            }

            switch (sortOrder)
            {
                case "DocNo":
                    if (strSortDir == "desc")
                    {
                        lst = lst.OrderByDescending(obj => obj.TrnNo).ToList();
                    }
                    else
                    {
                        lst = lst.OrderBy(obj => obj.TrnNo).ToList();
                    }
                    break;
                case "DocDate":
                    if (strSortDir == "desc")
                    {
                        lst = lst.OrderByDescending(obj => obj.TrnDate).ToList();
                    }
                    else
                    {
                        lst = lst.OrderBy(obj => obj.TrnDate).ToList();
                    }
                    break;
                case "CrtBy":
                    if (strSortDir == "desc")
                    {
                        lst = lst.OrderByDescending(obj => obj.CrtBy).ToList();
                    }
                    else
                    {
                        lst = lst.OrderBy(obj => obj.CrtBy).ToList();
                    }
                    break;
                default:
                    lst = lst.OrderByDescending(obj => obj.TrnDate).ThenByDescending(obj => obj.TrnNo).ToList();
                    ViewBag.SortDir = "asc";
                    break;
            }

            int pageSize = 50;
            int pageNumber = 1;
            if (page != null)
            {
                pageNumber = Convert.ToInt16(page);
            }

            return PartialView(lst.ToPagedList(pageNumber, pageSize));
        }

        [HttpPost]
        [AuthorizationFilter(MenuId = 40623, AccessType = "Console")]
        public async Task<ActionResult> Index(string FromDate, string ToDate)
        {
            string strStartDate = DateUtility.getFormatedDate(FromDate.Replace("'", ""), 1), strToDate = DateUtility.getFormatedDate(ToDate.Replace("'", ""), 1);
            List<ToolStockConversion> lst = await ToolStockConversion.GetDateWiseAll(strStartDate, strToDate);
            TranGridSettings _objTranGridSettings = new TranGridSettings() { TranFromDate = DateUtility.getFormatedDate(strStartDate, 0), TranToDate = DateUtility.getFormatedDate(strToDate, 0) };
            ViewData["trangridsettings"] = _objTranGridSettings;
            ViewBag.FromDate = strStartDate;
            ViewBag.ToDate = strToDate;
            ViewBag.SortDir = "asc";

            int pageSize = 50;
            int pageNumber = 1;

            //return PartialView(lst.OrderByDescending(obj => obj.GrnDate).ThenByDescending(obj => obj.GrnNo).ToPagedList(pageNumber, pageSize));
            return PartialView(lst.OrderByDescending(obj => obj.TrnDate).ThenByDescending(obj => obj.TrnNo).ToPagedList(pageNumber, pageSize));
        }

        [AuthorizationFilter(MenuId = 40623, AccessType = "Create")]
        public async Task<ActionResult> GoCreate()
        {
            return PartialView();
        }

        [HttpPost]
        public async Task<JsonResult> MaterialAutoFill(string searchString)
        {
            List<MaterialsEntity> materialsList = await MaterialsService.GetMaterialAutoFillList(searchString);

            List<MaterialsEntity> lstMat = materialsList
                                                        .Where(obj => obj.MaterialType == 113)
                                                        .ToList();

            return Json(lstMat, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public async Task<JsonResult> GetCreateList(int intMatCode)
        {
            List<ToolStockConversion> lst = await ToolStockConversion.GetCreateList(intMatCode);
            return Json(lst, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        [AuthorizationFilter(MenuId = 40623, AccessType = "Create")]
        public async Task<ActionResult> Create(List<ToolStockConversion> selectedData)
        {
            try
            {
                MstMenu _objMstMenu = MstMenu.getMenuByDocNo(PurchaseReturnDirect.MenuDocNo);

                string materialCode = selectedData[0].MaterialCode.ToString();
                string materialName = selectedData[0].MaterialName;

                int scrapMaterialCode = selectedData[0].ScarpMaterialCode;

                List<MaterialsEntity> matList = await MaterialsService.GetMaterialFillList(new List<int> { scrapMaterialCode });
                string scrapMatName = (matList != null && matList.Count > 0)
                                                                    ? matList[0].MaterialName
                                                                    : "";
                decimal finishWt = selectedData[0].FinishWt;

                string strScrapMaterialCode = selectedData[0].ScarpMaterialCode.ToString();

                int intCompanyCode = Convert.ToInt16(ConfigurationManager.AppSettings["CompanyId"].ToString());
                List<Branch> lstBranch = Branch.GetCompanyWiseLiveData(intCompanyCode);

                ViewData["branchList"] = lstBranch;
                ViewData["currentdate"] = DateUtility.getCurrentDate();
                ViewData["trandays"] = _objMstMenu.EntryDays;
                ViewData["MaterialCode"] = materialCode;
                ViewData["MaterialName"] = materialName;
                ViewData["ScrapMaterialCode"] = strScrapMaterialCode;
                ViewData["ScrapMaterialName"] = scrapMatName;
                ViewData["FinishWt"] = finishWt;
                ViewData["SelectedItems"] = selectedData;
                return PartialView();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        [HttpPost]
        [AuthorizationFilter(MenuId = 40623, AccessType = "Create")]
        public async Task<ActionResult> CreateSave(ToolStockConversion tscData)
        {
            try
            {
                tscData.CrtBy = User.Identity.Name;
                Int64 trn_no = await ToolStockConversion.Create(tscData);

                if (trn_no != 0)
                {
                    return Content("0");
                }
                else
                {
                    return Content("1");
                }
            }
            catch (Exception)
            {
                return Content("1");
            }
        }


        [AuthorizationFilter(MenuId = 40623, AccessType = "Edit")]
        public async Task<ActionResult> Edit(long TrnNo)
        {
            ToolStockConversion Hobj = await ToolStockConversion.GetExisting(TrnNo);
            List<ToolStockConversionI> IList = await ToolStockConversionI.GetTrnNoWiseData(TrnNo);
            ViewBag.DetailsList = IList;

            int intCompanyCode = Convert.ToInt16(ConfigurationManager.AppSettings["CompanyId"].ToString());
            List<Branch> lstBranch = Branch.GetCompanyWiseLiveData(intCompanyCode);
            ViewData["branchList"] = lstBranch;

            return PartialView(Hobj);
        }


        [HttpPost]
        [AuthorizationFilter(MenuId = 40623, AccessType = "Edit")]
        public async Task<ActionResult> Edit(ToolStockConversion bObj)
        {
            try
            {
                long result = 0;
                bObj.ChnBy = User.Identity.Name;
                result = await ToolStockConversion.Edit(bObj);
                if (result != 0)
                {
                    return Content("0");
                }
                else
                {
                    return PartialView(bObj);
                }
            }
            catch
            {
                return PartialView(bObj);
            }
        }


        [AuthorizationFilter(MenuId = 40623, AccessType = "Delete")]
        public async Task<ActionResult> Delete(long TrnNo)
        {
            ToolStockConversion Hobj = await ToolStockConversion.GetExisting(TrnNo);
            List<ToolStockConversionI> IList = await ToolStockConversionI.GetTrnNoWiseData(TrnNo);
            ViewBag.DetailsList = IList;

            int intCompanyCode = Convert.ToInt16(ConfigurationManager.AppSettings["CompanyId"].ToString());
            List<Branch> lstBranch = Branch.GetCompanyWiseLiveData(intCompanyCode);
            ViewData["branchList"] = lstBranch;

            return PartialView(Hobj);
        }

        [HttpPost]
        [AuthorizationFilter(MenuId = 40623, AccessType = "Delete")]
        public async Task<ActionResult> Delete(ToolStockConversion bObj)
        {
            try
            {
                long result = 0;
                bObj.ChnBy = User.Identity.Name;
                result = await ToolStockConversion.Delete(bObj);
                if (result != 0)
                {
                    return Content("0");
                }
                else
                {
                    return PartialView(bObj);
                }
            }
            catch
            {
                return PartialView(bObj);
            }
        }

        [AuthorizationFilter(MenuId = 40623, AccessType = "Delete")]
        public async Task<ActionResult> Details(long TrnNo)
        {
            ToolStockConversion Hobj = await ToolStockConversion.GetExisting(TrnNo);
            List<ToolStockConversionI> IList = await ToolStockConversionI.GetTrnNoWiseData(TrnNo);
            ViewBag.DetailsList = IList;

            int intCompanyCode = Convert.ToInt16(ConfigurationManager.AppSettings["CompanyId"].ToString());
            List<Branch> lstBranch = Branch.GetCompanyWiseLiveData(intCompanyCode);
            ViewData["branchList"] = lstBranch;

            return PartialView(Hobj);
        }



    }
}
```  