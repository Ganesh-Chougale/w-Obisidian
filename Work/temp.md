## 1. DTO: 
```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ZanvarGroup.Erp.DTO.Transactions.Objects
{
    public class DTOPackingDetailsOutSource
    {
        public int FROM_COMPANY { get; set; }
        public int CUSTOMER_CODE { get; set; }
        public int SELLER_COMPANY_CODE { get; set; }
        public int FINISH_MATERIAL_CODE { get; set; }
        public decimal PER_BOX_PART_QTY { get; set; }
        public int BOM_MATERIAL_CODE { get; set; }
        public decimal BOM_QUANTITY { get; set; }
        public int SUPPLIER_SUB_GL_ACNO { get; set; }
        public decimal SUPPLIER_PERCENTAGE { get; set; }
        public decimal FINISH_SCHEDULE_QTY { get; set; }
        public string FINISH_SCHEDULE_DATE { get; set; }
        //
        public Int64 TRN_NO { get; set; }
        public int SR_NO { get; set; }
        public string TRN_DATE { get; set; }
        public int TRAN_SUB_TYPE { get; set; }
        public int MATERIAL_CODE { get; set; }
        public decimal PLAN_QTY { get; set; }
        public string PLAN_DATE { get; set; }
        public int STATUS_CODE { get; set; }
        public decimal PRD_QTY { get; set; }
        public Int64 REF_TRN_NO { get; set; }
        public int REF_AMEND_NO { get; set; }
        public string CRT_BY { get; set; }
        public int IS_SISTERS_COMPANY { get; set; }

    }
}

```  
## 2. Interface:  
```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ZanvarGroup.Erp.DTO.Transactions.Objects;

namespace ZanvarGroup.Erp.DTO.Transactions.Interfaces
{
    public interface IPackingDetailsOutSource
    {
        List<DTOPackingDetailsOutSource> GetPackingOutSource(int pCompanyId);
        decimal GetPackingOutSourceCycle(int pSellerCompanyCode, int pCustomerCode, int pFinishMaterialCode, string pMonth);
        long GetMonthlyTrnNo(int intTrnType, int intTrnSeries, string strYearMonth);
        long GetTrnNo(int intTrnType, int intTrnSeries, string strYear);
        Int64 Create(DTOPackingDetailsOutSource dtoObj);
    }
}

```  
## 3. DAL:  

