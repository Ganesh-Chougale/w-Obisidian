### D:\ZanvarGroup\Source\ERP\webapp\Areas\Masters\Views\City\ `Create.cshtml`  
```cs
@using ZanvarGroup.Erp.Business.Masters
@model City

@{
    Layout = "";
}

<div id="content">
    <article class="col-sm-12 col-md-12 col-lg-12">
        <div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-3" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-custombutton="false">
            <header>
                <span class="widget-icon"> <i class="fa fa-edit"></i> </span>
                <h2>Create City</h2>
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

                                        <input type="text" name="CityName" id="CityName" placeholder="City Name" maxlength="50" size="100" />
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

                                        <input type="text" name="DistrictName" id="DistrictName" placeholder="District Name" maxlength="50" size="100" />
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

                                        <input type="text" name="StateName" id="StateName" placeholder="State Name" maxlength="50" size="100" />
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

                                        <input type="text" name="NationName" id="NationName" placeholder="Nation Name" maxlength="50" size="100" />
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
                                        <input type="text" class="number text-align-right" name="Distance" id="Distance" placeholder="Distance" maxlength="20" />
                                        <b class="tooltip tooltip-top-right">
                                            <i class="fa fa-warning txt-color-teal"></i>
                                            Please Enter Distance
                                        </b>
                                    </label>
                                </div>
                            </section>
                        </fieldset>
                        <footer>
                            <button type="submit" class="btn btn-success" id="save">
                                <i class="fa fa-lg fa-fw fa-save"></i>
                                Save
                            </button>
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
<script type="text/javascript">
    $(document).ready(function () {
        var form = $("#city-form");

        form.validate({
            rules: {
                CityName: {
                    required: true
                }
            },
            messages: {
                CityName: {
                    required: 'Please enter city name'
                }
            },
            errorPlacement: function (error, element) {
                error.insertAfter(element.parent());
            }
        });

        $("#save").click(function (e) {
            if (form.valid()) {
                var city = {
                    CityName: $("#CityName").val(),
                    DistrictName: $("#DistrictName").val(),
                    StateName: $("#StateName").val(),
                    Nation: $("#NationName").val(),
                    Distance: $("#Distance").val()
                };

                $("#mainContent").html('<div></div>');

                $.ajax({
                    url: 'city/create',
                    type: "POST",
                    async: false,
                    contentType: "application/json",
                    dataType: "json",
                    data: JSON.stringify(city),
                    success: function (response, status, xhr) {
                        if (response === 0) {
                            var urlName = 'city/index';
                            $.ajax({
                                url: urlName,
                                type: "GET",
                                success: function (response, status, xhr) {
                                    $("#mainContent").html(response);
                                },
                                error: function (err) {
                                    $("#mainContent").html(err);
                                }
                            });
                        }
                    },
                    error: function (error) {
                        alert("Error : " + error.toSource())
                        $("#mainContent").html("error");
                    }
                });
            }
        });
    });
</script>
```  