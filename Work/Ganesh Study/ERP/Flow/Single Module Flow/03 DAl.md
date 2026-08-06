```csharp
using Dapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ZanvarGroup.Erp.DTO.Masters.Interfaces;
using ZanvarGroup.Erp.DTO.Masters.Objects;

namespace ZanvarGroup.Erp.DALDapper.Implementation.Masters
{
    public class DALMstDepartment : IMstDepartment
    {
        public List<DTOMstDepartment> GetAll()
        {
            try
            {
                string query = "SELECT * FROM MST_DEPARTMENT";
                List<DTOMstDepartment> lst = new List<DTOMstDepartment>();
                using (ConManager con = new ConManager())
                {
                    lst = (List<DTOMstDepartment>)con.masterDb.Query<DTOMstDepartment>(query);
                }
                return lst;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<DTOMstDepartment> GetDepartmentList()
        {
            try
            {
                string query = "SELECT DEPARTMENT_ID,DEPARTMENT_SHORT_NAME,DEPARTMENT_NAME,PARENT_DEPARTMENT_ID,STATUS_CODE FROM MST_DEPARTMENT WHERE STATUS_CODE=0 ORDER BY DEPARTMENT_NAME";
                List<DTOMstDepartment> lst = new List<DTOMstDepartment>();
                using (ConManager con = new ConManager())
                {
                    lst = (List<DTOMstDepartment>)con.masterDb.Query<DTOMstDepartment>(query);
                }
                return lst; 
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<DTOMstDepartment> GetApprovalPendingList()
        {
            try
            {
                string query = "SELECT * FROM MST_DEPARTMENT WHERE STATUS_CODE = 101 ORDER BY DEPARTMENT_NAME";
                List<DTOMstDepartment> lst = new List<DTOMstDepartment>();
                using (ConManager con = new ConManager())
                {
                    lst = (List<DTOMstDepartment>)con.masterDb.Query<DTOMstDepartment>(query);
                }
                return lst;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int Create(DTOMstDepartment _objMstDepartment)
        {
            try
            {
                string query = @"INSERT INTO MST_DEPARTMENT(DEPARTMENT_ID,DEPARTMENT_SHORT_NAME,DEPARTMENT_NAME,PARENT_DEPARTMENT_ID,STATUS_CODE,CRT_BY,CRT_DATE_TIME)";
                query = query + " VALUES(@DEPARTMENT_ID,@DEPARTMENT_SHORT_NAME,@DEPARTMENT_NAME,@PARENT_DEPARTMENT_ID,@STATUS_CODE,@CRT_BY,GETDATE());SELECT @DEPARTMENT_ID";
                int i;
                using (ConManager con = new ConManager())
                {
                    i = con.masterDb.Query<int>(query, _objMstDepartment).SingleOrDefault();
                }
                return i;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int Edit(DTOMstDepartment _objMstDepartment)
        {
            try
            {
                string query = @"UPDATE MST_DEPARTMENT SET ";
                query = query + " DEPARTMENT_SHORT_NAME = '" + _objMstDepartment.DEPARTMENT_SHORT_NAME + "'";
                query = query + " ,DEPARTMENT_NAME = '" + _objMstDepartment.DEPARTMENT_NAME + "'";
                query = query + " ,PARENT_DEPARTMENT_ID = " + _objMstDepartment.PARENT_DEPARTMENT_ID ;
                if (_objMstDepartment.CHG_BY != null)
                    query = query + " ,CHG_BY = '" + _objMstDepartment.CHG_BY + "'";
                query = query + " ,CHG_DATE_TIME = GETDATE()";
                query = query + " ,STATUS_CODE = " + _objMstDepartment.STATUS_CODE;
                query = query + " WHERE DEPARTMENT_ID = @DEPARTMENT_ID";
                int i;
                using (ConManager con = new ConManager())
                {
                    i = con.masterDb.Execute(query, new { @DEPARTMENT_ID = _objMstDepartment.DEPARTMENT_ID });
                }
                return i;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int Approve(DTOMstDepartment _objMstDepartment)
        {
            try
            {
                string query = @"UPDATE MST_DEPARTMENT SET ";
                query = query + " DEPARTMENT_SHORT_NAME = '" + _objMstDepartment.DEPARTMENT_SHORT_NAME + "'";
                query = query + " ,DEPARTMENT_NAME = '" + _objMstDepartment.DEPARTMENT_NAME + "'";
                query = query + " ,PARENT_DEPARTMENT_ID = " + _objMstDepartment.PARENT_DEPARTMENT_ID;
                if (_objMstDepartment.APPROVED_BY != null)
                    query = query + " ,APPROVED_BY = '" + _objMstDepartment.APPROVED_BY + "'";
                query = query + " ,APPROVED_DATE_TIME = GETDATE()";
                query = query + " ,STATUS_CODE = " + _objMstDepartment.STATUS_CODE;
                query = query + " WHERE DEPARTMENT_ID = @DEPARTMENT_ID";
                int i;
                using (ConManager con = new ConManager())
                {
                    i = con.masterDb.Execute(query, new { @DEPARTMENT_ID = _objMstDepartment.DEPARTMENT_ID });
                }
                return i;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int Approve(string strCodeList, string ApprovedBy)
        {
            try
            {
                string query = @"UPDATE MST_DEPARTMENT SET ";
                query = query + " STATUS_CODE = 0";
                query = query + " ,APPROVED_BY = '" + ApprovedBy + "'";
                query = query + " ,APPROVED_DATE_TIME = GETDATE()";
                query = query + " WHERE DEPARTMENT_ID IN(" + strCodeList + ")";
                int i;
                using (ConManager con = new ConManager())
                {
                    i = con.masterDb.Execute(query);
                }
                return i;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int Delete(DTOMstDepartment _objMstDepartment)
        {
            try
            {
                string query = @"UPDATE MST_DEPARTMENT SET ";
                query = query + " DELETE_REASON = '" + _objMstDepartment.DELETE_REASON + "'";
                if (_objMstDepartment.CHG_BY != null)
                    query = query + " ,CHG_BY = '" + _objMstDepartment.CHG_BY + "'";
                query = query + " ,CHG_DATE_TIME = GETDATE()";
                query = query + ", STATUS_CODE = 1";
                query = query + " WHERE DEPARTMENT_ID = @DEPARTMENT_ID";
                int i;
                using (ConManager con = new ConManager())
                {
                    i = con.masterDb.Execute(query, new { @DEPARTMENT_ID = _objMstDepartment.DEPARTMENT_ID });
                }
                return i;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int NextMastCode()
        {
            try
            {
                string query = "SELECT CASE ISNULL(MAX(DEPARTMENT_ID)+1,0) WHEN 0 THEN '1010000001'  ELSE MAX(DEPARTMENT_ID) + 1 END FROM MST_DEPARTMENT";
                int i;
                using (ConManager con = new ConManager())
                {
                    i = con.masterDb.Query<int>(query).Single();
                }
                return i;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DTOMstDepartment GetExisting(int code)
        {
            try
            {
                string query = "SELECT * FROM MST_DEPARTMENT WHERE DEPARTMENT_ID = @code";
                DTOMstDepartment lst = new DTOMstDepartment();
                using (ConManager con = new ConManager())
                {
                    lst = (DTOMstDepartment)con.masterDb.Query<DTOMstDepartment>(query, new { code = code }).SingleOrDefault();
                }
                return lst;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<DTOMstDepartment> GetLocationWiseDeptWiseEmpCount(int PayrollCompany, int Location)
        {
            try
            {
                string query = "";
                List<DTOMstDepartment> lst = new List<DTOMstDepartment>();
                using (ConManager con = new ConManager())
                {
                    query = query + " SELECT";
                    query = query + " 	PAYROLL_DEPT DEPARTMENT_ID, ";
                    query = query + " 	DEPARTMENT_NAME,";
                    query = query + " 	COUNT(*) EMPLOYEE_COUNT";
                    query = query + " FROM ";
                    query = query + " 	MST_EMPLOYEE ";
                    query = query + " 	INNER JOIN MST_DEPARTMENT ON MST_EMPLOYEE.PAYROLL_DEPT = MST_DEPARTMENT.DEPARTMENT_ID";
                    query = query + " WHERE ";
                    query = query + " 	MST_EMPLOYEE.PAYROLL_COMPANY = "+ PayrollCompany;
                    query = query + " 	AND MST_EMPLOYEE.LOCATION= "+ Location;
                    query = query + " 	AND MST_EMPLOYEE.IS_LEFT=0 ";
                    query = query + " 	AND MST_EMPLOYEE.STATUS_CODE =0";
                    query = query + " 	AND ISNULL(PAYROLL_BATCH_ID,0) <> 0";
                    query = query + " GROUP BY PAYROLL_DEPT,DEPARTMENT_NAME";
                    query = query + " ORDER BY EMPLOYEE_COUNT DESC,DEPARTMENT_NAME";

                    lst = (List<DTOMstDepartment>)con.masterDb.Query<DTOMstDepartment>(query);
                }
                return lst;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}

```  