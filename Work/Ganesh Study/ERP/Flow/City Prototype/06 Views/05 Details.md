### D:\ZanvarGroup\Source\ERP\webapp\Areas\Masters\Views\City\ `Details.cshtml`  
```cshtml
@using ZanvarGroup.Erp.Business.Masters
@model City

<div id="content">
    <article class="col-sm-12 col-md-12 col-lg-12">
        <div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-3" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-custombutton="false">
            <header>
                <span class="widget-icon"> <i class="fa fa-eye"></i> </span>
                <h2>City</h2>
            </header>
            @Html.AntiForgeryToken()
            @Html.ValidationBootstrap()
            <div>
                <div class="jarviswidget-editbox">
                </div>
                <div class="widget-body no-padding">
                    <form method="POST" id="city-form" class="smart-form client-form">
                        <fieldset>
                            <section class="col-md-12">
                                <label class="label">City Name</label>
                                <div class="col-md-5">
                                    <label class="input">

                                        <input type="text" name="CityName" id="CityName" placeholder="City Name" value="@Model.CityName" disabled="disabled" size="100" />
                                        <b class="tooltip tooltip-top-right">
                                            <i class="fa fa-warning txt-color-teal"></i>
                                            Please Enter City Name
                                        </b>
                                    </label>
                                </div>
                            </section>
                            <section class="col-md-12">
                                <label class="label">District Name</label>
                                <div class="col-md-5">
                                    <label class="input">

                                        <input type="text" name="DistrictName" id="DistrictName" placeholder="District Name" value="@Model.DistrictName" disabled="disabled" size="100" />
                                        <b class="tooltip tooltip-top-right">
                                            <i class="fa fa-warning txt-color-teal"></i>
                                            Please Enter District Name
                                        </b>
                                    </label>
                                </div>
                            </section>
                            <section class="col-md-12">
                                <label class="label">State Name</label>
                                <div class="col-md-5">
                                    <label class="input">

                                        <input type="text" name="StateName" id="StateName" placeholder="State Name" value="@Model.StateName" disabled="disabled" size="100" />
                                        <b class="tooltip tooltip-top-right">
                                            <i class="fa fa-warning txt-color-teal"></i>
                                            Please Enter State Name
                                        </b>
                                    </label>
                                </div>
                            </section>
                            <section class="col-md-12">
                                <label class="label">Nation Name</label>
                                <div class="col-md-5">
                                    <label class="input">

                                        <input type="text" name="NationName" id="NationName" placeholder="Nation Name" value="@Model.Nation" disabled="disabled" size="100" />
                                        <b class="tooltip tooltip-top-right">
                                            <i class="fa fa-warning txt-color-teal"></i>
                                            Please Enter Nation Name
                                        </b>
                                    </label>
                                </div>
                            </section>
                            <section class="col-md-12">
                                <label class="label">Distance</label>
                                <div class="col-md-2">
                                    <label class="input">

                                        <input type="text" class="number text-align-right" name="Distance" id="Distance" value="@Model.Distance" placeholder="Distance" maxlength="20" disabled="disabled"/>
                                        <b class="tooltip tooltip-top-right">
                                            <i class="fa fa-warning txt-color-teal"></i>
                                            Please Enter Distance
                                        </b>
                                    </label>
                                </div>
                            </section>
                            <section class="col-md-12">
                                <label class="label">Delete Reason</label>
                                <div class="col-md-6">
                                    <label class="input">

                                        <input type="text" class="form-control" name="DeleteReason" value="@Model.DeleteReason" id="DeleteReason" placeholder="Delete Reason" disabled="disabled" />
                                        <b class="tooltip tooltip-top-right">
                                            <i class="fa fa-warning txt-color-teal"></i>
                                            Delete Reason
                                        </b>
                                    </label>
                                </div>
                            </section>
                        </fieldset>
                        <footer>
                            <a class="btn btn-primary" href="/masters/city/index" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                <i class="fa fa-lg fa-fw fa-reply"></i>
                                Cancel
                            </a>
                        </footer>
                    </form>
                </div>
            </div>
        </div>
    </article>
</div>
```  