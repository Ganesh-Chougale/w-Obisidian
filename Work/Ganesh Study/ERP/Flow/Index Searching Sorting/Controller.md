## GET method
```csharp
[HttpGet]
[AuthorizationFilter(MenuId = 80326, AccessType = "Console")]
public async Task<ActionResult> Index(string sortOrder, string sortdir, string searchString, int? page, string FromDate, string ToDate)
{

    string strStartDate = "";
    string strToDate = "";
    string strSortDir = "";

    // 1. Empty Dates handling
    if (FromDate == null)
    {
        MstMenu _objMstMenu = MstMenu.getMenuById(ChildPartConsumption.MenuId);
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

    // 2. Business List generation
    List<ChildPartConsumption> objLst = await ChildPartConsumption.GetDataBetweenDates(strStartDate, strToDate);

    TranGridSettings _objTranGridSettings = new TranGridSettings() { TranFromDate = DateUtility.getFormatedDate(strStartDate, 0), TranToDate = DateUtility.(strToDate, 0) };
    ViewData["trangridsettings"] = _objTranGridSettings;



    // we need these ViewBags for string search Or revisiting index
    ViewBag.FromDate = strStartDate;
    ViewBag.ToDate = strToDate;

    // we need this CurrentSort ViewBag only for pagination 
    ViewBag.CurrentSort = sortOrder;    

    // 3. string search handling
    if (!string.IsNullOrEmpty(searchString))
    {
        string seachQuery = searchString.Trim();
        ViewBag.CurrentFilter = seachQuery;

        objLst = objLst.Where(obj =>
            (obj.TrnNo != null && obj.TrnNo.ToUpper().Contains(seachQuery.ToUpper())) ||
            (obj.ShortTrnNo != null && obj.ShortTrnNo.ToUpper().Contains(seachQuery.ToUpper())) ||
            (obj.FormattedTrnDate != null && obj.FormattedTrnDate.ToUpper().Contains(seachQuery.ToUpper())) ||
            (obj.MaterialName != null && obj.MaterialName.ToUpper().Contains(seachQuery.ToUpper())) ||
            (obj.CoreName != null && obj.CoreName.ToUpper().Contains(seachQuery.ToUpper())) ||
            (obj.CrtBy != null && obj.CrtBy.ToUpper().Contains(seachQuery.ToUpper()))
        ).ToList();
    }

    // 4. sort declaration
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

    // 5. sort implementation
    switch (sortOrder)
    {

        case "TrnNoSort":
            if (strSortDir == "desc")
            {
                objLst = objLst.OrderByDescending(obj => obj.TrnNo).ThenByDescending(p => p.TrnDate).ToList();
            }
            else
            {
                objLst = objLst.OrderBy(obj => obj.TrnNo).ThenBy(p => p.TrnDate).ToList();
            }
            break;
        case "PrdDate":
            if (strSortDir == "desc")
            {
                objLst = objLst.OrderByDescending(obj => obj.TrnDate).ThenByDescending(p => p.TrnNo).ToList();
            }
            else
            {
                objLst = objLst.OrderBy(obj => obj.TrnDate).ThenBy(p => p.MaterialCode).ToList();
            }
            break;
        case "MatName":
            if (strSortDir == "desc")
            {
                objLst = objLst.OrderByDescending(obj => obj.MaterialName).ThenByDescending(p => p.TrnNo).ToList();
            }
            else
            {
                objLst = objLst.OrderBy(obj => obj.MaterialName).ThenBy(p => p.TrnNo).ToList();
            }
            break;
        case "CoreName":
            if (strSortDir == "desc")
            {
                objLst = objLst.OrderByDescending(obj => obj.CoreName).ThenByDescending(p => p.CoreName).ToList();
            }
            else
            {
                objLst = objLst.OrderBy(obj => obj.CoreName).ThenBy(p => p.MaterialCode).ToList();
            }
            break;
        case "CrtBy":
            if (strSortDir == "desc")
            {
                objLst = objLst.OrderByDescending(obj => obj.CrtBy).ThenByDescending(p => p.CoreName).ToList();
            }
            else
            {
                objLst = objLst.OrderBy(obj => obj.CrtBy).ThenBy(p => p.CoreName).ToList();
            }
            break;
        default:
            objLst = objLst.OrderByDescending(obj => obj.TrnDate).ThenByDescending(p => p.TrnDate).ToList();
            ViewBag.SortDir = "asc";
            break;
    }

    int pageSize = 50;
    int pageNumber = 1;
    if (page != null)
    {
        pageNumber = Convert.ToInt16(page);
    }

    return PartialView(objLst.ToPagedList(pageNumber, pageSize));
}
```  

## POST method
```csharp
[HttpPost]
[AuthorizationFilter(MenuId = 80326, AccessType = "Console")]
public async Task<ActionResult> Index(string FromDate, string ToDate)
{
    string strStartDate = DateUtility.getFormatedDate(FromDate.Replace("'", ""), 1), strToDate = DateUtility.getFormatedDate(ToDate.Replace("'", ""), 1);
    List<ChildPartConsumption> objLst = await ChildPartConsumption.GetDataBetweenDates(strStartDate, strToDate);

    TranGridSettings _objTranGridSettings = new TranGridSettings() { TranFromDate = DateUtility.getFormatedDate(strStartDate, 0), TranToDate = DateUtility.getFormatedDate(strToDate, 0) };
    ViewData["trangridsettings"] = _objTranGridSettings;
    ViewBag.FromDate = strStartDate;
    ViewBag.ToDate = strToDate;
    ViewBag.SortDir = "asc";

    int pageSize = 50;
    int pageNumber = 1;

    return PartialView(objLst.OrderByDescending(obj => obj.TrnDate).ThenByDescending(obj => obj.TrnNo).ToPagedList(pageNumber, pageSize));
}
```  