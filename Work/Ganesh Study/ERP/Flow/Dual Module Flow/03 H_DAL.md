```csharp
using Dapper;
using System;
using System.Linq;
using System.Collections.Generic;
using ZanvarGroup.Erp.DTO.Transactions.Objects;
using ZanvarGroup.Erp.DTO.Transactions.Interfaces;

namespace ZanvarGroup.Erp.DALDapper.Implementation.Transactions
{
    public class DalTrnToolStockConversionH : ITrnToolStockConversionH
    {

        // .Query => returns list (Optional)
        // public List<DtoTrnToolStockConversionH> GetAll()
        // {
        //     try
        //     {
        //         string query = "SELECT * FROM TRN_TOOL_STOCK_CONVERSION_H";
        //         List<DtoTrnToolStockConversionH> lst = new List<DtoTrnToolStockConversionH>();
        //         using (ConManager con = new ConManager())
        //         {
        //             lst = con.transactionDb.Query<DtoTrnToolStockConversionH>(query).ToList();
        //         }
        //         return lst;
        //     }
        //     catch (Exception ex)
        //     {
        //         throw ex;
        //     }
        // }


        // .Query => returns obj (For Edit, Delete, Details Page)x
        public DtoTrnToolStockConversionH GetExisting(long TrnNo)
        {
            try
            {
                string query = $@"
                                    SELECT
	                                    *
                                    FROM 
	                                    TRN_TOOL_STOCK_CONVERSION_H 
                                    WHERE 
	                                    TRN_NO = @TrnNo
                                ";
                DtoTrnToolStockConversionH obj = new DtoTrnToolStockConversionH();
                using (ConManager con = new ConManager())
                {
                    obj = con.transactionDb.Query<DtoTrnToolStockConversionH>(query, new { TrnNo }).SingleOrDefault();
                }
                return obj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        // .Query => returns TrnNo (Saves entry & returns TrnNo)
        public long Create(DtoTrnToolStockConversionH dtoObj)
        {
            try
            {
                string query = $@"
                                INSERT INTO TRN_TOOL_STOCK_CONVERSION_H
                                (
                                    TRN_NO,
                                    TRN_SUB_TYPE,
                                    TRN_DATE,
                                    CRT_BY,
                                    UNIT_CODE,
                                    DOC_TYPE,
                                    FINISH_WEIGHT,
                                    CRT_DATE_TIME,
                                    STATUS_CODE
                                )
                                VALUES
                                (
                                    @TRN_NO,
                                    @TRN_SUB_TYPE,
                                    @TRN_DATE,
                                    @CRT_BY,
                                    @UNIT_CODE,
                                    @DOC_TYPE,
                                    @FINISH_WEIGHT,
                                    GETDATE(),
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


        // .Execute => returns affected row count (Edits entry & returns affected row count)
        public int Edit(DtoTrnToolStockConversionH dtoObj)
        {
            try
            {
                string query = @"
                            UPDATE TRN_TOOL_STOCK_CONVERSION_H
                            SET
                                TRN_SUB_TYPE = @TRN_SUB_TYPE,
                                TRN_DATE = @TRN_DATE,
                                FINISH_WEIGHT = @FINISH_WEIGHT,
                                STATUS_CODE = @STATUS_CODE,
                                CHN_BY = @CHN_BY,
                                UNIT_CODE = @UNIT_CODE,
                                CHN_DATE_TIME = GETDATE()
                            WHERE
                                TRN_NO = @TRN_NO;
                        ";

                int rowsAffectedCount;

                using (ConManager con = new ConManager())
                {
                    rowsAffectedCount = con.transactionDb.Execute(query, dtoObj);
                }

                return rowsAffectedCount;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        // .Execute => returns affected row count (Deletes entry & returns affected row count)
        public int Delete(DtoTrnToolStockConversionH dtoObj)
        {
            try
            {
                string query = $@"
                                    UPDATE TRN_TOOL_STOCK_CONVERSION_H
                                    SET
                                        DELETE_REASON = @DELETE_REASON,
                                        STATUS_CODE = 1,
                                        CHN_BY = @CHN_BY,
                                        CHN_DATE_TIME = GETDATE()
                                    WHERE
                                        TRN_NO = @TRN_NO;
                                ";

                int rowsAffectedCount;

                using (ConManager con = new ConManager())
                {
                    rowsAffectedCount = con.transactionDb.Execute(query, dtoObj);
                }

                return rowsAffectedCount;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


    // Helps to generate new TrnNos in different cases
        // .Query => returns (TrnNo + 1 Or 1 if null
        public long GetMonthlyTranNo(int intTrnType, int intTrnSeries, string strYearMonth)
        {
            try
            {
                string query = "SELECT ISNULL(MAX(TRN_NO),0) + 1  FROM TRN_TOOL_STOCK_CONVERSION_H WHERE LEFT(TRN_DATE,6)=@YearMonth AND SUBSTRING(CONVERT(VARCHAR(20),TRN_NO),13,2) = @Month AND SUBSTRING(CONVERT(VARCHAR(20),TRN_NO),8,3) = @TrnType AND SUBSTRING(CONVERT(VARCHAR(20),TRN_NO),11,2) = @TrnSeries";
                Int64 returningTrn;
                using (ConManager con = new ConManager())
                {
                    returningTrn = (con.transactionDb.Query<Int64>(query, new { YearMonth = strYearMonth, Month = strYearMonth.Substring(4, 2), TrnType = intTrnType, TrnSeries = intTrnSeries }).SingleOrDefault());
                }
                return returningTrn;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        // .Query => returns (TrnNo + 1 Or 1 if null
        public long GetTranNo(int intTrnType, int intTrnSeries, string strYear)
        {
            try
            {
                string query = "SELECT ISNULL(MAX(TRN_NO),0) + 1  FROM TRN_TOOL_STOCK_CONVERSION_H WHERE SUBSTRING(CONVERT(VARCHAR(20),TRN_NO),8,3) = @TrnType AND SUBSTRING(CONVERT(VARCHAR(20),TRN_NO),11,2) = @TrnSeries and SUBSTRING(CONVERT(VARCHAR(20),TRN_NO),4,4) = @Year";
                Int64 returningTrn;
                using (ConManager con = new ConManager())
                {
                    returningTrn = (con.transactionDb.Query<Int64>(query, new { TrnType = intTrnType, TrnSeries = intTrnSeries, Year = strYear }).SingleOrDefault());
                }
                return returningTrn;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        // .Query => returns list (middle page)
        public List<DtoTrnToolStockConversionH> GetCreateList(int intMatCode)
        {
            try
            {
                List<DtoTrnToolStockConversionH> lst = new List<DtoTrnToolStockConversionH>();

                string query = @"
                                SELECT
	                                H_MAT.TRN_NO AS GRN_NO,
	                                H_MAT.TRN_DATE AS GRN_DATE,
	                                H_MAT.PARTY_BILL_NO,
	                                H_MAT.PARTY_BILL_DATE,
	                                H_MAT.CRT_BY,
                                    H_MAT.SUB_GL_ACNO,
	                                I_MAT.MATERIAL_CODE,
	                                I_MAT.ISSUE_QUANTITY
                                FROM
	                                TRN_ACCT_MAT_H AS H_MAT

	                                LEFT JOIN TRN_MAT_I AS I_MAT
	                                ON H_MAT.TRN_NO = I_MAT.TRN_NO

                                WHERE
	                                SUBSTRING(CAST(H_MAT.TRN_NO AS VARCHAR(20)), 8, 3) = '404'
	                                AND H_MAT.TRN_SUB_TYPE = 20
	                                AND H_MAT.STATUS_CODE = 0
	                                AND I_MAT.STATUS_CODE = 0
	                                AND I_MAT.MATERIAL_CODE = @MatCode
	                                AND NOT EXISTS	(
						                                SELECT 1
						                                FROM
							                                TRN_TOOL_STOCK_CONVERSION_I AS TTSC_I
						                                WHERE
							                                TTSC_I.REF_TRN_NO = H_MAT.TRN_NO
							                                AND TTSC_I.MATERIAL_CODE = I_MAT.MATERIAL_CODE
							                                AND TTSC_I.STATUS_CODE IN (0, 101)
					                                )
                                ";

                using (ConManager con = new ConManager())
                {
                    lst = con.transactionDb.Query<DtoTrnToolStockConversionH>(
                                                                            query,
                                                                            new { MatCode = intMatCode }
                                                                           ).ToList();
                    return lst;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        // .Query => returns list (index page)
        public List<DtoTrnToolStockConversionH> GetDateWiseAll(string strStartDate, string strEndDate, int intTrnType, int intTrnSubType)
        {
            try
            {
                string query = "SELECT * FROM TRN_TOOL_STOCK_CONVERSION_H WHERE SUBSTRING(CONVERT(VARCHAR(20),TRN_NO),8,3) = @TrnType AND TRN_SUB_TYPE = @TrnSubType AND TRN_DATE >= @StartDate AND TRN_DATE <= @EndDate ORDER BY TRN_DATE DESC,TRN_NO DESC";
                List<DtoTrnToolStockConversionH> dalObj;
                using (ConManager con = new ConManager())
                {
                    dalObj = (List<DtoTrnToolStockConversionH>)con.transactionDb.Query<DtoTrnToolStockConversionH>(query, new { TrnType = intTrnType, TrnSubType = intTrnSubType, StartDate = strStartDate, EndDate = strEndDate });

                }
                return dalObj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


    }
}

```  