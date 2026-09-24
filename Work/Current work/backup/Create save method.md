```csharp
        [HttpPost]
        [AuthorizationFilter(MenuId = 29205, AccessType = "Create")]
        public async Task<ActionResult> CreateSave(PartPrice bObj)
        {
            try
            {
                int intcompany = Convert.ToInt16(ConfigurationManager.AppSettings["CompanyId"].ToString());
                bObj.SellerCompanyCode = intcompany;
                bObj.CrtBy = User.Identity.Name;

                Int64 trn_no = await PartPrice.Create(bObj);
                
                if (trn_no != 0)
                {
                    return Content("0");
                }
                else
                {
                    return Content("1");
                }
            }
            catch (Exception)
            {
                return Content("1");
            }
        }
```     