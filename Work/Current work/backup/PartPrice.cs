using System;
using System.Text;
using System.Linq;
using System.Transactions;
using System.Threading.Tasks;
using System.Collections.Generic;
using ZanvarGroup.Erp.Business.Base;
using ZanvarGroup.Erp.Business.Masters;
using ZanvarGroup.Erp.Business.Queries;
using ZanvarGroup.Erp.DTO.Configs.Objects;
using ZanvarGroup.Erp.DTO.Queries.Objects;
using ZanvarGroup.Erp.DTO.Configs.Interfaces;
using ZanvarGroup.Erp.DTO.Queries.Interfaces;
using ZanvarGroup.Erp.DTO.Transactions.Objects;
using ZanvarGroup.Erp.Business.Entities.Masters;
using ZanvarGroup.Erp.Business.Services.Masters;
using ZanvarGroup.Erp.DTO.Transactions.Interfaces;
using ZanvarGroup.Erp.Business.Calibration.Masters;
using ZanvarGroup.Erp.DALDapper.Implementation.Configs;
using ZanvarGroup.Erp.DALDapper.Implementation.Queries;
using ZanvarGroup.Erp.DALDapper.Implementation.Transactions;

namespace ZanvarGroup.Erp.Business.Transactions.Production
{
    public class PartPrice
    {

        public static ITrnPartPriceH _dalPdH;
        public static ITrnPartPriceI _dalPdI;
        public static ICnfTranTypes _dalCnfTranTypes;
        public static IPendingCastingPlanningOrder _dalPendingCastingPlanningOrder;

        public static int TranType = 121;
        public static int TranSubType = 17;
        public static int TranSeries = 17;
        public static int MenuDocNo = 12117;
        public static int MenuId = 29205;

        public Int64 TrnNo { get; set; }
        public string ShortTrnNo { get; set; }
        public int AmendNo { get; set; }
        public string TrnDate { get; set; }
        public string FormattedTrnDate { get; set; }
        public int TrnSubType { get; set; }
        public string DocType { get; set; }
        public int SubGlAcno { get; set; }
        public string CustomerName { get; set; }
        public int SellerCompanyCode { get; set; }
        public string SellerCompanyName { get; set; }
        public int PackingDestination { get; set; }
        public int IsPriceBreakupAvailable { get; set; }
        public string EffectiveDate { get; set; }
        public decimal TargetPackingPrice { get; set; }
        public decimal TargetChildPartPrice { get; set; }
        public decimal TargetTransportPrice { get; set; }
        public string Remark { get; set; }
        public string CrtBy { get; set; }
        public string ChgBy { get; set; }
        public string DeleteReason { get; set; }
        public decimal Stock { get; set; }
        public int IsOverSeas { get; set; }
        public int StatusCode { get; set; }
        public int MaterialCode { get; set; }
        public string MaterialName { get; set; }
        public int MachningResponsibleName { get; set; }
        public string CastingMaterialName { get; set; }
        public int RefMaterialCode { get; set; }
        public decimal PackingCostAgree { get; set; }
        public decimal ChildPartsCostAgree { get; set; }
        public decimal TransportCostAgree { get; set; }

        public IList<PartPrice> LstPartPriceH { get; set; }
        public IList<PartPriceI> LstPartPriceI { get; set; }