```csharp
using Dapper;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ZanvarGroup.Erp.DTO.Transactions.Interfaces;
using ZanvarGroup.Erp.DTO.Transactions.Objects;

namespace ZanvarGroup.Erp.DALDapper.Implementation.Transactions
{
    public class DALPackingDetailsOutSource: IPackingDetailsOutSource
    {

        public List<DTOPackingDetailsOutSource> GetPackingOutSource(int pCompanyId)
        {
            try
            {
                string query = $@"
                                SELECT
                                    LEFT(PD_H.TRN_NO, 3) AS FROM_COMPANY,
	                                PD_H.CUSTOMER_CODE,
	                                PD_H.SELLER_COMPANY_CODE,
	                                PD_I.MATERIAL_CODE AS FINISH_MATERIAL_CODE,
	                                PD_I.PER_BOX_PART_QTY,
	                                PD_I_BOM.MATERIAL_CODE AS BOM_MATERIAL_CODE,
	                                PD_I_BOM.QUANTITY AS BOM_QUANTITY,
	                                PD_I_BOM_SUP.SUB_GL_ACNO AS SUPPLIER_SUB_GL_ACNO,
	                                PD_I_BOM_SUP.SUPPLIER_PERCENTAGE
                                FROM
	                                VW_TRN_PACKING_DETAILS_H AS PD_H

	                                INNER JOIN VW_TRN_PACKING_DETAILS_I AS PD_I
	                                ON PD_H.TRN_NO = PD_I.TRN_NO
	                                AND PD_H.AMEND_NO = PD_I.AMEND_NO

	                                INNER JOIN VW_TRN_PACKING_DETAILS_I_BOM AS PD_I_BOM
	                                ON PD_I_BOM.TRN_NO = PD_H.TRN_NO
	                                AND PD_I_BOM.AMEND_NO = PD_H.AMEND_NO

	                                INNER JOIN VW_TRN_PACKING_DETAILS_I_BOM_SUP AS PD_I_BOM_SUP
	                                ON PD_I_BOM_SUP.TRN_NO = PD_H.TRN_NO
	                                AND PD_I_BOM_SUP.AMEND_NO = PD_H.AMEND_NO
	                                AND PD_I_BOM.MATERIAL_CODE = PD_I_BOM_SUP.MATERIAL_CODE

                                WHERE
	                                PD_H.PACKING_DESTINATION = {pCompanyId}
	                                AND PD_I_BOM.BOM_TYPE = 1
	                                AND PD_H.STATUS_CODE = 0
	                                AND PD_I.STATUS_CODE = 0
	                                AND PD_I_BOM.STATUS_CODE = 0
	                                AND PD_I_BOM_SUP.STATUS_CODE = 0
                                ";


                List<DTOPackingDetailsOutSource> lst = new List<DTOPackingDetailsOutSource>();
                using (ConManager con = new ConManager())
                {
                    lst = con.masterDb.Query<DTOPackingDetailsOutSource>(query).ToList();
                }
                return lst;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public decimal GetPackingOutSourceCycle(int pSellerCompanyCode, int pCustomerCode, int pFinishMaterialCode, string pMonth)
        {
            try
            {
                decimal num = 0;
                using (ConManager con = new ConManager())
                {
                    string companyQuery = $@"
                                            SELECT 
                                                ISNULL(MAX(DB_NAME), '') 
                                            FROM 
                                                [{con.masterDb.Database}].dbo.MST_COMPANY
                                            WHERE
                                                COMPANY_ID = {pSellerCompanyCode};
                                            ";
                    string transactionDbName = (string)con.masterDb.ExecuteScalar(companyQuery);

                    string query = $@"
                                    SELECT
                                        ISNULL(SUM(TS_I.SCH_QTY), 0) AS FINISH_SCHEDULE_QTY,
                                        TS_I.SCH_DATE AS FINISH_SCHEDULE_DATE
                                    FROM
                                        [{transactionDbName}].dbo.TRN_SCHEDULE_H AS TS_H

                                        INNER JOIN [{transactionDbName}].dbo.TRN_SCHEDULE_I AS TS_I
                                        ON TS_H.TRN_NO = TS_I.TRN_NO
                                        AND TS_H.AMEND_NO = TS_I.AMEND_NO
                                        AND TS_H.STATUS_CODE = 0

                                    WHERE
                                        SUBSTRING(CONVERT(VARCHAR, TS_H.TRN_NO), 8, 3) = '903'
                                        AND TS_H.SUB_GL_ACNO = {pCustomerCode} 
                                        AND TS_I.MATERIAL_CODE = {pFinishMaterialCode} 
                                        AND LEFT(TS_I.SCH_DATE, 6) = '{pMonth}'
                                        AND TS_H.TRN_SUB_TYPE IN (12, 16)
                                        AND TS_I.STATUS_CODE = 0
                                    GROUP BY
                                     TS_I.SCH_DATE
                                 ";
                    num = con.masterDb.ExecuteScalar<decimal>(query);
                }
                return num;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public long GetMonthlyTrnNo(int intTrnType, int intTrnSeries, string strYearMonth)
        {
            try
            {
                string Month = strYearMonth.Substring(4, 2);
                string query = $@"SELECT 
                                    ISNULL(MAX(TRN_NO),0) + 1  
                                FROM TRN_PRD_PACKING_MAT_OUT_SOURCE 
                                WHERE 
                                    LEFT(TRN_DATE,6)={strYearMonth} 
                                    AND SUBSTRING(CONVERT(VARCHAR(20),TRN_NO),13,2) = {Month} 
                                    AND SUBSTRING(CONVERT(VARCHAR(20),TRN_NO),8,3) = {intTrnType} 
                                    AND SUBSTRING(CONVERT(VARCHAR(20),TRN_NO),11,2) = {intTrnSeries}";
                Int64 returningTrn;
                using (ConManager con = new ConManager())
                {
                    returningTrn = (con.transactionDb.Query<Int64>(query).SingleOrDefault());
                }
                return returningTrn;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public long GetTrnNo(int intTrnType, int intTrnSeries, string strYear)
        {
            try
            {
                string query = $@"SELECT 
                                    ISNULL(MAX(TRN_NO),0) + 1  
                                FROM 
                                    TRN_PRD_PACKING_MAT_OUT_SOURCE 
                                WHERE
                                    SUBSTRING(CONVERT(VARCHAR(20),TRN_NO),8,3) = {intTrnType} 
                                    AND SUBSTRING(CONVERT(VARCHAR(20),TRN_NO),11,2) = {intTrnSeries} 
                                    AND SUBSTRING(CONVERT(VARCHAR(20),TRN_NO),4,4) = {strYear}";
                Int64 returningTrn;
                using (ConManager con = new ConManager())
                {
                    returningTrn = (con.transactionDb.Query<Int64>(query).SingleOrDefault());
                }
                return returningTrn;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public Int64 Create(DTOPackingDetailsOutSource dtoObj)
        {
            try
            {

                Int64 i;
                using (ConManager con = new ConManager())
                {
                    string query = $@"
                                        INSERT 
                                            INTO 
                                                TRN_PRD_PACKING_MAT_OUT_SOURCE 
                                        (
                                            TRN_NO,
                                            SR_NO,
                                            TRN_DATE,
                                            TRAN_SUB_TYPE,
                                            FINISH_MATERIAL_CODE,
                                            BOM_MATERIAL_CODE,
                                            PLAN_QTY,
                                            PLAN_DATE,
                                            STATUS_CODE,
                                            PRD_QTY,
                                            REF_TRN_NO,
                                            REF_AMEND_NO,
                                            FROM_COMPANY,
                                            CUSTOMER_CODE,
                                            CRT_BY,
                                            SUPPLIER_SUB_GL_ACNO,
                                            IS_SISTERS_COMPANY,
                                            SELLER_COMPANY_CODE
                                        ) 
                                        VALUES 
                                        (
                                            @TRN_NO,
                                            @SR_NO,
                                            @TRN_DATE,
                                            @TRAN_SUB_TYPE,
                                            @FINISH_MATERIAL_CODE,
                                            @BOM_MATERIAL_CODE,
                                            @PLAN_QTY,
                                            @PLAN_DATE,
                                            @STATUS_CODE,
                                            @PRD_QTY,
                                            @REF_TRN_NO,
                                            @REF_AMEND_NO,
                                            @FROM_COMPANY,
                                            @CUSTOMER_CODE,
                                            @CRT_BY,
                                            @SUPPLIER_SUB_GL_ACNO,
                                            @IS_SISTERS_COMPANY,
                                            @SELLER_COMPANY_CODE
                                        ); SELECT @TRN_NO";

                    i = con.transactionDb.Query<Int64>(query, dtoObj).Single();
                }
                return i;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


    }
}

```  

