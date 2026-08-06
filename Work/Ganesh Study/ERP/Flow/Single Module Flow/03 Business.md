```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ZanvarGroup.Erp.DALDapper.Implementation.Masters;
using ZanvarGroup.Erp.DTO.Masters.Interfaces;
using ZanvarGroup.Erp.DTO.Masters.Objects;

namespace ZanvarGroup.Erp.Business.Masters
{
    public class Department
    {
        public static IMstDepartment _dalMstDepartment;
        public static int MenuId = 1063;
        public int DepartmentId { get; set; }
        public string DepartmentShortName { get; set; }
        public string DepartmentName { get; set; }
        public int ParentDepartmentId { get; set; }
        public string DeleteReason { get; set; }
        public string CreatedBy { get; set; }
        public string CreatedDateTime { get; set; }
        public string ApprovedBy { get; set; }
        public string ApprovedDateTime { get; set; }
        public int StatusCode { get; set; }
        public string ChangeBy { get; set; }
        public int EmployeeCount { get; set; }

        public static List<Department> GetAll()
        {
            try
            {
                _dalMstDepartment = new DALMstDepartment();
                return fillList(_dalMstDepartment.GetAll());
            }
            catch
            {
                throw new Exception("Request Failed");
            }
        }

        public static async Task<List<Department>> GetAllAsync()
        {
            try
            {
                _dalMstDepartment = new DALMstDepartment();
                return await Task.Run(() => { return fillList(_dalMstDepartment.GetAll()); });
            }
            catch
            {
                throw new Exception("Request Failed");
            }
        }

        public static List<Department> GetDepartmentList()
        {
            try
            {
                _dalMstDepartment = new DALMstDepartment();
                return fillList(_dalMstDepartment.GetDepartmentList());
            }
            catch
            {
                throw new Exception("Request Failed");
            }
        }

        public static async Task<List<Department>> GetDepartmentListAsync()
        {
            try
            {
                _dalMstDepartment = new DALMstDepartment();
                return await Task.Run(() => { return fillList(_dalMstDepartment.GetDepartmentList()); });
            }
            catch
            {
                throw new Exception("Request Failed");
            }
        }

        public static async Task<List<Department>> GetApprovalPendingListAsync()
        {
            try
            {
                _dalMstDepartment = new DALMstDepartment();
                List<Department> lstDepartment = await Task.Run(() => { return fillList(_dalMstDepartment.GetApprovalPendingList()); });
                return lstDepartment;
            }
            catch
            {
                throw new Exception("Request Failed");
            }
        }

        private static List<Department> fillList(List<DTOMstDepartment> lstdtoMstDepartment)
        {
            List<Department> _departmentlist = new List<Department>();
            foreach (DTOMstDepartment dtoMstDept in lstdtoMstDepartment)
            {
                Department _objdept = new Department() { DepartmentId = dtoMstDept.DEPARTMENT_ID, DepartmentShortName = dtoMstDept.DEPARTMENT_SHORT_NAME, DepartmentName = dtoMstDept.DEPARTMENT_NAME, ParentDepartmentId = dtoMstDept.PARENT_DEPARTMENT_ID, StatusCode = dtoMstDept.STATUS_CODE, CreatedBy = dtoMstDept.CRT_BY, ChangeBy = dtoMstDept.CHG_BY };
                _departmentlist.Add(_objdept);
            }
            return _departmentlist;
        }

        public static Department New()
        {
            try
            {
                return new Department();
            }
            catch (Exception ex)
            {
                throw new Exception("Request Failed. " + ex.Message);
            }
        }

        public static async Task<int> Create(Department _objDepartment)
        {
            try
            {
                int result = 0;
                _dalMstDepartment = new DALMstDepartment();
                MstMenu _objMstMenu = MstMenu.getMenuById(MenuId);
                int intStatusCode = 0;
                if (Convert.ToBoolean(_objMstMenu.ApprovalReq) == true)
                {
                    intStatusCode = 101;
                }
                _objDepartment.StatusCode = intStatusCode;
                _objDepartment.DepartmentId = _dalMstDepartment.NextMastCode();
                DTOMstDepartment _objDtoMstDepartment = new DTOMstDepartment() { DEPARTMENT_ID = _objDepartment.DepartmentId, DEPARTMENT_SHORT_NAME = _objDepartment.DepartmentShortName, DEPARTMENT_NAME = _objDepartment.DepartmentName, PARENT_DEPARTMENT_ID = _objDepartment.ParentDepartmentId, CRT_BY = _objDepartment.CreatedBy, STATUS_CODE = _objDepartment.StatusCode };
                result = await Task.Run(() => { return _dalMstDepartment.Create(_objDtoMstDepartment); });
                return result;
            }
            catch
            {
                throw new Exception("Failed To Insert");
            }
        }

        public static async Task<int> Edit(Department _objDepartment)
        {
            try
            {
                int result = 0;
                DTOMstDepartment _objDtoMstDepartment = new DTOMstDepartment() { DEPARTMENT_ID = _objDepartment.DepartmentId, DEPARTMENT_SHORT_NAME = _objDepartment.DepartmentShortName, DEPARTMENT_NAME = _objDepartment.DepartmentName, PARENT_DEPARTMENT_ID = _objDepartment.ParentDepartmentId, CHG_BY = _objDepartment.ChangeBy, STATUS_CODE = _objDepartment.StatusCode };
                result = await Task.Run(() => { return _dalMstDepartment.Edit(_objDtoMstDepartment); });
                return result;
            }
            catch
            {
                throw new Exception("Failed To Update");
            }
        }

        public static async Task<int> Approve(Department _objDepartment)
        {
            try
            {
                int result = 0;
                DTOMstDepartment _objDtoMstDepartment = new DTOMstDepartment() { DEPARTMENT_ID = _objDepartment.DepartmentId, DEPARTMENT_SHORT_NAME = _objDepartment.DepartmentShortName, DEPARTMENT_NAME = _objDepartment.DepartmentName, PARENT_DEPARTMENT_ID = _objDepartment.ParentDepartmentId, APPROVED_BY = _objDepartment.ApprovedBy, STATUS_CODE = _objDepartment.StatusCode };
                result = await Task.Run(() => { return _dalMstDepartment.Approve(_objDtoMstDepartment); });
                return result;
            }
            catch
            {
                throw new Exception("Failed To Update");
            }
        }

        public static async Task<int> Approve(List<int> Departments, string ApprovedBy)
        {
            try
            {
                int result = 0;
                string strDepartmentList = string.Join(",", Departments.Select(n => n.ToString()).ToArray());

                result = await Task.Run(() => { return _dalMstDepartment.Approve(strDepartmentList, ApprovedBy); });
                return result;
            }
            catch
            {
                throw new Exception("Failed To Approve");
            }
        }

        public static async Task<int> Delete(Department _objDepartment)
        {
            try
            {
                int result = 0;
                DTOMstDepartment _objDtoMstDepartment = new DTOMstDepartment() { DEPARTMENT_ID = _objDepartment.DepartmentId, DELETE_REASON = _objDepartment.DeleteReason, CHG_BY = _objDepartment.ChangeBy };
                result = await Task.Run(() => { return _dalMstDepartment.Delete(_objDtoMstDepartment); });
                return result;
            }
            catch
            {
                throw new Exception("Failed To Delete");
            }
        }

        public static async Task<Department> GetExisting(int code)
        {
            try
            {
                _dalMstDepartment = new DALMstDepartment();
                DTOMstDepartment dtoMstDepartment = await Task.Run(() => { return _dalMstDepartment.GetExisting(code); });
                if(dtoMstDepartment != null)
                {
                    return new Department() { DepartmentId = dtoMstDepartment.DEPARTMENT_ID, DepartmentShortName = dtoMstDepartment.DEPARTMENT_SHORT_NAME, DepartmentName = dtoMstDepartment.DEPARTMENT_NAME, ParentDepartmentId = dtoMstDepartment.PARENT_DEPARTMENT_ID, DeleteReason = dtoMstDepartment.DELETE_REASON, StatusCode = dtoMstDepartment.STATUS_CODE, CreatedBy = dtoMstDepartment.CRT_BY };
                }
                else
                {
                    return new Department();
                }                
            }
            catch
            {
                throw new Exception("Request Failed");
            }
        }

        public static async Task<List<Department>> GetPayRollCompanyWiseDepartmentList(int CompanyId)
        {
            try
            {
                _dalMstDepartment = new DALMstDepartment();
                List<Department> _objDepartmentList = new List<Department>();
                List<Employee> _objLstEmployee = Employee.GetPayCompanyWsEmployeeList(CompanyId);
                List<Department> _objLstDepartment = await GetAllAsync();
                if (_objLstDepartment != null)
                {

                    _objDepartmentList = (from objEmp in _objLstEmployee join objDept in _objLstDepartment on objEmp.PayrollDept equals objDept.DepartmentId select objDept).ToList();
                }
                return _objDepartmentList.GroupBy(p=>p.DepartmentId).Select(p=>p.First()).OrderBy(p => p.DepartmentName).ToList();
            }
            catch
            {
                throw new Exception("Request Failed");
            }
        }

        public static async Task<List<Department>> GetLocationWiseDeptWiseEmpCount(int PayrollCompany, int Location)
        {
            try
            {
                _dalMstDepartment = new DALMstDepartment();
                List<Department> _objDepartmentList = new List<Department>();
                List<DTOMstDepartment> lstdtoDept = await Task.Run(() => { return _dalMstDepartment.GetLocationWiseDeptWiseEmpCount(PayrollCompany, Location); });

                if (lstdtoDept != null)
                {
                    _objDepartmentList = lstdtoDept.Select(p => new Department {DepartmentId = p.DEPARTMENT_ID,DepartmentName=p.DEPARTMENT_NAME,EmployeeCount=p.EMPLOYEE_COUNT }).ToList();
                }

                return _objDepartmentList;
            }
            catch
            {
                throw new Exception("Request Failed");
            }
        }
    }
}
```  