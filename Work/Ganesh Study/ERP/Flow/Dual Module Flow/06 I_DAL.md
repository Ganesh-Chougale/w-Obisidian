```csharp
using Dapper;
using System;
using System.Linq;
using System.Collections.Generic;
using ZanvarGroup.Erp.DTO.Transactions.Objects;
using ZanvarGroup.Erp.DTO.Transactions.Interfaces;

namespace ZanvarGroup.Erp.DALDapper.Implementation.Transactions
{
    public class DalTrnToolStockConversionI : ITrnToolStockConversionI
    {

        // // .Query => returns list (Optional)
        // public List<DtoTrnToolStockConversionI> GetAll()
        // {
        //     try
        //     {
        //         string query = "SELECT * FROM TRN_TOOL_STOCK_CONVERSION_I";
        //         List<DtoTrnToolStockConversionI> lst = new List<DtoTrnToolStockConversionI>();
        //         using (ConManager con = new ConManager())
        //         {
        //             lst = con.transactionDb.Query<DtoTrnToolStockConversionI>(query).ToList();
        //         }
        //         return lst;
        //     }
        //     catch (Exception ex)
        //     {
        //         throw ex;
        //     }
        // }

        // .Query => returns list (For Edit, Delete, Details Page)
        public List<DtoTrnToolStockConversionI> GetExisting(long intTrnNo)
        {
            try
            {
                string query = @"
                                    SELECT
	                                    CURRENT_I.TRN_NO,
	                                    CURRENT_I.SR_NO,
	                                    CURRENT_I.REF_TRN_NO, -- previousely know as GRNO
	                                    -- H_MAT.TRN_NO AS GRN_NO, -- same as above trn no
	                                    H_MAT.TRN_DATE AS GRN_DATE,
	                                    CURRENT_I.GRN_QTY,
	                                    CURRENT_I.MATERIAL_CODE,
	                                    CURRENT_I.CONVERSION_QTY,
	                                    CURRENT_I.SCRAP_MATERIAL_CODE,
	                                    CURRENT_I.MATERIAL_WEIGHT,
	                                    CURRENT_I.CONVERSION_WEIGHT,
	                                    CURRENT_I.STATUS_CODE,
                                        H_MAT.SUB_GL_ACNO,
	                                    H_MAT.PARTY_BILL_NO,
	                                    H_MAT.PARTY_BILL_DATE
                                    FROM
	                                    TRN_TOOL_STOCK_CONVERSION_I AS CURRENT_I

	                                    INNER JOIN TRN_ACCT_MAT_H AS H_MAT
	                                    ON H_MAT.TRN_NO = CURRENT_I.REF_TRN_NO

                                    WHERE
	                                    CURRENT_I.TRN_NO = @TrnNo
                                ";
                List<DtoTrnToolStockConversionI> dtoObj;
                using (ConManager con = new ConManager())
                {
                    dtoObj = (List<DtoTrnToolStockConversionI>)con.transactionDb.Query<DtoTrnToolStockConversionI>(query, new { TrnNo = intTrnNo }).ToList();
                }
                return dtoObj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        // .Query => returns TrnNo (Saves entry & returns TrnNo)
        public long Create(DtoTrnToolStockConversionI dtoObj)
        {
            try
            {
                string query = $@"
                                    INSERT INTO TRN_TOOL_STOCK_CONVERSION_I
                                    (
		                                    TRN_NO,
		                                    SR_NO,
		                                    REF_TRN_NO,
		                                    MATERIAL_CODE,
		                                    GRN_QTY,
		                                    CONVERSION_QTY,
		                                    SCRAP_MATERIAL_CODE,
		                                    MATERIAL_WEIGHT,
		                                    CONVERSION_WEIGHT,
		                                    STATUS_CODE
                                    )
                                    VALUES
                                    (
		                                    @TRN_NO,
		                                    @SR_NO,
		                                    @REF_TRN_NO,
		                                    @MATERIAL_CODE,
		                                    @GRN_QTY,
		                                    @CONVERSION_QTY,
		                                    @SCRAP_MATERIAL_CODE,
		                                    @MATERIAL_WEIGHT,
		                                    @CONVERSION_WEIGHT,
		                                    @STATUS_CODE
                                    );

                                    SELECT @TRN_NO;
                                ";

                long returningTrn;

                using (ConManager con = new ConManager())
                {
                    returningTrn = con.transactionDb.Query<long>(query, dtoObj).Single();
                }

                return returningTrn;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        // in I we don't need Edit Variable


        // .Execute => returns affected row count (Status_Code = 1 & returns affected row count)
        public int Delete(Int64 longTrnNo)
        {
            try
            {
                string query = "UPDATE TRN_TOOL_STOCK_CONVERSION_I SET STATUS_CODE = 1 WHERE TRN_NO = @TrnNo";
                int rowsAffectedCount;
                using (ConManager con = new ConManager())
                {
                    rowsAffectedCount = con.transactionDb.Execute(query, new { TrnNo = longTrnNo });
                }
                return rowsAffectedCount;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        // .Execute => returns affected row count (Deletes entry & returns affected row count)
        public int DelPermenantTrnData(Int64 TrnNo)
        {
            try
            {
                string query = "DELETE FROM TRN_TOOL_STOCK_CONVERSION_I WHERE TRN_NO = @TrnNo";
                int rowsAffectedCount;
                using (ConManager con = new ConManager())
                {
                    rowsAffectedCount = con.transactionDb.Execute(query, new { TrnNo = TrnNo });
                }
                return rowsAffectedCount;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


    }
}
```  