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
    public class DepartmentController : Controller
    {
        // Index
        [AuthorizationFilter(MenuId = 1063, AccessType = "Console")]
        public async Task<ActionResult> Index(string sortOrder, string searchString, int? page) // Index GET
        {
            List<Department> _lstDepartment = await Department.GetAllAsync();
            ViewBag.CurrentSort = sortOrder;
            ViewBag.NameSortParam = String.IsNullOrEmpty(sortOrder) ? "name_desc" : "";
            if (!string.IsNullOrEmpty(searchString))
            {
                ViewBag.CurrentFilter = searchString;
                _lstDepartment = _lstDepartment.Where(obj => (obj.DepartmentName != null && obj.DepartmentName.ToUpper().Contains(searchString.ToUpper()))).ToList();
            }
            switch (sortOrder)
            {
                case "name_desc":
                    _lstDepartment = _lstDepartment.OrderByDescending(obj => obj.DepartmentName).ToList();
                    break;
                default:
                    _lstDepartment = _lstDepartment.OrderBy(obj => obj.DepartmentName).ToList();
                    break;
            }
            int pageSize = 50;
            int pageNumber = 1;
            if (page != null)
            {
                pageNumber = Convert.ToInt16(page);
            }

            return PartialView(_lstDepartment.ToPagedList(pageNumber, pageSize));
        }


        // Create
        [AuthorizationFilter(MenuId = 1063, AccessType = "Create")]
        public async Task<ActionResult> Create() // create GET
        {
            List<Department> _objparentdept =await Department.GetDepartmentListAsync();
            ViewData["parentdept"] = _objparentdept;

            return PartialView(Department.New());
        }

        [HttpPost]
        [AuthorizationFilter(MenuId = 1063, AccessType = "Create")]
        public async Task<ActionResult> Create(Department _objDepartment) // create POST
        {
            try
            {
                int result = 0;
                _objDepartment.CreatedBy = User.Identity.Name;
                result =await Department.Create(_objDepartment);
                if (result != 0)
                {
                    return Content("0");
                }
                else
                {
                    return View(_objDepartment);
                }
            }
            catch
            {
                return View(_objDepartment);
            }
        }


        // Approval
        [AuthorizationFilter(MenuId = 990149, AccessType = "Console")]
        public async Task<ActionResult> ApprovalPending() // Approve Middle page
        {
            List<Department> _lstDepartments = await Department.GetApprovalPendingListAsync();

            return PartialView(_lstDepartments);
        }


        [AuthorizationFilter(MenuId = 990149, AccessType = "Console")]
        public async Task<ActionResult> Approve(int Code) // Approve GET
        {
            List<Department> _objparentdept = await Department.GetDepartmentListAsync();
            ViewData["parentdept"] = _objparentdept;

            return PartialView(await Department.GetExisting(Code));
        }

        [HttpPost]
        [AuthorizationFilter(MenuId = 990149, AccessType = "Console")]
        public async Task<ActionResult> Approve(Department _objDepartment) // Approve POST
        {
            try
            {
                int result = 0;
                _objDepartment.ApprovedBy = User.Identity.Name;
                _objDepartment.StatusCode = 0;
                result = await Department.Approve(_objDepartment);
                if (result != 0)
                {
                    return Content("0");
                }
                else
                {
                    return PartialView(_objDepartment);
                }
            }
            catch
            {
                return PartialView(_objDepartment);
            }
        }       

        [HttpPost]
        [AuthorizationFilter(MenuId = 990149, AccessType = "Console")]
        public async Task<ActionResult> ApproveMultiple(List<int> Departmentes) // Approve POST multiple 
        {
            int result = 0;
            result = await Department.Approve(Departmentes, User.Identity.Name);
            if (result != 0)
            {
                return Content("0");
            }
            else
            {
                return Content("1");
            }
        } 


        // Edit
        [AuthorizationFilter(MenuId = 1063, AccessType = "Edit")]
        public async Task<ActionResult> Edit(int Code)  // Edit GET
        {
            List<Department> _objparentdept = await Department.GetDepartmentListAsync();
            ViewData["parentdept"] = _objparentdept;

            return PartialView(await Department.GetExisting(Code));
        }

        [HttpPost]
        [AuthorizationFilter(MenuId = 1063, AccessType = "Edit")]
        public async Task<ActionResult> Edit(Department _objDepartment) // Edit POST
        {
            try
            {
                int result = 0;
                _objDepartment.ChangeBy = User.Identity.Name;
                result =await Department.Edit(_objDepartment);
                if (result != 0)
                {
                    return Content("0");
                }
                else
                {
                    return PartialView(_objDepartment);
                }
            }
            catch
            {
                return PartialView(_objDepartment);
            }
        }


        // Delete
        [AuthorizationFilter(MenuId = 1063, AccessType = "Delete")]
        public async Task<ActionResult> Delete(int Code) // Delete GET
        {
            List<Department> _objparentdept = await Department.GetDepartmentListAsync();
            ViewData["parentdept"] = _objparentdept;

            return PartialView(await Department.GetExisting(Code));
        }

        [HttpPost]
        [AuthorizationFilter(MenuId = 1063, AccessType = "Delete")]
        public async Task<ActionResult> Delete(Department _objDepartment) // Delete POST
        {
            try
            {
                int result = 0;
                _objDepartment.ChangeBy = User.Identity.Name;
                result =await Department.Delete(_objDepartment);
                if (result != 0)
                {
                    return Content("0");
                }
                else
                {
                    return PartialView(_objDepartment);
                }
            }
            catch
            {
                return PartialView(_objDepartment);
            }
        }


        // Details
        [AuthorizationFilter(MenuId = 1063, AccessType = "Details")]
        public async Task<ActionResult> Details(int Code)  // Details GET
        {
            List<Department> _objparentdept = await Department.GetDepartmentListAsync();
            ViewData["parentdept"] = _objparentdept;

            return PartialView(await Department.GetExisting(Code));
        }
    }
}
```  