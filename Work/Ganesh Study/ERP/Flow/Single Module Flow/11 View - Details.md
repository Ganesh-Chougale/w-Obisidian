```csharp
@using ZanvarGroup.Erp.Business.Masters
@model Department

@{
    List<Department> deptlist = ViewData["parentdept"] as List<Department>;
}
<div id="content">
    <article class="col-sm-12 col-md-12 col-lg-12">
        <div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-3" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-custombutton="false">
            <header>
                <span class="widget-icon"> <i class="fa fa-eye"></i> </span>
                <h2>Department</h2>
            </header>
            @Html.AntiForgeryToken()
            @Html.ValidationBootstrap()
            <div>
                <div class="jarviswidget-editbox">
                </div>
                <div class="widget-body no-padding">
                    <form method="POST" id="dept-form" class="smart-form client-form">
                        <fieldset>
                            <section class="col-md-12">
                                <div class="col-md-2">
                                    <label class="label">Parent Department</label>
                                </div>
                                <div class="col-md-5">
                                    <label class="select">
                                        <select name="drpParentDept" id="drpParentDept" disabled="disabled" style="width:100%">
                                            <option value="0"> </option>
                                            @foreach (Department dept in deptlist)
                                            {
                                                <option value="@dept.DepartmentId">@dept.DepartmentName</option>
                                            }
                                        </select>
                                    </label>
                                </div>
                            </section>
                            <section class="col-md-12">
                                <div class="col-md-2">
                                    <label class="label">Department Name</label>
                                </div>
                                <div class="col-md-4">
                                    <label class="input">
                                        <input type="text" name="DepartmentName" id="DepartmentName" placeholder="Department Name" size="100" value="@Model.DepartmentName" disabled="disabled" />
                                        <b class="tooltip tooltip-top-right">
                                            <i class="fa fa-warning txt-color-teal"></i>
                                            Please Enter Department Name
                                        </b>
                                    </label>
                                </div>
                            </section>
                            <section class="col-md-12">
                                <div class="col-md-2">
                                    <label class="label">Department Short Name</label>
                                </div>
                                <div class="col-md-2">
                                    <label class="input">
                                        <input type="text" name="ShortName" id="ShortName" placeholder="Department Short Name" size="100" value="@Model.DepartmentShortName" disabled="disabled" />
                                        <b class="tooltip tooltip-top-right">
                                            <i class="fa fa-warning txt-color-teal"></i>
                                            Please Enter Department Short Name
                                        </b>
                                    </label>
                                </div>
                            </section>
                            <section class="col-md-12">
                                <div class="col-md-2">
                                    <label class="label">Delete Reason</label>
                                </div>
                                <div class="col-md-6">
                                    <label class="input">
                                        <input type="text" class="form-control" name="DeleteReason" value="@Model.DeleteReason" id="DeleteReason" placeholder="Delete Reason" disabled="disabled"/>
                                        <b class="tooltip tooltip-top-right">
                                            <i class="fa fa-warning txt-color-teal"></i>
                                            Delete Reason
                                        </b>
                                    </label>
                                </div>
                            </section>
                        </fieldset>
                        <footer>
                            <a class="btn btn-primary" href="/masters/Department/index" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
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
        $('#drpParentDept').select2();
        if(@Model.ParentDepartmentId != 0)
            $('#drpParentDept').select2().select2('val', @Model.ParentDepartmentId);
    });
</script>
```  