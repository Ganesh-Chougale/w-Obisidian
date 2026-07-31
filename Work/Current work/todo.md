1. modal logo & close 
```csharp
<div class="modal fade" id="RTCurMonthVsLast5MonthRejFMData" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg margin-top-5 margin-bottom-5" style="padding: 10px; width : 75vw;">
        <div class="modal-content">

            <div class="modal-header" style="height: 50px; padding:5px;">
                <div class="col-md-12" style="padding: 0px">
                    <div class="col-md-2" style="padding: 0px">
                        <img src="~/content/img/logo.png" style="height : 40px">
                    </div>
                    <div class="col-md-8" style="text-align: center; padding-top: 5px;">
                        <label style="font-size : 20px"><b> Material Demand Status </b></label>
                    </div>
                    <div class="col-md-2">
                        <button type="button" class="a-button-close" data-dismiss="modal" aria-hidden="true" style="margin-top:8px;">
                            <i class="fa fa-lg fa-fw fa-close"></i>
                        </button>
                    </div>
                </div>
            </div>

         
             <div class="modal-body" style="padding:15px;">
                <form class="form-horizontal">
                  
                    <div class="row">
                        <div class="col-md-10">                            
                            <div class="col-md-2">
                                <b>Material Name :</b>
                            </div>
                            <div class="col-md-8">
                                <label class="label-info" id="MatNameLabel"></label>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="col-md-4" style="text-align:center">
                                <b>Branch :</b>
                            </div>
                            <div class="col-md-8">
                                <label class="label-info" id="lblbranch">
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="row" >
                        <div class="col-md-4">
                                <h6>  Requested Material Pending for Following Purchase Order  </h6>
                        </div>                
                        </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-striped table-bordered table-hover" id="tblPORateDetailsList">
                                <thead>
                                    <tr>
                                        <th width="25%" class="text-center">Supplier Name</th>
                                        <th width="08%" class="text-center">Mdn No</th>
                                        <th width="08%" class="text-center">Mdn Date</th>
                                        <th width="08%" class="text-center">Po No</th>
                                        <th width="08%" class="text-center">Po Date</th>
                                        <th width="06%" class="text-center">Po Type</th>
                                        <th width="06%" class="text-center">Po Qty</th>
                                        <th width="06%" class="text-center">Balance Qty</th>
                                        <th width="05%" class="text-center">Po Validity</th>
                                        <th width="05%" class="text-center">Rate</th>
                                        <th width="05%" class="text-center">Disc Per</th>
                                        <th width="05%" class="text-center">Disc Rate</th>
                                        <th width="05%" class="text-center">Per</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-4">
                            <h6>  Mdn Pending for Purchase Order  </h6>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-striped table-bordered table-hover" id="tblMdnDetailsList">
                                <thead>
                                    <tr>
                                        <th width="40%" class="text-center">Supplier Name</th>
                                        <th width="12%" class="text-center">Mdn No</th>
                                        <th width="12%" class="text-center">Mdn Date</th>                                     
                                        <th width="10%" class="text-center">Qty</th>  
                                        <th width="10%" class="text-center">Rate</th>                                     
                                        <th width="12%" class="text-center">Crt By</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <h6>  Material Last Issue Ageing As OnDate : @curr_date </h6>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-striped table-bordered table-hover" id="tblLastIssueDetail">
                                <thead>
                                    <tr>
                                        <th rowspan="2" width="10%" class="text-center">Rate</th>
                                        <th rowspan="2" width="10%" class="text-center">Last Purchase</th>
                                        <th rowspan="2" width="10%" class="text-center">Last Issue Date</th>
                                        <th colspan="2" width="08%" class="text-center" style="background-color:yellow;color: #000000 ">Below 15 Days</th>
                                        <th colspan="2" width="08%" class="text-center" style="background-color:green">Below 15 to 30 Days</th>
                                        <th colspan="2" width="08%" class="text-center" style="background-color:red">Above 30 Days</th>
                                    </tr>
                                    <tr>                                      

                                        <th width="08%" class="text-center">Qty</th>
                                        <th width="08%" class="text-center">Amount</th>
                                        
                                        <th width="08%" class="text-center">Qty</th>
                                        <th width="08%" class="text-center">Amount</th>

                                        <th width="08%" class="text-center">Qty</th>
                                        <th width="08%" class="text-center">Amount</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>    
           
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

```  


2. Itemwise header in rectangle:
__________________________________________________

Item Name:
Item Code:
Material Category: (not implemented yet)
Current Stock:
Open PO:
In Transit:
Net Available
(Current + Pipeline) :
__________________________________________________

Item wise table headers
- Dept name 
- Days of Stock Left
- Consumption Trend
- Stock Movement
- Stock Signal
- Procurement Priority
- Action (Update button instead of Raise PR)


```csharp
<div class ="col-md-3">
    <label style="color:#000000 !important;" class ="label label-info" id="lable_1_Id" > ${data[0].MaterialName} </label>
</div>
```  

this giving label color to entire div, i want it limited to only text area

```csharp
<input style="width:100%; text-align:right;" oninput="validateDecimalInput(this)" type="text" class ="minQty" value="${item.MinQty}">

<input style="width:100%; text-align:right;" oninput="validateDecimalInput(this)" type="text" class ="maxQty" value="${item.MaxQty}">
```  