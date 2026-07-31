```csharp
public static async Task<List<GetApprovalPendingOTforSalaryLock>> GetPendingProcessList(long SalaryPeriod, int LocationCode)
{

    try
    {
        interfaceObj = new DALGetApprovalPendingOTforSalaryLock();

        List<DTOGetApprovalPendingOTforSalaryLock> dtoList = interfaceObj.GetPendingProcessList(SalaryPeriod, LocationCode);

        List<EmployeeEntity> empNameList = await EmployeeService.GetEmployeeFillList(dtoList.Select(p => p.EMPLOYEE_ID).Distinct().ToList());

        List<EmployeeEntity> reportPersonList = await EmployeeService.GetEmployeeFillList(dtoList.Select(p => p.PARENT_CODE).Distinct().ToList()); // 1. report person fetch

        List<Department> deptList = await Department.GetDepartmentListAsync();

        List<GetApprovalPendingOTforSalaryLock> result = 
            (from obj in dtoList

                join empObj in empNameList on obj.EMPLOYEE_ID equals empObj.EmployeeId

                join rpObj in reportPersonList on obj.PARENT_CODE equals rpObj.EmployeeId       // 2. Report person join with out list (PARENT_CODE == EmployeeId)
                into rpItem from rpObj in rpItem.DefaultIfEmpty()                               // 3. making it left join (remove this line if want normal inner join)

                join depObj in deptList on obj.PAYROLL_DEPT equals depObj.DepartmentId
                into deptItem from depObj in deptItem.DefaultIfEmpty()

                select new GetApprovalPendingOTforSalaryLock
                {
                    TrnNo = obj.TRN_NO,
                    ShortTrnNo = obj.TRN_NO.ToString().Substring(3, 4) + "-" + obj.TRN_NO.ToString().Substring(obj.TRN_NO.ToString().Length - 6),
                    TrnDate = obj.TRN_DATE,
                    ShortTrnDate = DateUtility.getFormatedDate(obj.TRN_DATE, 0),
                    EmployeeId = obj.EMPLOYEE_ID,
                    EmployeeName = empObj.EmployeeName,
                    PayRollDepartmentNo = obj.PAYROLL_DEPT,
                    PayRollDepartmentName = depObj.DepartmentName,
                    ParentCode = obj.PARENT_CODE,
                    ReportingPerson = rpObj.EmployeeName // 4. Reporting Person is also a Employee after all
                }).ToList();

        return result;
    }
    catch (Exception ex)
    {
        throw ex;
    }
}
```  