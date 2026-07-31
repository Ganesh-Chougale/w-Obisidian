```csharp
using System;
using System.Linq;
using System.Threading.Tasks;
using System.Collections.Generic;
using ZanvarGroup.Erp.Business.Base;
using ZanvarGroup.Erp.DTO.Transactions.Objects;
using ZanvarGroup.Erp.Business.Entities.Masters;
using ZanvarGroup.Erp.Business.Services.Masters;
using ZanvarGroup.Erp.DTO.Transactions.Interfaces;
using ZanvarGroup.Erp.DALDapper.Implementation.Transactions;

namespace ZanvarGroup.Erp.Business.Transactions.Material
{
    public class ToolStockConversionI
    {
        public Int64 TrnNo { get; set; }
        public string StrTrnNo { get; set; }
        public string ShortTrnNo { get; set; }
        public int SrNo { get; set; }
        public Int64 RefTrnNo { get; set; }
        public string StrRefTrnNo { get; set; }
        public string ShortRefTrnNo { get; set; }
        public int MaterialCode { get; set; }
        public string MaterialName { get; set; }
        public decimal GrnQty { get; set; }
        public decimal ConversionQty { get; set; }
        public int ScrapMaterialCode { get; set; }
        public string ScrapMaterialName { get; set; }
        public decimal MaterialWeight { get; set; }
        public decimal ConversionWt { get; set; }
        public int StatusCode { get; set; }
        public string GrnDate { get; set; }
        public string FormattedGrnDate { get; set; }
        public string PartyBillNo { get; set; }
        public string PartyBillDate { get; set; }
        public string FormattedPartyBillDate { get; set; }
        public int SubGlAcNo { get; set; }
        public string SupplierName { get; set; }



        public static async Task<List<ToolStockConversionI>> GetTrnNoWiseData(Int64 TrnNo)
        {
            try
            {
                ITrnToolStockConversionI interfaceObj = new DalTrnToolStockConversionI();

                List<ToolStockConversionI> lst = new List<ToolStockConversionI>();

                List<DtoTrnToolStockConversionI> dtoList = interfaceObj.GetExisting(TrnNo);

                //MaterialsEntity mat = await MaterialsService.GetExistingAsync(dtoObj.Select(x => x.MATERIAL_CODE).ToList());
                List<MaterialsEntity> matList = await MaterialsService.GetMaterialFillList(dtoList.Select(x => x.MATERIAL_CODE).ToList());
                List<MaterialsEntity> scrapMatList = await MaterialsService.GetMaterialFillList(dtoList.Select(x => x.SCRAP_MATERIAL_CODE).ToList());
                List<AccountSubGlEntity> supList = await AccountSubGlService.GetSubGlFillList(dtoList.Select(p => p.SUB_GL_ACNO).Distinct().ToList());

                if (dtoList.Count > 0)
                {

                    lst = (
                            from obj in dtoList

                            join mat in matList
                            on obj.MATERIAL_CODE equals mat.MaterialCode

                            join scrapMat in scrapMatList
                            on obj.SCRAP_MATERIAL_CODE equals scrapMat.MaterialCode

                            join supObj in supList
                            on obj.SUB_GL_ACNO equals supObj.SubGlAcNo


                            select new ToolStockConversionI
                                      {
                                        TrnNo = obj.TRN_NO,
                                        StrTrnNo = obj.TRN_NO.ToString(),
                                        ShortTrnNo = obj.TRN_NO.ToString().Substring(3, 4) + "-" + obj.TRN_NO.ToString().Substring(obj.TRN_NO.ToString().Length - 6),
                                        SrNo = obj.SR_NO,
                                        RefTrnNo = obj.REF_TRN_NO,
                                        StrRefTrnNo = obj.REF_TRN_NO.ToString(),
                                        ShortRefTrnNo = obj.REF_TRN_NO.ToString().Substring(3, 4) + "-" + obj.REF_TRN_NO.ToString().Substring(obj.REF_TRN_NO.ToString().Length - 6),
                                        MaterialCode = obj.MATERIAL_CODE,
                                        MaterialName = mat.MaterialName,
                                        GrnQty = obj.GRN_QTY,
                                        ConversionQty = obj.CONVERSION_QTY,
                                        ScrapMaterialCode = obj.SCRAP_MATERIAL_CODE,
                                        ScrapMaterialName = scrapMat.MaterialName,
                                        MaterialWeight = obj.MATERIAL_WEIGHT,
                                        ConversionWt = obj.CONVERSION_WEIGHT,
                                        StatusCode = obj.STATUS_CODE,
                                        GrnDate = obj.GRN_DATE,
                                        FormattedGrnDate = DateUtility.getFormatedDate(obj.GRN_DATE, 0),
                                        PartyBillNo = obj.PARTY_BILL_NO,
                                        PartyBillDate = obj.PARTY_BILL_DATE,
                                        FormattedPartyBillDate = DateUtility.getFormatedDate(obj.PARTY_BILL_DATE, 0),
                                        SubGlAcNo = obj.SUB_GL_ACNO,
                                        SupplierName = supObj.LongName
                            }).ToList();
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