## 4. Business
```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Transactions;
using ZanvarGroup.Erp.Business.Base;
using ZanvarGroup.Erp.Business.Entities.Masters;
using ZanvarGroup.Erp.Business.Masters;
using ZanvarGroup.Erp.Business.Services.Masters;
using ZanvarGroup.Erp.DALDapper.Implementation.Configs;
using ZanvarGroup.Erp.DALDapper.Implementation.Transactions;
using ZanvarGroup.Erp.DTO.Configs.Interfaces;
using ZanvarGroup.Erp.DTO.Configs.Objects;
using ZanvarGroup.Erp.DTO.Transactions.Interfaces;
using ZanvarGroup.Erp.DTO.Transactions.Objects;

namespace ZanvarGroup.Erp.Business.Transactions.Procurement
{
    public class PackingDetailsOutSource
    {
        public static IPackingDetailsOutSource _dalPackingDetailsOutSource;
        public static ICnfTranTypes _dalCnfTranTypes;

        public static int TranType = 809;
        public static int TrnSubType = 15;
        public static int MenuDocNo = 80915;
        public static int MenuId = 707705;


        public int FromCompany { get; set; }
        public int CustomerCode { get; set; }
        public int SellerCompanyCode { get; set; }
        public string SellerCompanyName { get; set; }
        public string CustomerName { get; set; }
        public int FinishMaterialCode { get; set; }
        public string FinishMaterialName { get; set; }
        public decimal PerBoxPartQty { get; set; }
        public int BomMaterialCode { get; set; }
        public string BomMaterialName { get; set; }
        public decimal BomQuantity { get; set; }
        public int SupplierSubGlAcno { get; set; }
        public string SupplierName { get; set; }
        public decimal SupplierPercentage { get; set; }
        public string CrtBy { get; set; }
        public int TranSubType { get; set; }
        //
        public string FinishScheduleDate { get; set; }
        public decimal FinishScheduleQty { get; set; }
        public decimal BomScheduleQty { get; set; }
        public Int64 TrnNo { get; set; }
        public int SrNo { get; set; }
        public string TrnDate { get; set; }
        public int MaterialCode { get; set; }
        public decimal PlanQty { get; set; }
        public string PlanDate { get; set; }
        public int StatusCode { get; set; }
        public decimal PrdQty { get; set; }
        public Int64 RefTrnNo { get; set; }
        public int RefAmendNo { get; set; }
        public int IsSistersCompany { get; set; }
        public IList<PackingDetailsOutSource> LstPackingDetailsOutSource { get; set; }


        public static async Task<List<PackingDetailsOutSource>> GetPackingOutSource(int pCompanyId, string pMonth)
        {
            try
            {
                _dalPackingDetailsOutSource = new DALPackingDetailsOutSource();
                List<PackingDetailsOutSource> lst = new List<PackingDetailsOutSource>();
                List<DTOPackingDetailsOutSource> dtoList = _dalPackingDetailsOutSource.GetPackingOutSource(pCompanyId);

                List<MaterialsEntity> finishMatList = await MaterialsService.GetMaterialFillList(dtoList.Select(x => x.FINISH_MATERIAL_CODE).ToList());
                List<MaterialsEntity> bomMatList = await MaterialsService.GetMaterialFillList(dtoList.Select(x => x.BOM_MATERIAL_CODE).ToList());
                List<Company> lstSeller = Company.GetCompanyList();

                List<AccountSubGlEntity> lstSuppliers = await AccountSubGlService.GetSubGlFillList(dtoList.Select(p => p.SUPPLIER_SUB_GL_ACNO).Distinct().ToList());
                List<CustomerAccountEntity> LstCustomer = await CustomerAccountService.GetCustomerListAsync();

                string month = pMonth.Substring(0, 6);
                if (dtoList != null)
                {
                    lst = (
                            from dtoObj in dtoList
                            let finishSchQty = _dalPackingDetailsOutSource.GetPackingOutSourceCycle(dtoObj.SELLER_COMPANY_CODE, dtoObj.CUSTOMER_CODE, dtoObj.FINISH_MATERIAL_CODE, month)
                            //let cycledData = _dalPackingDetailsOutSource.GetPackingOutSourceCycle(dtoObj.SELLER_COMPANY_CODE, dtoObj.CUSTOMER_CODE, dtoObj.FINISH_MATERIAL_CODE, month)

                            //let finishSchQty = cycledData.FINISH_SCHEDULE_QTY
                            let bomSchQty = (((dtoObj.BOM_QUANTITY / dtoObj.PER_BOX_PART_QTY) * finishSchQty) * dtoObj.SUPPLIER_PERCENTAGE) / 100

                            join objCustomer in LstCustomer
                            on dtoObj.CUSTOMER_CODE equals objCustomer.SubGlAcNo

                            join sellerObj in lstSeller
                            on dtoObj.SELLER_COMPANY_CODE equals sellerObj.CompanyId

                            join finishMatObj in finishMatList
                            on dtoObj.FINISH_MATERIAL_CODE equals finishMatObj.MaterialCode

                            join bomMatObj in bomMatList
                            on dtoObj.BOM_MATERIAL_CODE equals bomMatObj.MaterialCode

                            join supObj in lstSuppliers
                            on dtoObj.SUPPLIER_SUB_GL_ACNO equals supObj.SubGlAcNo

                            select new PackingDetailsOutSource()
                            {
                                FromCompany = dtoObj.FROM_COMPANY,
                                CustomerCode = dtoObj.CUSTOMER_CODE,
                                CustomerName = objCustomer.LongName,
                                SellerCompanyCode = dtoObj.SELLER_COMPANY_CODE,
                                SellerCompanyName = sellerObj.CompanyShortName,
                                FinishScheduleDate = dtoObj.FINISH_SCHEDULE_DATE,
                                FinishMaterialCode = dtoObj.FINISH_MATERIAL_CODE,
                                FinishMaterialName = finishMatObj.MaterialName,
                                PerBoxPartQty = dtoObj.PER_BOX_PART_QTY,
                                BomMaterialCode = dtoObj.BOM_MATERIAL_CODE,
                                BomMaterialName = bomMatObj.MaterialName,
                                BomQuantity = dtoObj.BOM_QUANTITY,
                                SupplierSubGlAcno = dtoObj.SUPPLIER_SUB_GL_ACNO,
                                SupplierName = supObj.LongName,
                                SupplierPercentage = dtoObj.SUPPLIER_PERCENTAGE,
                                FinishScheduleQty = finishSchQty,
                                BomScheduleQty = bomSchQty
                            }
                        ).ToList();

                }
                return lst;

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }


        public static async Task<Int64> Create(PackingDetailsOutSource boObj)
        {
            try
            {
                MstMenu _objMstMenu = MstMenu.getMenuByDocNo(MenuDocNo);
                _dalCnfTranTypes = new DALCnfTranTypes();
                DTOCnfTranTypes _dtoCnfTranTypes = _dalCnfTranTypes.GetExisting(TranType, TrnSubType);
                Int64 intTrnNo = 0;

                _dalPackingDetailsOutSource = new DALPackingDetailsOutSource();
                string tranDate = DateUtility.getCurrentDate();
                string strTranDate = DateUtility.getFormatedDate(tranDate, 1);
                string strFinancialYear = FinancialYear.getFinancialYearByDate(strTranDate);
                int intStatusCode = 0;
                if (Convert.ToBoolean(_objMstMenu.ApprovalReq) == true)
                {
                    intStatusCode = 101;
                }
                if (_dtoCnfTranTypes != null)
                {
                    if (Convert.ToBoolean(_dtoCnfTranTypes.MONTHLY_NUMBERING) == true)
                    {
                        intTrnNo = _dalPackingDetailsOutSource.GetMonthlyTrnNo(TranType, _dtoCnfTranTypes.TRAN_SERIES, strTranDate.Substring(0, 6));
                        if (intTrnNo == 1)
                        {
                            intTrnNo = CustomTranNo.GetCustomMonthlyTranNo(TranType, _dtoCnfTranTypes.TRAN_SERIES, strTranDate);
                        }
                    }
                    else
                    {
                        intTrnNo = _dalPackingDetailsOutSource.GetTrnNo(TranType, _dtoCnfTranTypes.TRAN_SERIES, strFinancialYear);
                        if (intTrnNo == 1)
                        {
                            intTrnNo = CustomTranNo.GetCustomTranNo(TranType, _dtoCnfTranTypes.TRAN_SERIES, strTranDate);
                        }
                    }
                }

                boObj.TrnDate = strTranDate;
                boObj.TrnNo = intTrnNo;
                boObj.TranSubType = TrnSubType;
                boObj.StatusCode = intStatusCode;

                long result = 0;
                result = await Task.Run(() => { return insert(boObj, 1); });
                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        static Int64 insert(PackingDetailsOutSource boObj, int flag)
        {
            _dalPackingDetailsOutSource = new DALPackingDetailsOutSource();

            using (var scope = new TransactionScope())
            {
                try
                {
                    int intSrNo = 1;
                    if (boObj.LstPackingDetailsOutSource != null)
                    {
                        foreach (PackingDetailsOutSource _obj in boObj.LstPackingDetailsOutSource)
                        {
                            DTOPackingDetailsOutSource bObj = new DTOPackingDetailsOutSource()
                            {
                                TRN_NO = boObj.TrnNo,
                                SR_NO = intSrNo,
                                TRN_DATE = boObj.TrnDate,
                                TRAN_SUB_TYPE = boObj.TranSubType,
                                FINISH_MATERIAL_CODE = _obj.FinishMaterialCode,
                                BOM_MATERIAL_CODE = _obj.BomMaterialCode,
                                SUPPLIER_SUB_GL_ACNO = _obj.SupplierSubGlAcno,
                                PLAN_QTY = _obj.PlanQty,
                                PLAN_DATE = _obj.PlanDate,
                                STATUS_CODE = boObj.StatusCode,
                                PRD_QTY = _obj.PrdQty,
                                //REF_TRN_NO = ,
                                //REF_AMEND_NO = ,
                                //IS_SISTERS_COMPANY = _obj.IsSisterCompany,
                                FROM_COMPANY = _obj.FromCompany,
                                CUSTOMER_CODE = _obj.CustomerCode,
                                CRT_BY = boObj.CrtBy,
                                SELLER_COMPANY_CODE = _obj.SellerCompanyCode


                            };
                            _dalPackingDetailsOutSource.Create(bObj);
                            intSrNo++;
                        }
                    }
                    scope.Complete();
                }
                catch (Exception ex)
                {
                    scope.Dispose();
                    throw ex;
                }
                return boObj.TrnNo;
            }
        }


    }
}

```  