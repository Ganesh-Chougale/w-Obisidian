```csharp
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
    public class PackingDetails
    {
        public static ITrnPackingDetailsH _dalPdH;
        public static ITrnPackingDetailsI _dalPdI;
        public static ITrnPackingDetailsIBom _dalPdIBom;
        public static ITrnPackingDetailsIBomSup _dalPdIBomSup;
        public static ICnfTranTypes _dalCnfTranTypes;
        public static IPendingCastingPlanningOrder _dalPendingCastingPlanningOrder;

        public static int TranType = 911;
        public static int TranSubType = 10;
        public static int TranSeries = 11;
        public static int MenuDocNo = 91110;
        public static int MenuId = 80215;

        // H
        public Int64 TrnNo { get; set; }
        public string ShortTrnNo { get; set; }
        public string TrnDate { get; set; }
        public string FormattedTrnDate { get; set; }
        public int TrnSubType { get; set; }
        public int AmendNo { get; set; }
        public string DocType { get; set; }
        public int CustomerCode { get; set; }
        public string CustomerName { get; set; }
        public int SellerCompanyCode { get; set; }
        public string SellerCompanyName { get; set; }
        public int PackingDestination { get; set; }
        public int IsPriceBreakupAvailable { get; set; }
        public string EffectiveDate { get; set; }
        public string Remark { get; set; }
        public string CrtBy { get; set; }
        public string ChgBy { get; set; }
        public int IsOverSeas { get; set; }
        public string DeleteReason { get; set; }
        public int StatusCode { get; set; }
        public int MachningResponsibleName { get; set; }
        public int MachinningNorms { get; set; }
        public int RefMaterialCode { get; set; }
        public string CastingMaterialName { get; set; }
        public string SupplierName { get; set; }
        public int SupplierCode { get; set; }


        // I
        public int SrNo { get; set; }
        public int BomType { get; set; }
        public int MaterialCode { get; set; }
        public string MaterialName { get; set; }
        public int PerBoxPartQty { get; set; }

        // I BOM
        public decimal Quantity { get; set; }

        public string DrawingNo { get; set; }
        public int StockListGroupCode { get; set; }
        public string StockListGroupName { get; set; }
        public string MaterialUOM { get; set; }
        public decimal Rate { get; set; }

        // I List
        public IList<PackingDetailsI> LstPackingDetailsI { get; set; }
        public IList<PackingDetailsIBom> LstPackingDetailsIBom { get; set; }
        public IList<PackingDetailsIBomSup> LstPackingDetailsIBomSup { get; set; }


        //static PackingDetails()
        //{
        //    _dalCnfTranTypes = new DALCnfTranTypes();
        //    _dalPdH = new DALTrnPackingDetailsH();
        //    _dalPdI = new DALTrnPackingDetailsI();
        //    _dalPdIBom = new DALTrnPackingDetailsIBom();
        //    _dalPdIBomSup = new DALTrnPackingDetailsIBomSup();
        //}


        private static async Task<List<PackingDetails>> fillList(List<DTOTrnPackingDetailsH> dtoList)
        {
            try
            {
                List<PackingDetails> boList = new List<PackingDetails>();
                //List<AccountSubGlEntity> LstSupplierAccount = await AccountSubGlService.GetAllAsync();
                List<Company> LstSupplierAccount = Company.GetCompanyList();
                //List<Customer> LstCustomer = await Customer.GetAllAsync();
                List<CustomerAccountEntity> LstCustomer = await CustomerAccountService.GetCustomerListAsync();

                if (dtoList != null)
                {
                    boList = (from dtoObj in dtoList

                              join objSupplier in LstSupplierAccount
                              on dtoObj.SELLER_COMPANY_CODE equals objSupplier.CompanyId
                             // into item from objSupplier in item.DefaultIfEmpty()

                              join objCustomer in LstCustomer
                              on dtoObj.CUSTOMER_CODE equals objCustomer.SubGlAcNo
                              // into item1 from objCustomer in item1.DefaultIfEmpty()

                              select new PackingDetails()
                                {
                                    TrnNo = dtoObj.TRN_NO,
                                    ShortTrnNo = dtoObj.TRN_NO.ToString().Substring(3, 4) + "-" + dtoObj.TRN_NO.ToString().Substring(dtoObj.TRN_NO.ToString().Length - 6),
                                    TrnDate = dtoObj.TRN_DATE,
                                    FormattedTrnDate = DateUtility.getFormatedDate(dtoObj.TRN_DATE, 0),
                                    TrnSubType = dtoObj.TRN_SUB_TYPE,
                                    AmendNo = dtoObj.AMEND_NO,
                                    DocType = dtoObj.DOC_TYPE,
                                    CustomerCode = dtoObj.CUSTOMER_CODE,
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


        public static async Task<List<PackingDetails>> GetDateWiseAll(string strStartDate, string strEndDate)
        {
            try
            {
                _dalPdH = new DALTrnPackingDetailsH();
                List<PackingDetails> lst = await fillList(_dalPdH.GetDateWiseAll(strStartDate, strEndDate, TranType, TranSubType));
                return lst;
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }


        public static async Task<List<PackingDetails>> GetMaterialAutoFill(string searchString)
        {
            try
            {
                List<StockGroup> slgList = await StockGroup.GetAllAsync();
                List<MaterialsEntity> matList = await MaterialsService.GetMaterialAutoFillList(searchString);
                List<PackingDetails> lst = (
                                                from obj in slgList
                                                join mat in matList
                                                on obj.StockGroupCcode equals mat.StockListGroup
                                                select new PackingDetails
                                                {
                                                    MaterialCode = mat.MaterialCode,
                                                    MaterialName = mat.MaterialName
                                                }
                                             ).ToList();
                return lst;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static async Task<List<PackingDetails>> GetSupplierList()
        {
            try
            {
                List<AccountSubGlEntity> lstSuppliers = await AccountSubGlService.GetSubGlListAsync();
                List<PackingDetails> lst = lstSuppliers.Select(supplier => new PackingDetails
                                            {
                                                SupplierName = supplier.LongName,
                                                SupplierCode = supplier.SubGlAcNo
                                            })
                                            .ToList();

                return lst;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static async Task<PackingDetails> GetCreateRowDate(int intMaterialCode)
        {
            try
            {
                MaterialsEntity matObj = await MaterialsService.GetExistingAsync(intMaterialCode);
                LastPurchaseRate lprObj = await LastPurchaseRate.GetLastPurchaseRate(intMaterialCode);
                StockGroup stkgrpObj = await StockGroup.GetExisting(matObj.StockListGroup);
                PackingDetails bObj = new PackingDetails
                                    {
                                        MaterialCode = matObj.MaterialCode,
                                        MaterialName = matObj.MaterialName,
                                        DrawingNo = matObj.DrawingNo,
                                        StockListGroupName = stkgrpObj.LongName,
                                        MaterialUOM = matObj.MaterialUom,
                                        Rate = lprObj.Rate
                                    };

                return bObj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static async Task<PackingDetails> GetExisting(long TrnNo, int AmendNo)
        {
            try
            {
                _dalPdH = new DALTrnPackingDetailsH();
                DTOTrnPackingDetailsH dtoObj = await Task.Run(() => { return _dalPdH.GetExisting(TrnNo, AmendNo); });
                CustomerAccountEntity CustomerObj = await CustomerAccountService.GetExistingAsync(dtoObj.CUSTOMER_CODE);
                AccountSubGlEntity SupplierObj = await AccountSubGlService.GetExistingAsync(dtoObj.SELLER_COMPANY_CODE);
                Company CompanyObj = await Company.GetExisting(dtoObj.SELLER_COMPANY_CODE);

                return new PackingDetails()
                {
                    TrnNo = dtoObj.TRN_NO,
                    ShortTrnNo = dtoObj.TRN_NO.ToString().Substring(3, 4) + "-" + dtoObj.TRN_NO.ToString().Substring(dtoObj.TRN_NO.ToString().Length - 6),
                    TrnDate = dtoObj.TRN_DATE,
                    FormattedTrnDate = DateUtility.getFormatedDate(dtoObj.TRN_DATE, 0),
                    TrnSubType = dtoObj.TRN_SUB_TYPE,
                    AmendNo = dtoObj.AMEND_NO,
                    DocType = dtoObj.DOC_TYPE,
                    CustomerCode = dtoObj.CUSTOMER_CODE,
                    CustomerName = CustomerObj.LongName,
                    SellerCompanyCode = dtoObj.SELLER_COMPANY_CODE,
                    SellerCompanyName = CompanyObj.CompanyName,
                    PackingDestination = dtoObj.PACKING_DESTINATION,
                    IsPriceBreakupAvailable = dtoObj.IS_PRICE_BREAKUP_AVAILABLE,
                    EffectiveDate = dtoObj.EFFECTIVE_FROM,
                    Remark = dtoObj.REMARK,
                    CrtBy = dtoObj.CRT_BY ?? "",
                    ChgBy = dtoObj.CHG_BY ?? "",
                    IsOverSeas = CustomerObj.IsOverseas,
                    DeleteReason = dtoObj.DELETE_REASON,
                    StatusCode = dtoObj.STATUS_CODE,
                    LstPackingDetailsI = await PackingDetailsI.GetTrnNoWiseData(TrnNo, AmendNo),
                    LstPackingDetailsIBom = await PackingDetailsIBom.GetTrnNoWiseData(TrnNo, AmendNo),
                    LstPackingDetailsIBomSup = await PackingDetailsIBomSup.GetTrnNoWiseData(TrnNo, AmendNo)
                };
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        static long insert(PackingDetails bObj, int flag)
        {
            _dalPdH = new DALTrnPackingDetailsH();
            _dalPdI = new DALTrnPackingDetailsI();
            _dalPdIBom = new DALTrnPackingDetailsIBom();
            _dalPdIBomSup = new DALTrnPackingDetailsIBomSup();

            using (var scope = new TransactionScope())
            {
                try
                {
                    DTOTrnPackingDetailsH dtoObj_H = new DTOTrnPackingDetailsH()
                    {
                        TRN_NO = bObj.TrnNo,
                        TRN_DATE = bObj.TrnDate,
                        TRN_SUB_TYPE = bObj.TrnSubType,
                        AMEND_NO = bObj.AmendNo,
                        DOC_TYPE = bObj.DocType,
                        CUSTOMER_CODE = bObj.CustomerCode,
                        SELLER_COMPANY_CODE = bObj.SellerCompanyCode,
                        PACKING_DESTINATION = bObj.PackingDestination,
                        IS_PRICE_BREAKUP_AVAILABLE = bObj.IsPriceBreakupAvailable,
                        EFFECTIVE_FROM = DateUtility.getFormatedDate(bObj.EffectiveDate, 1),
                        REMARK = bObj.Remark,
                        CRT_BY = bObj.CrtBy,
                        CHG_BY = bObj.ChgBy,
                        STATUS_CODE = bObj.StatusCode
                    };
                    if (flag == 1)
                    {
                        _dalPdH.Create(dtoObj_H);
                    }
                    else if (flag == 2)
                    {
                        _dalPdI.DelPermenantTrnData(dtoObj_H.TRN_NO);
                        _dalPdIBom.DelPermenantTrnData(dtoObj_H.TRN_NO);
                        _dalPdIBomSup.DelPermenantTrnData(dtoObj_H.TRN_NO);
                        _dalPdH.Edit(dtoObj_H);
                    }
                    else if (flag == 3)
                    {
                        //_dalPdH.Approve(dtoObj_H);
                    }

                    int intISrNo = 1;
                    int intIBOMSrNo = 1;
                    int intIBOMSupSrNo = 1;
                    if (bObj.LstPackingDetailsI != null)
                    {
                        foreach (PackingDetailsI I_bo in bObj.LstPackingDetailsI)
                        {
                            DTOTrnPackingDetailsI _objI = new DTOTrnPackingDetailsI()
                            {
                                TRN_NO = bObj.TrnNo,
                                SR_NO = intISrNo,
                                TRN_DATE = bObj.TrnDate,
                                TRN_SUB_TYPE = bObj.TrnSubType,
                                AMEND_NO = bObj.AmendNo,
                                MATERIAL_CODE = I_bo.MaterialCode,
                                PER_BOX_PART_QTY = I_bo.PerBoxPartQty,
                                STATUS_CODE = bObj.StatusCode
                            };
                            _dalPdI.Create(_objI);
                            intISrNo++;

                        }

                        foreach (PackingDetailsIBom I_bom in bObj.LstPackingDetailsIBom)
                        {
                            DTOTrnPackingDetailsIBom objIBom = new DTOTrnPackingDetailsIBom()
                            {
                                TRN_NO = bObj.TrnNo,
                                SR_NO = intIBOMSrNo,
                                TRN_DATE = bObj.TrnDate,
                                TRN_SUB_TYPE = bObj.TrnSubType,
                                AMEND_NO = bObj.AmendNo,
                                BOM_TYPE = I_bom.BomType,
                                MATERIAL_CODE = I_bom.MaterialCode,
                                STATUS_CODE = bObj.StatusCode,
                                QUANTITY = I_bom.Quantity
                            };
                            _dalPdIBom.Create(objIBom);
                            intIBOMSrNo++;
                        }

                        foreach (PackingDetailsIBomSup I_bom_sup in bObj.LstPackingDetailsIBomSup)
                        {
                            DTOTrnPackingDetailsIBomSup objIBomSup = new DTOTrnPackingDetailsIBomSup()
                            {
                                TRN_NO = bObj.TrnNo,
                                SR_NO = intIBOMSupSrNo,
                                AMEND_NO = bObj.AmendNo,
                                TRN_DATE = bObj.TrnDate,
                                MATERIAL_CODE = I_bom_sup.MaterialCode,
                                SUB_GL_ACNO = I_bom_sup.SubGlAcNo,
                                SUPPLIER_PERCENTAGE = I_bom_sup.SupplierPercentage,
                                STATUS_CODE = bObj.StatusCode,
                            };
                            _dalPdIBomSup.Create(objIBomSup);
                            intIBOMSupSrNo++;
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



        public static async Task<long> Create(PackingDetails bObj)
        {
            try
            {
                MstMenu _objMstMenu = MstMenu.getMenuById(MenuId);
                _dalPdH = new DALTrnPackingDetailsH();
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
                bObj.TrnNo = intTrnNo;
                bObj.TrnSubType = TranSubType;
                bObj.StatusCode = intStatusCode;
                bObj.AmendNo = 0;

                long result = 0;
                result = await Task.Run(() => { return insert(bObj, 1); });
                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public static async Task<long> Edit(PackingDetails bObj)
        {
            try
            {
                MstMenu _objMstMenu = MstMenu.getMenuById(MenuId);
                bObj.DocType = _objMstMenu.VouType;
                bObj.TrnSubType = TranSubType;
                bObj.StatusCode = 0;
                long result = 0;
                result = await Task.Run(() => { return insert(bObj, 2); });
                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public static int GetConfigurationsCount()
        {
            try
            {
                _dalPdH = new DALTrnPackingDetailsH();
                int ConfigurationsCount = _dalPdH.GetConfigurationsCount();
                return ConfigurationsCount;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public static async Task<long> Delete(PackingDetails bObj)
        {
            try
            {
                long retStatus = 0;
                _dalPdH = new DALTrnPackingDetailsH();
                _dalPdI = new DALTrnPackingDetailsI();
                _dalPdIBom = new DALTrnPackingDetailsIBom();
                _dalPdIBomSup = new DALTrnPackingDetailsIBomSup();

                return retStatus = await Task.Run(() =>
                {
                    using (var scope = new TransactionScope())
                    {
                        DTOTrnPackingDetailsH dtoObj = new DTOTrnPackingDetailsH()
                        {
                            TRN_NO = bObj.TrnNo,
                            DELETE_REASON = bObj.DeleteReason,
                            CHG_BY = bObj.ChgBy
                        };
                        _dalPdH.Delete(dtoObj);
                        _dalPdI.Delete(dtoObj.TRN_NO, dtoObj.AMEND_NO);
                        _dalPdIBom.Delete(dtoObj.TRN_NO, dtoObj.AMEND_NO);
                        _dalPdIBomSup.Delete(dtoObj.TRN_NO, dtoObj.AMEND_NO);
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


        public static async Task<List<PackingDetails>> GetOrderList(int SubGlAcNo, int companyid)
        {
            try
            {
                _dalPdH = new DALTrnPackingDetailsH();
                List<DTOTrnPackingDetailsH> dtoOrderListForAmend = await Task.Run(() => { return _dalPdH.GetPendingPlanningList(SubGlAcNo, companyid); });
                List<PackingDetails> lstOrderListForAmend = new List<PackingDetails>();

                if (dtoOrderListForAmend != null)
                {

                    List<MaterialsEntity> dtoMstMaterials = await MaterialsService.GetMaterialFillList(dtoOrderListForAmend.Select(p => p.MATERIAL_CODE).Distinct().ToList());
                    List<MaterialsEntity> dtoCastMstMaterials = await MaterialsService.GetMaterialFillList(dtoOrderListForAmend.Select(p => p.REF_MATERIAL_CODE).Distinct().ToList());

                    lstOrderListForAmend = (from ordlst in dtoOrderListForAmend
                                            join mstmat in dtoMstMaterials on ordlst.MATERIAL_CODE equals mstmat.MaterialCode
                                            join castmat in dtoCastMstMaterials on ordlst.REF_MATERIAL_CODE equals castmat.MaterialCode
                                            select new PackingDetails
                                            {
                                                MaterialCode = ordlst.MATERIAL_CODE,
                                                MaterialName = mstmat.MaterialName,
                                                TrnNo = ordlst.TRN_NO,
                                                AmendNo = ordlst.AMEND_NO,
                                                MachningResponsibleName = ordlst.MACHNING_RESPONSIBLE_NAME,
                                                RefMaterialCode = ordlst.REF_MATERIAL_CODE,
                                                CastingMaterialName = castmat.MaterialName
                                            }).ToList();
                }
                return lstOrderListForAmend;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



    }
}

```  