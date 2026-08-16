# 2. List
```csharp
        public static async Task<List<BranchDeptMinMax>> StockListGroupWisePopUpData(int intBranchCode, int intMaterialCode)
        {
            try
            {
                interfaceObj = new DalMstBranchDeptMinMax();

                List<DtoMstBranchDeptMinMax> dtoList = interfaceObj.StockListGroupWisePopUpData(intBranchCode, intMaterialCode);

                List<Department> deptList = Department.GetDepartmentList();

                List<BranchDeptMinMax> lst =
                    (
                        from obj in dtoList

                        join depObj in deptList
                        on obj.DEPT_CODE equals depObj.DepartmentId

                        select new BranchDeptMinMax
                        {
                            DeptCode = obj.DEPT_CODE,
                            DeptName = depObj.DepartmentName
                        }
                    ).ToList();

                return lst;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
```  