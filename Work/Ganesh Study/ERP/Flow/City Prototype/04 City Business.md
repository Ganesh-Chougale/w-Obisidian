## D:\ZanvarGroup\Source\ERP\ZanvarGroup.Erp.Business\Masters\ `City.cs`  
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
    public class City
    {
        public static IMstCity interfaceObj;
        public static int MenuId = 1041;
        public int CityCode { get; set; }
        public string CityName { get; set; }
        public string DistrictName { get; set; }
        public string StateName { get; set; }
        public string Nation { get; set; }
        public string DeleteReason { get; set; }
        public string CreatedBy { get; set; }
        public DateTime CreatedDateTime { get; set; }
        public string ApprovedBy { get; set; }
        public DateTime ApprovedDateTime { get; set; }
        public int StatusCode { get; set; }
        public string ChangeBy { get; set; }
        public decimal Distance { get; set; }

        // mandatory filler method
        private static List<City> fillCityList(List<DTOMstCity> dtoList)
        {

            var _citylist = from dtoMstcity in dtoList
                            select new City()
                            {
                                CityCode = dtoMstcity.CITY_CODE,
                                CityName = dtoMstcity.CITY_NAME,
                                DistrictName = dtoMstcity.DISTRICT_NAME,
                                StateName = dtoMstcity.STATE_NAME,
                                Distance = dtoMstcity.DISTANCE,
                                CreatedBy = dtoMstcity.CRT_BY,
                                ChangeBy = dtoMstcity.CHG_BY,
                                StatusCode = dtoMstcity.STATUS_CODE
                            };

            return _citylist.AsEnumerable<City>().ToList();
        }

        public static List<City> GetAll()
        {
            try
            {
                interfaceObj = new DALMstCity();
                return fillCityList(interfaceObj.GetAll());
            }
            catch
            {
                throw new Exception("Request Failed");
            }
        }


        public static async Task<List<City>> GetAllAsync()
        {
            try
            {
                interfaceObj = new DALMstCity();
                List<City> lstCity = await Task.Run(() => { return fillCityList(interfaceObj.GetAll()); });
                return lstCity;
            }
            catch
            {
                throw new Exception("Request Failed");
            }
        }

        public static List<City> GetCityList()
        {
            try
            {
                interfaceObj = new DALMstCity();
                return fillCityList(interfaceObj.GetCityList());
            }
            catch
            {
                throw new Exception("Request Failed");
            }
        }

        public static async Task<List<City>> GetCityListAsync()
        {
            try
            {
                interfaceObj = new DALMstCity();
                return await Task.Run(() => { return fillCityList(interfaceObj.GetCityList()); });
            }
            catch
            {
                throw new Exception("Request Failed");
            }
        }

        public static async Task<List<City>> GetApprovalPendingListAsync()
        {
            try
            {
                interfaceObj = new DALMstCity();
                List<City> lstCity = await Task.Run(() => { return fillCityList(interfaceObj.GetApprovalPendingList()); });
                return lstCity;
            }
            catch
            {
                throw new Exception("Request Failed");
            }
        }
        public static int create(City bObj)
        {
            interfaceObj = new DALMstCity();
            int i = 0;
            DTOMstCity objDtomstcity = new DTOMstCity() 
            { 
                CITY_CODE = bObj.CityCode,
                CITY_NAME = bObj.CityName,
                DISTRICT_NAME = bObj.DistrictName 
            };

            i = interfaceObj.Create(objDtomstcity)
            return i; 

            // or return directly without i
            // return interfaceObj.Create(objDtomstcity);
        }

        public static City New()
        {
            try
            {
                return new City();
            }
            catch (Exception ex)
            {
                throw new Exception("Request Failed. " + ex.Message);
            }
        }

        public static async Task<int> Create(City bObj)
        {
            try
            {
                int result = 0;
                interfaceObj = new DALMstCity();
                MstMenu _objMstMenu = MstMenu.getMenuById(MenuId);
                int intStatusCode = 0;
                if (Convert.ToBoolean(_objMstMenu.ApprovalReq) == true)
                {
                    intStatusCode = 101;
                }
                bObj.StatusCode = intStatusCode;
                bObj.CityCode = interfaceObj.NextMastCode();
                DTOMstCity _objDtoMstCity = new DTOMstCity()
                    {
                        CITY_CODE = bObj.CityCode,
                        CITY_NAME = bObj.CityName,
                        DISTRICT_NAME = bObj.DistrictName,
                        STATE_NAME = bObj.StateName,
                        NATION = bObj.Nation,
                        CRT_BY = bObj.CreatedBy,
                        STATUS_CODE = bObj.StatusCode,
                        DISTANCE = bObj.Distance
                   };
                result = await Task.Run(() => { return interfaceObj.Create(_objDtoMstCity); });
                return result;
            }
            catch
            {
                throw new Exception("Failed To Insert");
            }
        }

        public static async Task<City> GetExistingAsync(int code)
        {
            try
            {
                interfaceObj = new DALMstCity();
                DTOMstCity dtoMstCity = await Task.Run(() => { return interfaceObj.GetExisting(code); });
                return new City()
                {
                    CityCode = dtoMstCity.CITY_CODE,
                    CityName = dtoMstCity.CITY_NAME,
                    DistrictName = dtoMstCity.DISTRICT_NAME,
                    StateName = dtoMstCity.STATE_NAME,
                    Nation = dtoMstCity.NATION,
                    DeleteReason = dtoMstCity.DELETE_REASON,
                    Distance = dtoMstCity.DISTANCE
                };
            }
            catch
            {
                throw new Exception("Request Failed");
            }
        }

        public static async Task<int> Edit(City bObj)
        {
            try
            {
                int result = 0;
                DTOMstCity _objDtoMstCity = new DTOMstCity()
                {
                    CITY_CODE = bObj.CityCode,
                    CITY_NAME = bObj.CityName,
                    DISTRICT_NAME = bObj.DistrictName,
                    STATE_NAME = bObj.StateName,
                    NATION = bObj.Nation,
                    CHG_BY = bObj.ChangeBy,
                    STATUS_CODE = bObj.StatusCode,
                    DISTANCE = bObj.Distance
                };
                result = await Task.Run(() => { return interfaceObj.Edit(_objDtoMstCity); });
                return result;
            }
            catch
            {
                throw new Exception("Failed To Update");
            }
        }

        public static async Task<int> Approve(City bObj)
        {
            try
            {
                int result = 0;
                DTOMstCity _objDtoMstCity = new DTOMstCity()
                {
                    CITY_CODE = bObj.CityCode,
                    CITY_NAME = bObj.CityName,
                    DISTRICT_NAME = bObj.DistrictName,
                    STATE_NAME = bObj.StateName,
                    NATION = bObj.Nation,
                    APPROVED_BY = bObj.ApprovedBy,
                    STATUS_CODE = bObj.StatusCode,
                    DISTANCE = bObj.Distance
                };
                result = await Task.Run(() => { return interfaceObj.Approve(_objDtoMstCity); });
                return result;
            }
            catch
            {
                throw new Exception("Failed To Update");
            }
        }

        public static async Task<int> Approve(List<int> Citys, string ApprovedBy)
        {
            try
            {
                int result = 0;
                string strCityList = string.Join(",", Citys.Select(n => n.ToString()).ToArray());

                result = await Task.Run(() => { return interfaceObj.Approve(strCityList, ApprovedBy); });
                return result;
            }
            catch
            {
                throw new Exception("Failed To Approve");
            }
        }

        public static async Task<int> Delete(City bObj)
        {
            try
            {
                int result = 0;
                DTOMstCity _objDtoMstCity = new DTOMstCity()
                {
                    CITY_CODE = bObj.CityCode,
                    DELETE_REASON = bObj.DeleteReason,
                    CHG_BY = bObj.ChangeBy
                };
                result = await Task.Run(() => { return interfaceObj.Delete(_objDtoMstCity); });
                return result;
            }
            catch
            {
                throw new Exception("Failed To Delete");
            }
        }
    }
}
```  