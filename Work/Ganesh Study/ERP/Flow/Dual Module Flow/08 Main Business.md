```csharp
using System;
using System.Linq;
using System.Transactions;
using System.Threading.Tasks;
using System.Collections.Generic;
using ZanvarGroup.Erp.Business.Base;
using ZanvarGroup.Erp.Business.Masters;
using ZanvarGroup.Erp.DTO.Configs.Objects;
using ZanvarGroup.Erp.DTO.Configs.Interfaces;
using ZanvarGroup.Erp.DTO.Transactions.Objects;
using ZanvarGroup.Erp.Business.Entities.Masters;
using ZanvarGroup.Erp.Business.Services.Masters;
using ZanvarGroup.Erp.DTO.Transactions.Interfaces;
using ZanvarGroup.Erp.DALDapper.Implementation.Configs;
using ZanvarGroup.Erp.DALDapper.Implementation.Transactions;

namespace ZanvarGroup.Erp.Business.Transactions.Material
{
    public class ToolStockConversion
    {
        public static ITrnToolStockConversionH _dalTscH;
        public static ITrnToolStockConversionI _dalTscI;
        public static ICnfTranTypes _dalCnfTranTypes;
        public static ITrnMatPost _dalTrnMatPost;


        public static int TranType = 405;
        public static int TranSubType = 20;
        public static int MenuDocNo = 40520;
        public static int MenuId = 40623;

        // H
        public Int64 TrnNo { get; set; }
        public string StrTrnNo { get; set; }
        public string ShortTrnNo { get; set; }
        public int TrnSubType { get; set; }
        public string TrnDate { get; set; }
        public string FormattedTrnDate { get; set; }
        public string DocType { get; set; }
        public string CrtBy { get; set; }
        public int UnitCode { get; set; }
        public string ChnBy { get; set; }
        public int StatusCode { get; set; }
        public string DeleteReason { get; set; }

        // I
        public Int64 GrnNo { get; set; }
        public string StrGrnNo { get; set; }
        public string ShortGrnNo { get; set; }
        public string GrnDate { get; set; }
        public string FormattedGrnDate { get; set; }
        public string PartyBillNo { get; set; }
        public string PartyBillDate { get; set; }
        public string FormattedPartyBillDate { get; set; }
        public string GrnCrtBy { get; set; }
        public int SubGlAcNo { get; set; }
        public string SupplierName { get; set; }
        public int MaterialCode { get; set; }
        public string MaterialName { get; set; }
        public decimal CastingWt { get; set; }
        public decimal FinishWt { get; set; }
        public decimal IssuedQty { get; set; }
        public decimal ConversionQty { get; set; }
        public decimal ScrapWt { get; set; }
        public decimal MaterialWt { get; set; }
        public decimal ConversionWt { get; set; }
        public int ScarpMaterialCode { get; set; }
        public string ScarpMaterialName { get; set; }

        // I List
        public IList<ToolStockConversionI> LstTStockCI { get; set; }


        static ToolStockConversion(){
            _dalTscH = new DalTrnToolStockConversionH();
            _dalTscI = new DalTrnToolStockConversionI();
            _dalCnfTranTypes = new DALCnfTranTypes();
            _dalTrnMatPost = new DALTrnMatPost();
        }


        // 1. index page
        public static async Task<List<ToolStockConversion>> GetDateWiseAll(string strStartDate, string strEndDate)
        {
            try
            {
                List<DtoTrnToolStockConversionH> objTscH = await Task.Run(() => { return _dalTscH.GetDateWiseAll(strStartDate, strEndDate, TranType, TranSubType); });

                return fillList(objTscH);
            }
            catch
            {
                throw new Exception("Request Failed");
            }
        }


        private static List<ToolStockConversion> fillList(List<DtoTrnToolStockConversionH> boLst)
        {
            try
            {
                List<ToolStockConversion> lst = new List<ToolStockConversion>();
                if (lst != null)
                {
                    lst = (
                            from bObj in boLst
                            select new ToolStockConversion
                                {
                                    TrnNo = bObj.TRN_NO,
                                    ShortTrnNo = bObj.TRN_NO.ToString().Substring(3, 4) + "-" + bObj.TRN_NO.ToString().Substring(bObj.TRN_NO.ToString().Length - 6),
                                    TrnSubType = bObj.TRN_SUB_TYPE,
                                    TrnDate = bObj.TRN_DATE,
                                    FormattedTrnDate = DateUtility.getFormatedDate(bObj.TRN_DATE, 0),
                                    StatusCode = bObj.STATUS_CODE,
                                    CrtBy = bObj.CRT_BY
                            }).ToList();
                }
                return lst;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public static async Task<ToolStockConversion> GetExisting(long TrnNo)
        {
            try
            {
                DtoTrnToolStockConversionH dtoObj = await Task.Run(() => { return _dalTscH.GetExisting(TrnNo); });
                return new ToolStockConversion()
                {
                    TrnNo = dtoObj.TRN_NO,
                    StrTrnNo = dtoObj.TRN_NO.ToString(),
                    TrnSubType = dtoObj.TRN_SUB_TYPE,
                    TrnDate = dtoObj.TRN_DATE,
                    FormattedTrnDate = DateUtility.getFormatedDate(dtoObj.TRN_DATE, 0),
                    DocType = dtoObj.DOC_TYPE,
                    UnitCode = dtoObj.UNIT_CODE,
                    CrtBy = dtoObj.CRT_BY,
                    FinishWt = dtoObj.FINISH_WEIGHT,
                    StatusCode = dtoObj.STATUS_CODE,
                    ChnBy = dtoObj.CHN_BY,
                    DeleteReason = dtoObj.DELETE_REASON
                };
            }
            catch
            {
                throw new Exception("Request Failed");
            }
        }

        public static async Task<List<ToolStockConversion>> GetCreateList(int intMatCode)
        {
            try
            {
                var dtoList = await Task.Run(() => { return _dalTscH.GetCreateList(intMatCode); });

                List<MaterialsEntity> matList = await MaterialsService.GetMaterialFillList(dtoList.Select(x => x.MATERIAL_CODE).ToList());
                List<AccountSubGlEntity> supList = await AccountSubGlService.GetSubGlFillList(dtoList.Select(p => p.SUB_GL_ACNO).Distinct().ToList());

                List<ToolStockConversion> lst =
                (
                    from obj in dtoList

                    join matObj in matList
                    on obj.MATERIAL_CODE equals matObj.MaterialCode

                    join supObj in supList
                    on obj.SUB_GL_ACNO equals supObj.SubGlAcNo

                    select new ToolStockConversion
                    {
                        GrnNo = obj.GRN_NO,
                        StrGrnNo = obj.GRN_NO.ToString(),

                        ShortGrnNo = obj.GRN_NO == 0
                                                    ? ""
                                                    : obj.GRN_NO.ToString().Substring(3, 4) + "-" + obj.GRN_NO.ToString().Substring(obj.GRN_NO.ToString().Length - 6),
                        GrnDate = obj.GRN_DATE,
                        FormattedGrnDate = DateUtility.getFormatedDate(obj.GRN_DATE, 0),
                        PartyBillNo = obj.PARTY_BILL_NO,
                        PartyBillDate = obj.PARTY_BILL_DATE,
                        FormattedPartyBillDate = DateUtility.getFormatedDate(obj.PARTY_BILL_DATE, 0),
                        GrnCrtBy = obj.CRT_BY,
                        SubGlAcNo = obj.SUB_GL_ACNO,
                        SupplierName = supObj.LongName,
                        MaterialCode = obj.MATERIAL_CODE,
                        MaterialName = matObj.MaterialName,
                        ScarpMaterialCode = matObj.ScrapMaterialCode,
                        FinishWt = matObj.FinishWt,
                        IssuedQty = obj.ISSUE_QUANTITY
                    }
                ).ToList();

                return lst;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static async Task<long> Create(ToolStockConversion bObj)
        {
            try
            {
                MstMenu _objMstMenu = MstMenu.getMenuById(MenuId);

                DTOCnfTranTypes _dtoCnfTranTypes = _dalCnfTranTypes.GetExisting(TranType, TranSubType);
                Int64 intTrnNo = 0;
                //string strTranDate = DateUtility.getFormatedDate(DateUtility.getCurrentDate(), 1);
                string strTranDate = DateUtility.getFormatedDate(bObj.TrnDate, 1);
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
                        intTrnNo = _dalTscH.GetMonthlyTranNo(TranType, _dtoCnfTranTypes.TRAN_SERIES, strTranDate.Substring(0, 6));
                        if (intTrnNo == 1)
                        {
                            intTrnNo = CustomTranNo.GetCustomMonthlyTranNo(TranType, _dtoCnfTranTypes.TRAN_SERIES, strTranDate);
                        }
                    }
                    else
                    {
                        intTrnNo = _dalTscH.GetTranNo(TranType, _dtoCnfTranTypes.TRAN_SERIES, strFinancialYear);
                        if (intTrnNo == 1)
                        {
                            intTrnNo = CustomTranNo.GetCustomTranNo(TranType, _dtoCnfTranTypes.TRAN_SERIES, strTranDate);
                        }
                    }
                }

                bObj.DocType = _objMstMenu.VouType;
                bObj.TrnDate = strTranDate;
                bObj.TrnNo = intTrnNo;
                bObj.TrnSubType = TranSubType;
                bObj.StatusCode = intStatusCode;

                long result = 0;
                result = await Task.Run(() => { return insert(bObj, 1); });
                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        static long insert(ToolStockConversion bObj, int flag)
        {

            using (var scope = new TransactionScope())
            {
                try
                {
                    DtoTrnToolStockConversionH dtoObj_H = new DtoTrnToolStockConversionH()
                    {
                        TRN_NO = bObj.TrnNo,
                        TRN_SUB_TYPE = bObj.TrnSubType,
                        TRN_DATE = bObj.TrnDate,
                        DOC_TYPE = bObj.DocType,
                        UNIT_CODE = bObj.UnitCode,
                        CRT_BY = bObj.CrtBy,
                        FINISH_WEIGHT = bObj.FinishWt,
                        STATUS_CODE = bObj.StatusCode,
                        CHN_BY = bObj.ChnBy
                    };
                    if (flag == 1)
                    {
                        _dalTscH.Create(dtoObj_H);
                    }
                    else if (flag == 2)
                    {
                        _dalTscI.DelPermenantTrnData(dtoObj_H.TRN_NO);
                        _dalTrnMatPost.DelPermenantTrnData(dtoObj_H.TRN_NO);
                        _dalTscH.Edit(dtoObj_H);
                    }
                    else if (flag == 3)
                    {
                        //_dalTscH.Approve(dtoObj_H);
                    }

                    int intSrNo = 1;
                    int intMatPostSrNo = 1;
                    if (bObj.LstTStockCI != null)
                    {
                        foreach (ToolStockConversionI I_bo in bObj.LstTStockCI)
                        {
                            DtoTrnToolStockConversionI _objI = new DtoTrnToolStockConversionI()
                            {
                                TRN_NO = bObj.TrnNo,
                                SR_NO = intSrNo,
                                REF_TRN_NO = I_bo.RefTrnNo,
                                MATERIAL_CODE = bObj.MaterialCode,
                                GRN_QTY = I_bo.GrnQty,
                                CONVERSION_QTY = I_bo.ConversionQty,
                                SCRAP_MATERIAL_CODE = bObj.ScarpMaterialCode,
                                MATERIAL_WEIGHT = bObj.FinishWt,
                                CONVERSION_WEIGHT = I_bo.ConversionWt,
                                STATUS_CODE = bObj.StatusCode
                            };
                            _dalTscI.Create(_objI);

                            DTOTrnMatPost _objDtoTrnMatPost = new DTOTrnMatPost()
                            {
                                TRN_NO = bObj.TrnNo,
                                SR_NO = intMatPostSrNo,
                                TRN_SUB_TYPE = TranSubType,
                                DOC_TYPE = bObj.DocType,
                                TRN_DATE = bObj.TrnDate,
                                UNIT_CODE = bObj.UnitCode,
                                MATERIAL_CODE = bObj.MaterialCode,
                                REF_TRN_NO = bObj.TrnNo,
                                REF_SR_NO = intSrNo,
                                QUANTITY = (-1 * I_bo.ConversionQty),
                                STATUS_CODE = bObj.StatusCode
                            };
                            _dalTrnMatPost.Create(_objDtoTrnMatPost);
                            intMatPostSrNo++;

                            DTOTrnMatPost _objDtoTrnMatPostNew = new DTOTrnMatPost()
                            {
                                TRN_NO = bObj.TrnNo,
                                SR_NO = intMatPostSrNo,
                                TRN_SUB_TYPE = TranSubType,
                                DOC_TYPE = bObj.DocType,
                                TRN_DATE = bObj.TrnDate,
                                UNIT_CODE = bObj.UnitCode,
                                MATERIAL_CODE = bObj.ScarpMaterialCode,
                                REF_TRN_NO = bObj.TrnNo,
                                REF_SR_NO = intSrNo,
                                QUANTITY = I_bo.ConversionWt,
                                STATUS_CODE = bObj.StatusCode
                            };
                            _dalTrnMatPost.Create(_objDtoTrnMatPostNew);
                            intMatPostSrNo++;

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
                return bObj.TrnNo;
            }
        }


        public static async Task<long> Edit(ToolStockConversion bObj)
        {
            try
            {
                MstMenu _objMstMenu = MstMenu.getMenuById(MenuId);
                Int64 intTrnNo = bObj.TrnNo;
                string strTranDate = DateUtility.getFormatedDate(bObj.TrnDate, 1);
                int intStatusCode = 0;
                bObj.TrnDate = strTranDate;
                bObj.TrnNo = intTrnNo;
                bObj.DocType = _objMstMenu.VouType;
                bObj.TrnSubType = TranSubType;
                bObj.StatusCode = intStatusCode;
                long result = 0;
                result = await Task.Run(() => { return insert(bObj, 2); });
                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public static async Task<long> Delete(ToolStockConversion bObj)
        {
            try
            {
                long retStatus = 0;

                return retStatus = await Task.Run(() =>
                {
                    using (var scope = new TransactionScope())
                    {
                        DtoTrnToolStockConversionH dtoObj = new DtoTrnToolStockConversionH()
                                                            {
                                                                TRN_NO = bObj.TrnNo,
                                                                DELETE_REASON = bObj.DeleteReason,
                                                                CHN_BY = bObj.ChnBy
                        };
                        _dalTscH.Delete(dtoObj);
                        _dalTscI.Delete(dtoObj.TRN_NO);
                        _dalTrnMatPost.Delete(dtoObj.TRN_NO);
                        scope.Complete();
                    }
                    return bObj.TrnNo;
                });
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }




    }
}
```  