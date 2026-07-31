### D:\ZanvarGroup\Source\ERP\ZanvarGroup.Erp.DALDapper\Implementation\Masters\ `DALMstCity.cs`  
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
    public class DALMstCity: IMstCity
    {
        public List<DTOMstCity> GetAll()
        {
            try
            {
                string query = "SELECT * FROM MST_CITY";
                List<DTOMstCity> lst = new List<DTOMstCity>();
                using (ConManager con = new ConManager())
                {
                    lst = (List<DTOMstCity>)con.masterDb.Query<DTOMstCity>(query);
                }
                return lst;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<DTOMstCity> GetCityList()
        {
            try
            {
                string query = "SELECT CITY_CODE,CITY_NAME,ISNULL(DISTANCE,0) DISTANCE FROM MST_CITY WHERE STATUS_CODE=0 ORDER BY CITY_NAME";
                List<DTOMstCity> lst = new List<DTOMstCity>();
                using (ConManager con = new ConManager())
                {
                    lst = (List<DTOMstCity>)con.masterDb.Query<DTOMstCity>(query);
                }
                return lst; 
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<DTOMstCity> GetApprovalPendingList()
        {
            try
            {
                string query = "SELECT * FROM MST_CITY WHERE STATUS_CODE = 101 ORDER BY CITY_NAME";
                List<DTOMstCity> lst = new List<DTOMstCity>();
                using (ConManager con = new ConManager())
                {
                    lst = (List<DTOMstCity>)con.masterDb.Query<DTOMstCity>(query);
                }
                return lst; 
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int Create(DTOMstCity _objMstCity)
        {
            try
            {
                string query = @"INSERT INTO MST_CITY(CITY_CODE,CITY_NAME,DISTRICT_NAME,STATE_NAME,NATION,CRT_BY,CRT_DATE_TIME,STATUS_CODE,DISTANCE)";
                query = query + " VALUES(@CITY_CODE,@CITY_NAME,@DISTRICT_NAME,@STATE_NAME,@NATION,@CRT_BY,GETDATE(),@STATUS_CODE,@DISTANCE);SELECT @CITY_CODE";
                int i;
                using (ConManager con = new ConManager())
                {
                    i = con.masterDb.Query<int>(query, _objMstCity).Single();
                }
                return i;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public int Edit(DTOMstCity _objMstCity)
        {
            try
            {
                string query = @"UPDATE MST_CITY SET ";
                query = query + " CITY_NAME = '" + _objMstCity.CITY_NAME + "', ";
                query = query + " DISTRICT_NAME = '" + _objMstCity.DISTRICT_NAME + "', ";
                query = query + " STATE_NAME = '" + _objMstCity.STATE_NAME + "', ";
                query = query + " NATION = '" + _objMstCity.NATION + "', ";
                if (_objMstCity.CHG_BY != null)
                    query = query + " CHG_BY = '" + _objMstCity.CHG_BY + "', ";
                query = query + " CHG_DATE_TIME = GETDATE(), ";
                query = query + " STATUS_CODE = " + _objMstCity.STATUS_CODE + "', ";
                query = query + " DISTANCE = "+ _objMstCity.DISTANCE + "', ";                
                query = query + " WHERE CITY_CODE = @CITY_CODE";
                int i;
                using (ConManager con = new ConManager())
                {
                    i = con.masterDb.Execute(query, new { @CITY_CODE = _objMstCity.CITY_CODE });
                }
                return i;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int Approve(DTOMstCity _objMstCity)
        {
            try
            {
                string query = @"UPDATE MST_CITY SET ";
                query = query + " CITY_NAME = '" + _objMstCity.CITY_NAME + "'";
                query = query + " ,DISTRICT_NAME = '" + _objMstCity.DISTRICT_NAME + "'";
                query = query + " ,STATE_NAME = '" + _objMstCity.STATE_NAME + "'";
                query = query + " ,NATION = '" + _objMstCity.NATION + "'";
                if (_objMstCity.APPROVED_BY != null)
                    query = query + " ,APPROVED_BY = '" + _objMstCity.APPROVED_BY + "'";
                query = query + " ,APPROVED_DATE_TIME = GETDATE()";
                query = query + " ,STATUS_CODE = " + _objMstCity.STATUS_CODE;
                query = query + " WHERE CITY_CODE = @CITY_CODE";
                int i;
                using (ConManager con = new ConManager())
                {
                    i = con.masterDb.Execute(query, new { @CITY_CODE = _objMstCity.CITY_CODE });
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
                string query = @"UPDATE MST_CITY SET ";
                query = query + " STATUS_CODE = 0";
                query = query + " ,APPROVED_BY = '" + ApprovedBy + "'";
                query = query + " ,APPROVED_DATE_TIME = GETDATE()";
                query = query + " WHERE CITY_CODE IN(" + strCodeList + ")";
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

        public int Delete(DTOMstCity _objMstCity)
        {
            try
            {
                string query = @"UPDATE MST_CITY SET ";
                query = query + " DELETE_REASON = '" + _objMstCity.DELETE_REASON + "'";
                if (_objMstCity.CHG_BY != null)
                    query = query + " ,CHG_BY = '" + _objMstCity.CHG_BY + "'";
                query = query + " ,CHG_DATE_TIME = GETDATE()";
                query = query + ", STATUS_CODE = 1";
                query = query + " WHERE CITY_CODE = @CITY_CODE";
                int i;
                using (ConManager con = new ConManager())
                {
                    i = con.masterDb.Execute(query, new { @CITY_CODE = _objMstCity.CITY_CODE });
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
                string query = "SELECT CASE ISNULL(MAX(CITY_CODE)+1,0) WHEN 0 THEN 10100001 ELSE MAX(CITY_CODE) + 1 END FROM MST_CITY";
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

        public DTOMstCity GetExisting(int code)
        {
            try
            {
                string query = "SELECT * FROM MST_CITY WHERE CITY_CODE = @code";
                DTOMstCity obj = new DTOMstCity();
                using (ConManager con = new ConManager())
                {
                    obj = (DTOMstCity)con.masterDb.Query<DTOMstCity>(query, new { code = code }).Single();
                }
                return obj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
```  