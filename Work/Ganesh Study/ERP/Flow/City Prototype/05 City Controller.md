### D:\ZanvarGroup\Source\ERP\webapp\Areas\Masters\Controllers\ `CityController.cs`  
```csharp
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using ZanvarGroup.Controllers.Filters;
using ZanvarGroup.Erp.Business.Masters;

namespace ZanvarGroup.Areas.Masters.Controllers
{
    [Authorize]
    public class CityController : Controller
    {
        // GET: Masters/City
        [AuthorizationFilter(MenuId = 1041, AccessType = "Console")]
        public async Task<ActionResult> Index(string sortOrder, string searchString, int? page)
        {
            List<City> _lstCitys =await City.GetAllAsync();
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParam = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            if (!string.IsNullOrEmpty(searchString))
            { 
                ViewBag.CurrentFilter = searchString;
                _lstCitys = _lstCitys.Where(obj => (obj.CityName != null && obj.CityName.ToUpper().Contains(searchString.ToUpper()))).ToList();
            }
            switch (sortOrder)
            {
                case "name_desc":
                    _lstCitys = _lstCitys.OrderByDescending(obj => obj.CityName).ToList();
                    break;
                default:
                    _lstCitys = _lstCitys.OrderBy(obj => obj.CityName).ToList();
                    break;
            }
            int pageSize = 50;
            int pageNumber = 1;
            if (page != null)
            {
                pageNumber = Convert.ToInt16(page);
            }

            return PartialView(_lstCitys.ToPagedList(pageNumber, pageSize));
        }

        [AuthorizationFilter(MenuId = 990144, AccessType = "Approve")]
        public async Task<ActionResult> ApprovalPending()
        {
            List<City> _lstCitys = await City.GetApprovalPendingListAsync();

            return PartialView(_lstCitys);
        }

        [AuthorizationFilter(MenuId = 1041, AccessType = "Create")]
        public ActionResult Create()
        {
            return PartialView(City.New());
        }

        [HttpPost]
        [AuthorizationFilter(MenuId = 1041, AccessType = "Create")]
        public async Task<ActionResult> Create(City _objCity)
        {
            try
            {
                int result = 0;
                _objCity.CreatedBy = User.Identity.Name;
                result =await City.Create(_objCity);
                if (result != 0)
                {
                    return Content("0");
                }
                else
                {
                    return PartialView(_objCity);
                }
            }
            catch
            {
                return PartialView(_objCity);
            }
        }

        [AuthorizationFilter(MenuId = 1041, AccessType = "Edit")]
        public async Task<ActionResult> Edit(int CityCode)
        {
            return PartialView(await City.GetExistingAsync(CityCode));
        }

        [HttpPost]
        [AuthorizationFilter(MenuId = 1041, AccessType = "Edit")]
        public async Task<ActionResult> Edit(City _objCity)
        {
            try
            {
                int result = 0;
                _objCity.ChangeBy = User.Identity.Name;
                result =await City.Edit(_objCity);
                if (result != 0)
                {
                    return Content("0");
                }
                else
                {
                    return PartialView(_objCity);
                }
            }
            catch
            {
                return PartialView(_objCity);
            }
        }

        [AuthorizationFilter(MenuId = 990144, AccessType = "Approve")]
        public async Task<ActionResult> Approve(int CityCode)
        {
            return PartialView(await City.GetExistingAsync(CityCode));
        }

        [HttpPost]
        [AuthorizationFilter(MenuId = 990144, AccessType = "Approve")]
        public async Task<ActionResult> Approve(City _objCity)
        {
            try
            {
                int result = 0;
                _objCity.ApprovedBy = User.Identity.Name;
                result = await City.Approve(_objCity);
                if (result != 0)
                {
                    return Content("0");
                }
                else
                {
                    return PartialView(_objCity);
                }
            }
            catch
            {
                return PartialView(_objCity);
            }
        }

        [HttpPost]
        [AuthorizationFilter(MenuId = 990144, AccessType = "Approve")]
        public async Task<ActionResult> ApproveMultiple(List<int> Branches)
        {
            int result = 0;
            result = await City.Approve(Branches, User.Identity.Name);
            if (result != 0)
            {
                return Content("0");
            }
            else
            {
                return Content("1");
            }
        }

        [AuthorizationFilter(MenuId = 1041, AccessType = "Delete")]
        public async Task<ActionResult> Delete(int CityCode)
        {
            return PartialView(await City.GetExistingAsync(CityCode));
        }

        [HttpPost]
        [AuthorizationFilter(MenuId = 1041, AccessType = "Delete")]
        public async Task<ActionResult> Delete(City _objCity)
        {
            try
            {
                int result = 0;
                _objCity.ChangeBy = User.Identity.Name;
                result = await City.Delete(_objCity);
                if (result != 0)
                {
                    return Content("0");
                }
                else
                {
                    return PartialView(_objCity);
                }
            }
            catch
            {
                return PartialView(_objCity);
            }
        }
         
        public async Task<ActionResult> Details(int CityCode)
        {
            return PartialView(await City.GetExistingAsync(CityCode));
        }
    }
}
```  