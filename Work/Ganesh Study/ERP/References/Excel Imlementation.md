## Excel Button
- Excel Download button Implementation  
- excel button
- xl button  

References  
- materialmdnstatus\index.cshtml
- MaterialMdnStatusController/GetDbTypeWiseMaterialMdnData

1. JS 
```js
    // 2. use it in event trigger
    $("#btndownloadexcel").click(function (e) {
        e.preventDefault();
        fetchExcelData();
    });

    // 1. create function
    function fetchExcelData() {
        var matCode = $("#hfMatCode").val();

        if (matCode == "" || matCode == null) {
            $("#MatName").focus();
            $.smallBox({
                title: "Material Not selected",
                content: "please choose material first",
                color: "#C46A69",
                timeout: 4000,
            });
            return;
        }

        var dbType = $("input[name='MdnType']:checked").val();

        window.location.href = "MaterialMdnStatus/DownloadMaterialMdnStatusExcel?dbType=" + dbType + "&materialCode=" + matCode;
    }
```  

2. Controller
```csharp
        public async Task<ActionResult> DownloadMaterialMdnStatusExcel(int dbType, int materialCode)
        {
            try
            {
                //  1. data fetching by parameters
                int CompanyId = Convert.ToInt16(ConfigurationManager.AppSettings["CompanyId"].ToString());

                List <MaterialMdnStatus> lst = await MaterialMdnStatus.GetMaterialMdnData(CompanyId, dbType, materialCode);

                MaterialsEntity MatObj = await MaterialsService.GetExistingAsync(materialCode);

                string strMdnType = "";
                if(dbType == 0)
                {
                    strMdnType = "LIVE MDN";
                }else if (dbType == 1)
                {
                    strMdnType = "CLOSED MDN";
                }

                // 2. XL Tab Naming
                ExcelPackage Ep = new ExcelPackage();
                ExcelWorksheet sheet = Ep.Workbook.Worksheets.Add("Material MDN Dashboard");

                // 3. Info Rows
                sheet.Cells["A1"].Value = "Material Name :-";
                sheet.Cells["A1"].Style.Font.Bold = true;
                sheet.Cells["A1"].Style.Font.Size = 14;
                sheet.Cells["A2"].Value = "MDN Type :-";
                sheet.Cells["A2"].Style.Font.Bold = true;
                sheet.Cells["A2"].Style.Font.Size = 14;

                sheet.Cells["B1:H1"].Merge = true;
                sheet.Cells["B1:H1"].Value = MatObj.MaterialName;
                sheet.Cells["B1:H1"].Style.Font.Bold = true;
                sheet.Cells["B1:H1"].Style.Font.Size = 14;
                sheet.Cells["B1:H1"].Style.HorizontalAlignment = ExcelHorizontalAlignment.Left;

                sheet.Cells["B2:H2"].Merge = true;
                sheet.Cells["B2:H2"].Value = strMdnType;
                sheet.Cells["B2:H2"].Style.Font.Bold = true;
                sheet.Cells["B2:H2"].Style.Font.Size = 12;
                sheet.Cells["B2:H2"].Style.HorizontalAlignment = ExcelHorizontalAlignment.Left;

                // 4. Define column headers based on MDN type
                int colIndex = 1;
                int rowIndex = 4;

                // 5. Common headers for both types
                string[] commonHeaders = {
                                            "MDN No",
                                            "MDN Date",
                                            "Supplier Name",
                                            "MDN Crt By",
                                            "Qty",
                                            "Qutation Rate",
                                            "Rate Given By",
                                            "Rate Given Date",
                                            "Rate Approved By",
                                            "Rate Approved Date Time",
                                            "PO No",
                                            "PO Amend No",
                                            "PO Approved Date Time",
                                            "PO Crt By",
                                            "PO Approved By",
                                            "CRM No",
                                            "CRM Date",
                                            "Seller Name",
                                            "Hari-Om PO No",
                                            "Hari-Om PO Amend No",
                                            "Hari-Om PO Crt Date Time",
                                            "Hari-Om PO Crt By",
                                            "Hari-Om PO Approved By",
                                            "Hari-Om PO Approved Date Time",
                                            "Hari-Om Grn No",
                                            "Hari-Om Grn Amend No",
                                            "Hari-Om Grn Date Time",
                                            "Hari-Om Grn Qty",
                                            "Hari-Om Grn Crt By",
                                            "SO No",
                                            "SO Amend No",
                                            "SO Date Time",
                                            "SO Crt By",
                                            "SO Approved By",
                                            "SO Approved Date Time",
                                            "SI No",
                                            "SI Date Time",
                                            "SI Crt By",
                                            "SI Qty","Transport No",
                                            "Transport Date"
                                        };

                // 6. Additional header for conditional
                string[] closedMdnHeaders = { "GRN No", "GRN Date", "GRN Qty" };

                // 7. Common headers value implemenation
                foreach (string header in commonHeaders)
                {
                    sheet.Cells[rowIndex, colIndex].Value = header;
                    sheet.Cells[rowIndex, colIndex].Style.Fill.PatternType = ExcelFillStyle.Solid;
                    sheet.Cells[rowIndex, colIndex].Style.Fill.BackgroundColor.SetColor(Color.FromArgb(0, 112, 192));
                    sheet.Cells[rowIndex, colIndex].Style.Font.Color.SetColor(Color.White);
                    sheet.Cells[rowIndex, colIndex].Style.Font.Bold = true;
                    colIndex++;
                }

                // 7.1 Additional headers value implemenation
                if (dbType == 1) // 
                {
                    foreach (string header in closedMdnHeaders)
                    {
                        sheet.Cells[rowIndex, colIndex].Value = header;
                        sheet.Cells[rowIndex, colIndex].Style.Fill.PatternType = ExcelFillStyle.Solid;
                        sheet.Cells[rowIndex, colIndex].Style.Fill.BackgroundColor.SetColor(Color.FromArgb(0, 112, 192));
                        sheet.Cells[rowIndex, colIndex].Style.Font.Color.SetColor(Color.White);
                        sheet.Cells[rowIndex, colIndex].Style.Font.Bold = true;
                        colIndex++;
                    }
                }

                // 8. Populate data rows
                rowIndex = 5;
                foreach (var item in lst)
                {
                    colIndex = 1;

                    // 8.1 Common data
                    sheet.Cells[rowIndex, colIndex++].Value = item.MdnNo;
                    sheet.Cells[rowIndex, colIndex++].Value = item.MdnDate;
                    sheet.Cells[rowIndex, colIndex++].Value = item.SupplierName;
                    sheet.Cells[rowIndex, colIndex++].Value = item.CrtBy;
                    sheet.Cells[rowIndex, colIndex++].Value = item.IndentQty;
                    sheet.Cells[rowIndex, colIndex++].Value = item.QutationRate;
                    sheet.Cells[rowIndex, colIndex++].Value = item.RateGivenBy;
                    sheet.Cells[rowIndex, colIndex++].Value = item.MdnRateDate;
                    sheet.Cells[rowIndex, colIndex++].Value = item.MdnApprovedBy;
                    sheet.Cells[rowIndex, colIndex++].Value = item.MdnApprovedDateTime;
                    sheet.Cells[rowIndex, colIndex++].Value = item.PoNo;
                    sheet.Cells[rowIndex, colIndex++].Value = item.StrPoAmendNo;
                    sheet.Cells[rowIndex, colIndex++].Value = item.PoApprovedDateTime;
                    sheet.Cells[rowIndex, colIndex++].Value = item.PoCrtBy;
                    sheet.Cells[rowIndex, colIndex++].Value = item.PoApprovedBY;
                    sheet.Cells[rowIndex, colIndex++].Value = item.FormattedMapTrnNo;
                    sheet.Cells[rowIndex, colIndex++].Value = item.MapTrnDateTime;
                    sheet.Cells[rowIndex, colIndex++].Value = item.MapSellerName;
                    sheet.Cells[rowIndex, colIndex++].Value = item.HPoTrnNo;
                    sheet.Cells[rowIndex, colIndex++].Value = item.StrHPoAmendNo;
                    sheet.Cells[rowIndex, colIndex++].Value = item.HPoCrtDateTime;
                    sheet.Cells[rowIndex, colIndex++].Value = item.HPoCrtBy;
                    sheet.Cells[rowIndex, colIndex++].Value = item.HPoApprovedBy;
                    sheet.Cells[rowIndex, colIndex++].Value = item.HPoApprovedDateTime;
                    sheet.Cells[rowIndex, colIndex++].Value = item.HGrnNo;
                    sheet.Cells[rowIndex, colIndex++].Value = item.StrHGrnAmendNo;
                    sheet.Cells[rowIndex, colIndex++].Value = item.HGrnDateTime;
                    sheet.Cells[rowIndex, colIndex++].Value = item.HGrnQty;
                    sheet.Cells[rowIndex, colIndex++].Value = item.HGrnCrtBy;
                    sheet.Cells[rowIndex, colIndex++].Value = item.SoNo;
                    sheet.Cells[rowIndex, colIndex++].Value = item.StrSoAmendNo;
                    sheet.Cells[rowIndex, colIndex++].Value = item.SoCrtDateTime;
                    sheet.Cells[rowIndex, colIndex++].Value = item.SoCrtBy;
                    sheet.Cells[rowIndex, colIndex++].Value = item.SoApprovedBy;
                    sheet.Cells[rowIndex, colIndex++].Value = item.SoApprovedDateTime;
                    sheet.Cells[rowIndex, colIndex++].Value = item.SiTrnNo;
                    sheet.Cells[rowIndex, colIndex++].Value = item.SiCrtDateTime;
                    sheet.Cells[rowIndex, colIndex++].Value = item.SiCrtBy;
                    sheet.Cells[rowIndex, colIndex++].Value = item.SiQty;
                    sheet.Cells[rowIndex, colIndex++].Value = item.TransportNo;
                    sheet.Cells[rowIndex, colIndex++].Value = item.TransportDate;

                    // 8.2 Additional value implementation
                    if (dbType == 1)
                    {
                        sheet.Cells[rowIndex, colIndex++].Value = item.GrnNo;
                        sheet.Cells[rowIndex, colIndex++].Value = item.ShortGrnDate;
                        sheet.Cells[rowIndex, colIndex++].Value = item.GrnQty;
                    }

                    rowIndex++;
                }

                sheet.Cells[sheet.Dimension.Address].AutoFitColumns();

                // 9. naming xl sheet

                string fileName = "MaterialMdnStatus_" + DateTime.Now.ToString("dd-MM-yyyy-HH:mm:ss") + ".xlsx";
                byte[] fileBytes = Ep.GetAsByteArray();

                // 10. saving xl sheet
                return File(fileBytes, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", fileName);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
```  