```csharp
@model IEnumerable<ZanvarGroup.Erp.Business.Masters.Department>
@{
    int row_num = 1;
}
<div id="content">
    <section id="widget-grid" class="">
        <div class="row">
            <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="jarviswidget jarviswidget-color-blueDark top-border" id="wid-id-1" data-widget-editbutton="false">
                    <div>
                        <div class="widget-body no-padding">
                            <table id="datatable_fixed_column" class="table table-striped table-bordered table-hover" width="100%">
                                <thead>
                                    <tr>
                                        <th style="width:04%;text-align:center">
                                            <label>
                                                <input type="checkbox" id="IsAllCheck" name="IsAllCheck">
                                            </label>
                                        </th>
                                        <th data-class="expand">Department Name</th>
                                        <th style="width:09%;text-align:center">Created By</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach (var item in Model)
                                    {
                                        <tr>
                                            <td style="text-align:center">
                                                <label>
                                                    <input type="checkbox" id="IsCheck@(row_num)" name="IsCheck@(row_num)">
                                                    <input id="Code@(row_num)" type="hidden" value="@item.DepartmentId">
                                                </label>
                                            </td>
                                            <td>
                                                <a href="Department/Approve?Code=@item.DepartmentId" data-ajax-update="#mainContent" data-ajax-mode="replace" data-ajax-method="GET" data-ajax="true">
                                                    @item.DepartmentName
                                                </a>
                                            </td>
                                            <td style="text-align:center">@item.CreatedBy</td>
                                        </tr>
                                    }
                                </tbody>
                            </table>
                        </div>
                        <div class="padding-bottom-50px">
                            <footer>
                                <a class="btn btn-success pull-right right-margin-10" id="btnapprove" href="javascript:void(0);">
                                    <i class="fa fa-lg fa-fw fa-check"></i>
                                    Approve
                                </a>
                            </footer>
                        </div>
                    </div>
                </div>
            </article>
        </div>
    </section>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $('#IsAllCheck').click(function (e) {
            var table = $(e.target).closest('table');
            $('td input:checkbox', table).prop('checked', this.checked);
        });

        $('#btnapprove').click(function (e) {
            var CodeList = [];
            $('#datatable_fixed_column >tbody >tr').each(function () {
                if ($('#datatable_fixed_column >tbody >tr').length !== 0) {
                    var code;
                    code = $(this).find("[id^=Code]").val();

                    if ($(this).find("[id^=IsCheck]").is(":checked")) {
                        CodeList.push(code);
                    }
                }
            });

            if (CodeList.length != 0) {
                var urlName = ' /masters/Department/ApproveMultiple';
                $.ajax({
                    async: false,
                    contentType: "application/json",
                    dataType: "json",
                    data: JSON.stringify(CodeList),
                    url: urlName,
                    type: "POST",
                    success: function (response, status, xhr) {
                        if (response == 0) {
                            var urlName = ' /masters/Department/ApprovalPending';
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
                    error: function (err) {
                        alert(err.toSource());
                        $("#mainContent").html(err);
                    }
                });
            }
            else {
                alert("Please select at least one record");
                return false;
            }
        });
    });
</script>
```  