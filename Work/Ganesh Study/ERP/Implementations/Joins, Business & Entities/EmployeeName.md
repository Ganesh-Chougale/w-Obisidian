```csharp
public static async Task<List<GetApprovalPendingOTforSalaryLock>> GetPendingProcessList(long SalaryPeriod, int LocationCode)
{
    interfaceObj = new DALGetApprovalPendingOTforSalaryLock();

    List<DTOGetApprovalPendingOTforSalaryLock> dtoList = interfaceObj.GetPendingProcessList(SalaryPeriod, LocationCode);

    List<EmployeeEntity> empList = await EmployeeService.GetEmployeeFillList(dtoList.Select(p => p.EMPLOYEE_ID).Distinct().ToList());

    List<GetApprovalPendingOTforSalaryLock> result = (from obj in dtoList
                                                        join empObj in empList on obj.EMPLOYEE_ID equals empObj.EmployeeId
                                                        into mstemp
                                                        from empObj in mstemp.DefaultIfEmpty()

                                                        select new GetApprovalPendingOTforSalaryLock
                                                        {
                                                            TrnNo = obj.TRN_NO,
                                                            TrnDate = obj.TRN_DATE,
                                                            EmployeeId = obj.EMPLOYEE_ID,
                                                            EmployeeName = empObj.EmployeeName
                                                        }).ToList();

    return result;
}
```  