        private static async Task<List<PartPrice>> fillList(List<DTOTrnPartPriceH> dtoList)
        {
            try
            {
                List<PartPrice> boList = new List<PartPrice>();
                List<Company> LstSupplierAccount = Company.GetCompanyList();
                List<CustomerAccountEntity> LstCustomer = await CustomerAccountService.GetCustomerListAsync();

                if (dtoList != null)
                {
                    boList = (from dtoObj in dtoList

                              join objSupplier in LstSupplierAccount
                              on dtoObj.SELLER_COMPANY_CODE equals objSupplier.CompanyId

                              join objCustomer in LstCustomer
                              on dtoObj.SUB_GL_ACNO equals objCustomer.SubGlAcNo

                              select new PartPrice()
                              {
                                  TrnNo = dtoObj.TRN_NO,
                                  ShortTrnNo = dtoObj.TRN_NO.ToString().Substring(3, 4) + "-" + dtoObj.TRN_NO.ToString().Substring(dtoObj.TRN_NO.ToString().Length - 6),
                                  TrnDate = dtoObj.TRN_DATE,
                                  FormattedTrnDate = DateUtility.getFormatedDate(dtoObj.TRN_DATE, 0),
                                  TrnSubType = dtoObj.TRN_SUB_TYPE,
                                  AmendNo = dtoObj.AMEND_NO,
                                  DocType = dtoObj.DOC_TYPE,
                                  SubGlAcno = dtoObj.SUB_GL_ACNO,
                                  CustomerName = objCustomer.LongName,
                                  SellerCompanyCode = dtoObj.SELLER_COMPANY_CODE,
                                  SellerCompanyName = objSupplier.CompanyName,
                                  //IsOverSeas = objSupplier.IsOverseas,
                                  IsOverSeas = objCustomer.IsOverseas,
                                  PackingDestination = dtoObj.PACKING_DESTINATION,
                                  IsPriceBreakupAvailable = dtoObj.IS_PRICE_BREAKUP_AVAILABLE,
                                  EffectiveDate = dtoObj.EFFECTIVE_FROM,
                                  Remark = dtoObj.REMARK,
                                  CrtBy = dtoObj.CRT_BY ?? "",
                                  ChgBy = dtoObj.CHG_BY ?? "",
                                  StatusCode = dtoObj.STATUS_CODE,
                              }).ToList();
                }
                return boList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static async Task<List<PartPrice>> GetDateWiseAll(string strStartDate, string strEndDate)
        {
            try
            {
                _dalPdH = new DALTrnPartPriceH();
                List<PartPrice> lst = await fillList(_dalPdH.GetDateWiseAll(strStartDate, strEndDate, TranType, TranSubType));
                return lst;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static async Task<List<PartPrice>> GetOrderList(int SubGlAcNo, int companyid)
        {
            try
            {
                _dalPdH = new DALTrnPartPriceH();
                List<DTOTrnPartPriceH> dtoOrderListForAmend = await Task.Run(() => { return _dalPdH.GetPendingPlanningList(SubGlAcNo, companyid); });
                List<PartPrice> lstOrderListForAmend = new List<PartPrice>();

                if (dtoOrderListForAmend != null)
                {

                    List<MaterialsEntity> dtoMstMaterials = await MaterialsService.GetMaterialFillList(dtoOrderListForAmend.Select(p => p.MATERIAL_CODE).Distinct().ToList());
                    List<MaterialsEntity> dtoCastMstMaterials = await MaterialsService.GetMaterialFillList(dtoOrderListForAmend.Select(p => p.REF_MATERIAL_CODE).Distinct().ToList());

                    lstOrderListForAmend = (from ordlst in dtoOrderListForAmend
                                            join mstmat in dtoMstMaterials on ordlst.MATERIAL_CODE equals mstmat.MaterialCode
                                            join castmat in dtoCastMstMaterials on ordlst.REF_MATERIAL_CODE equals castmat.MaterialCode
                                            select new PartPrice
                                            {
                                                MaterialCode = ordlst.MATERIAL_CODE,
                                                MaterialName = mstmat.MaterialName,
                                                TrnNo = ordlst.TRN_NO,
                                                AmendNo = ordlst.AMEND_NO,
                                                MachningResponsibleName = ordlst.MACHNING_RESPONSIBLE_NAME,
                                                RefMaterialCode = ordlst.REF_MATERIAL_CODE,
                                                CastingMaterialName = castmat.MaterialName,
                                                PackingCostAgree = ordlst.PACKING_COST_AGREE,
                                                ChildPartsCostAgree = ordlst.CHILD_PARTS_COST_AGREE,
                                                TransportCostAgree = ordlst.TRANSPORT_COST_AGREE
                                            }).ToList();
                }
                return lstOrderListForAmend;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        static long insert(PartPrice bObj, int flag)
        {
            _dalPdH = new DALTrnPartPriceH();
            _dalPdI = new DALTrnPartPriceI();

            using (var scope = new TransactionScope())
            {
                try
                {
                    DTOTrnPartPriceH dtoObj_H = new DTOTrnPartPriceH()
                    {
                        TRN_NO = bObj.TrnNo,
                        AMEND_NO = bObj.AmendNo,
                        TRN_DATE = bObj.TrnDate,
                        TRN_SUB_TYPE = bObj.TrnSubType,
                        DOC_TYPE = bObj.DocType,
                        SUB_GL_ACNO = bObj.SubGlAcno,
                        SELLER_COMPANY_CODE = bObj.SellerCompanyCode,
                        //PACKING_DESTINATION = bObj.PackingDestination,
                        //IS_PRICE_BREAKUP_AVAILABLE = bObj.IsPriceBreakupAvailable,
                        //EFFECTIVE_FROM = DateUtility.getFormatedDate(bObj.EffectiveDate, 1),
                        //TARGET_PACKING_PRICE = ,
                        //TARGET_CHILD_PART_PRICE = ,
                        //TARGET_TRANSPORT_PRICE = ,
                        //REMARK = bObj.Remark,
                        CRT_BY = bObj.CrtBy,
                        STATUS_CODE = bObj.StatusCode
                    };
                    if (flag == 1)
                    {
                        _dalPdH.Create(dtoObj_H);
                    }
                    else if (flag == 2)
                    {
                        _dalPdI.DelPermenantTrnData(dtoObj_H.TRN_NO);
                        _dalPdH.Edit(dtoObj_H);
                    }
                    else if (flag == 3)
                    {
                        _dalPdH.Approve(dtoObj_H);
                    }

                    int intISrNo = 1;
                    if (bObj.LstPartPriceI != null)
                    {
                        foreach (PartPriceI I_bo in bObj.LstPartPriceI)
                        {
                            DTOTrnPartPriceI _objI = new DTOTrnPartPriceI()
                            {
                                TRN_NO = bObj.TrnNo,
                                SR_NO = intISrNo,
                                AMEND_NO = bObj.AmendNo,
                                TRN_DATE = bObj.TrnDate,
                                TRN_SUB_TYPE = bObj.TrnSubType,
                                MATERIAL_CODE = I_bo.MaterialCode,
                                STATUS_CODE = bObj.StatusCode
                            };
                            _dalPdI.Create(_objI);
                            intISrNo++;

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


        public static async Task<long> Create(PartPrice bObj)
        {
            try
            {
                MstMenu _objMstMenu = MstMenu.getMenuById(MenuId);
                _dalPdH = new DALTrnPartPriceH();
                _dalCnfTranTypes = new DALCnfTranTypes();

                DTOCnfTranTypes _dtoCnfTranTypes = _dalCnfTranTypes.GetExisting(TranType, TranSubType);
                Int64 intTrnNo = 0;
                string strTranDate = DateTime.Now.ToString("yyyyMMdd");
                string strFinancialYear = FinancialYear.getFinancialYearByDate(strTranDate);
                int intStatusCode = 0;
                if (Convert.ToBoolean(_objMstMenu.ApprovalReq) == true)
                {
                    intStatusCode = 101;
                }
                if (_dtoCnfTranTypes != null)
                {
                    intTrnNo = _dalPdH.GetTranNo(TranType, _dtoCnfTranTypes.TRAN_SERIES, strFinancialYear);
                    if (intTrnNo == 1)
                    {
                        intTrnNo = CustomTranNo.GetCustomTranNo(TranType, _dtoCnfTranTypes.TRAN_SERIES, strTranDate);
                    }
                }

                bObj.DocType = _objMstMenu.VouType;
                bObj.TrnDate = strTranDate;
                //bObj.TrnNo = intTrnNo;
                bObj.TrnSubType = TranSubType;
                bObj.StatusCode = intStatusCode;
                bObj.AmendNo = 0;

                foreach(PartPrice item in bObj.LstPartPriceH)
                {
                    item.TrnNo = intTrnNo;
                    intTrnNo++;
                }

                long result = 0;
                result = await Task.Run(() => { return insert(bObj, 1); });
                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


    }
}
