```html


<section class="col-md-12">
                                <div class=" TABLE_DETAILS_CSS margin-bottom-5" style="overflow:hidden;position:relative;height:70vh">
                                    <table class="table table-striped table-bordered" id="tblAttendance" style="position: relative;">
                                        <thead>
                                            <tr>
                                                <th width="20px" class="text-center">Sr. No.</th>
                                                <th width="60px" class="text-center">Date</th>
                                                <th width="70px" class="text-center">Shift</th>
                                                <th width="60px" class="text-center">In Time</th>
                                                <th width="60px" class="text-center">Out Time</th>
                                                <th width="78px" class="text-center">Actual In</th>
                                                <th width="45px" class="text-center">Actual In Time</th>
                                                <th width="78px" class="text-center">Actual Out</th>
                                                <th width="48px" class="text-center">Actual Out Time</th>
                                                <th width="45px" class="text-center">Early In</th>
                                                <th width="45px" class="text-center">Early Out</th>
                                                <th width="45px" class="text-center">Late In</th>
                                                <th width="45px" class="text-center">Late Out</th>
                                                <th width="45px" class="text-center">Work Time</th>
                                                <th width="65px" class="text-center">Over Time</th>
                                                <th width="120px" class="text-center">Attendance</th>
                                                <th width="120px" class="text-center">Department</th>
                                            </tr>
                                        </thead>
                                    </table>
                                    <div class="tblFixHeaderFooter">
                                        <table id="table_list" class="table table-striped table-bordered table-hover" width="100%">
                                            <tbody>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            1
                                                        </td>
                                                        <td width="60px" style="">
                                                            01 Jul 2026
                                                            <br>
                                                            Wednesday
                                                            <input id="AttendanceDate1" type="hidden" value="01 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift1" id="ddlShift1" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            01 Jul 2026 09:30
                                                            <input id="StandardIn1" type="hidden" value="01 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            01 Jul 2026 18:00
                                                            <input id="StandardOut1" type="hidden" value="01 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn1" name="ActualIn1" type="text" value="01 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime1" name="ActualInTime1" type="text" value="09:32" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut1" name="ActualOut1" type="text" value="01 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime1" name="ActualOutTime1" type="text" value="18:05" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn1" name="EarlyIn1" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut1" name="EarlyOut1" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn1" name="LateIn1" type="text" value="00:02" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut1" name="LateOut1" type="text" value="00:05" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks1" name="ActualWorks1" type="text" value="08:33" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime1" name="OverTime1" type="text" value="00:03" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt1" name="IsOt1" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode1" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-2">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen2" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-2" id="s2id_autogen2" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen2_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-2" id="s2id_autogen2_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-2">   </ul></div></div><select name="AttendanceTypeCode1" id="AttendanceTypeCode1" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode1" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-3">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen3" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-3" id="s2id_autogen3" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen3_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-3" id="s2id_autogen3_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-3">   </ul></div></div><select name="DepartmentCode1" id="DepartmentCode1" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode1").select2();
                                                                $("#DepartmentCode1").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt1').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            2
                                                        </td>
                                                        <td width="60px" style="">
                                                            02 Jul 2026
                                                            <br>
                                                            Thursday
                                                            <input id="AttendanceDate2" type="hidden" value="02 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift2" id="ddlShift2" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            02 Jul 2026 09:30
                                                            <input id="StandardIn2" type="hidden" value="02 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            02 Jul 2026 18:00
                                                            <input id="StandardOut2" type="hidden" value="02 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn2" name="ActualIn2" type="text" value="02 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime2" name="ActualInTime2" type="text" value="09:38" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut2" name="ActualOut2" type="text" value="02 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime2" name="ActualOutTime2" type="text" value="18:10" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn2" name="EarlyIn2" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut2" name="EarlyOut2" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn2" name="LateIn2" type="text" value="00:08" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut2" name="LateOut2" type="text" value="00:10" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks2" name="ActualWorks2" type="text" value="08:32" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime2" name="OverTime2" type="text" value="00:02" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt2" name="IsOt2" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode2" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-4">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen4" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-4" id="s2id_autogen4" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen4_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-4" id="s2id_autogen4_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-4">   </ul></div></div><select name="AttendanceTypeCode2" id="AttendanceTypeCode2" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode2" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-5">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen5" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-5" id="s2id_autogen5" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen5_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-5" id="s2id_autogen5_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-5">   </ul></div></div><select name="DepartmentCode2" id="DepartmentCode2" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode2").select2();
                                                                $("#DepartmentCode2").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt2').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            3
                                                        </td>
                                                        <td width="60px" style="">
                                                            03 Jul 2026
                                                            <br>
                                                            Friday
                                                            <input id="AttendanceDate3" type="hidden" value="03 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift3" id="ddlShift3" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            03 Jul 2026 09:30
                                                            <input id="StandardIn3" type="hidden" value="03 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            03 Jul 2026 18:00
                                                            <input id="StandardOut3" type="hidden" value="03 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn3" name="ActualIn3" type="text" value="03 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime3" name="ActualInTime3" type="text" value="09:34" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut3" name="ActualOut3" type="text" value="03 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime3" name="ActualOutTime3" type="text" value="18:11" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn3" name="EarlyIn3" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut3" name="EarlyOut3" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn3" name="LateIn3" type="text" value="00:04" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut3" name="LateOut3" type="text" value="00:11" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks3" name="ActualWorks3" type="text" value="08:37" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime3" name="OverTime3" type="text" value="00:07" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt3" name="IsOt3" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode3" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-6">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen6" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-6" id="s2id_autogen6" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen6_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-6" id="s2id_autogen6_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-6">   </ul></div></div><select name="AttendanceTypeCode3" id="AttendanceTypeCode3" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode3" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-7">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen7" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-7" id="s2id_autogen7" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen7_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-7" id="s2id_autogen7_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-7">   </ul></div></div><select name="DepartmentCode3" id="DepartmentCode3" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode3").select2();
                                                                $("#DepartmentCode3").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt3').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            4
                                                        </td>
                                                        <td width="60px" style="">
                                                            04 Jul 2026
                                                            <br>
                                                            Saturday
                                                            <input id="AttendanceDate4" type="hidden" value="04 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift4" id="ddlShift4" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            04 Jul 2026 09:30
                                                            <input id="StandardIn4" type="hidden" value="04 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            04 Jul 2026 18:00
                                                            <input id="StandardOut4" type="hidden" value="04 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn4" name="ActualIn4" type="text" value="04 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime4" name="ActualInTime4" type="text" value="09:27" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut4" name="ActualOut4" type="text" value="04 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime4" name="ActualOutTime4" type="text" value="18:04" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn4" name="EarlyIn4" type="text" value="00:03" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut4" name="EarlyOut4" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn4" name="LateIn4" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut4" name="LateOut4" type="text" value="00:04" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks4" name="ActualWorks4" type="text" value="08:37" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime4" name="OverTime4" type="text" value="00:04" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt4" name="IsOt4" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode4" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-8">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen8" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-8" id="s2id_autogen8" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen8_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-8" id="s2id_autogen8_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-8">   </ul></div></div><select name="AttendanceTypeCode4" id="AttendanceTypeCode4" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode4" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-9">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen9" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-9" id="s2id_autogen9" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen9_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-9" id="s2id_autogen9_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-9">   </ul></div></div><select name="DepartmentCode4" id="DepartmentCode4" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode4").select2();
                                                                $("#DepartmentCode4").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt4').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            5
                                                        </td>
                                                        <td width="60px" style="background-color:orange">
                                                            05 Jul 2026
                                                            <br>
                                                            Sunday
                                                            <input id="AttendanceDate5" type="hidden" value="05 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift5" id="ddlShift5" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            05 Jul 2026 09:30
                                                            <input id="StandardIn5" type="hidden" value="05 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            05 Jul 2026 18:00
                                                            <input id="StandardOut5" type="hidden" value="05 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn5" name="ActualIn5" type="text" value="05 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime5" name="ActualInTime5" type="text" value="09:36" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut5" name="ActualOut5" type="text" value="05 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime5" name="ActualOutTime5" type="text" value="18:11" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn5" name="EarlyIn5" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut5" name="EarlyOut5" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn5" name="LateIn5" type="text" value="00:06" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut5" name="LateOut5" type="text" value="00:11" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks5" name="ActualWorks5" type="text" value="08:35" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime5" name="OverTime5" type="text" value="00:05" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt5" name="IsOt5" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="background-color:orange">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode5" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-10">Half Debit</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen10" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-10" id="s2id_autogen10" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen10_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-10" id="s2id_autogen10_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-10">   </ul></div></div><select name="AttendanceTypeCode5" id="AttendanceTypeCode5" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option selected="" value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode5" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-11">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen11" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-11" id="s2id_autogen11" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen11_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-11" id="s2id_autogen11_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-11">   </ul></div></div><select name="DepartmentCode5" id="DepartmentCode5" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode5").select2();
                                                                $("#DepartmentCode5").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt5').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            6
                                                        </td>
                                                        <td width="60px" style="background-color:red">
                                                            06 Jul 2026
                                                            <br>
                                                            Monday
                                                            <input id="AttendanceDate6" type="hidden" value="06 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift6" id="ddlShift6" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            06 Jul 2026 09:30
                                                            <input id="StandardIn6" type="hidden" value="06 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            06 Jul 2026 18:00
                                                            <input id="StandardOut6" type="hidden" value="06 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn6" name="ActualIn6" type="text" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime6" name="ActualInTime6" type="text" value="" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut6" name="ActualOut6" type="text" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime6" name="ActualOutTime6" type="text" value="" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn6" name="EarlyIn6" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut6" name="EarlyOut6" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn6" name="LateIn6" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut6" name="LateOut6" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks6" name="ActualWorks6" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime6" name="OverTime6" type="text" value="00:00" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt6" name="IsOt6" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="background-color:red">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode6" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-12">Weekly Off</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen12" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-12" id="s2id_autogen12" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen12_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-12" id="s2id_autogen12_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-12">   </ul></div></div><select name="AttendanceTypeCode6" id="AttendanceTypeCode6" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option selected="" value="1010000019">Weekly Off</option>
                                                                        <option value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode6" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-13">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen13" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-13" id="s2id_autogen13" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen13_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-13" id="s2id_autogen13_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-13">   </ul></div></div><select name="DepartmentCode6" id="DepartmentCode6" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode6").select2();
                                                                $("#DepartmentCode6").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt6').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            7
                                                        </td>
                                                        <td width="60px" style="">
                                                            07 Jul 2026
                                                            <br>
                                                            Tuesday
                                                            <input id="AttendanceDate7" type="hidden" value="07 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift7" id="ddlShift7" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            07 Jul 2026 09:30
                                                            <input id="StandardIn7" type="hidden" value="07 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            07 Jul 2026 18:00
                                                            <input id="StandardOut7" type="hidden" value="07 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn7" name="ActualIn7" type="text" value="07 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime7" name="ActualInTime7" type="text" value="09:29" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut7" name="ActualOut7" type="text" value="07 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime7" name="ActualOutTime7" type="text" value="18:03" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn7" name="EarlyIn7" type="text" value="00:01" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut7" name="EarlyOut7" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn7" name="LateIn7" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut7" name="LateOut7" type="text" value="00:03" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks7" name="ActualWorks7" type="text" value="08:34" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime7" name="OverTime7" type="text" value="00:03" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt7" name="IsOt7" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode7" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-14">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen14" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-14" id="s2id_autogen14" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen14_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-14" id="s2id_autogen14_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-14">   </ul></div></div><select name="AttendanceTypeCode7" id="AttendanceTypeCode7" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode7" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-15">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen15" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-15" id="s2id_autogen15" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen15_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-15" id="s2id_autogen15_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-15">   </ul></div></div><select name="DepartmentCode7" id="DepartmentCode7" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode7").select2();
                                                                $("#DepartmentCode7").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt7').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            8
                                                        </td>
                                                        <td width="60px" style="">
                                                            08 Jul 2026
                                                            <br>
                                                            Wednesday
                                                            <input id="AttendanceDate8" type="hidden" value="08 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift8" id="ddlShift8" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            08 Jul 2026 09:30
                                                            <input id="StandardIn8" type="hidden" value="08 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            08 Jul 2026 18:00
                                                            <input id="StandardOut8" type="hidden" value="08 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn8" name="ActualIn8" type="text" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime8" name="ActualInTime8" type="text" value="" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut8" name="ActualOut8" type="text" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime8" name="ActualOutTime8" type="text" value="" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn8" name="EarlyIn8" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut8" name="EarlyOut8" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn8" name="LateIn8" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut8" name="LateOut8" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks8" name="ActualWorks8" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime8" name="OverTime8" type="text" value="00:00" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt8" name="IsOt8" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode8" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-16">Absent Day</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen16" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-16" id="s2id_autogen16" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen16_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-16" id="s2id_autogen16_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-16">   </ul></div></div><select name="AttendanceTypeCode8" id="AttendanceTypeCode8" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option selected="" value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode8" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-17">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen17" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-17" id="s2id_autogen17" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen17_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-17" id="s2id_autogen17_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-17">   </ul></div></div><select name="DepartmentCode8" id="DepartmentCode8" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode8").select2();
                                                                $("#DepartmentCode8").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt8').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            9
                                                        </td>
                                                        <td width="60px" style="">
                                                            09 Jul 2026
                                                            <br>
                                                            Thursday
                                                            <input id="AttendanceDate9" type="hidden" value="09 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift9" id="ddlShift9" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            09 Jul 2026 09:30
                                                            <input id="StandardIn9" type="hidden" value="09 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            09 Jul 2026 18:00
                                                            <input id="StandardOut9" type="hidden" value="09 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn9" name="ActualIn9" type="text" value="09 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime9" name="ActualInTime9" type="text" value="09:25" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut9" name="ActualOut9" type="text" value="09 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime9" name="ActualOutTime9" type="text" value="18:01" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn9" name="EarlyIn9" type="text" value="00:05" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut9" name="EarlyOut9" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn9" name="LateIn9" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut9" name="LateOut9" type="text" value="00:01" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks9" name="ActualWorks9" type="text" value="08:36" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime9" name="OverTime9" type="text" value="00:01" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt9" name="IsOt9" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode9" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-18">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen18" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-18" id="s2id_autogen18" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen18_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-18" id="s2id_autogen18_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-18">   </ul></div></div><select name="AttendanceTypeCode9" id="AttendanceTypeCode9" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode9" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-19">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen19" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-19" id="s2id_autogen19" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen19_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-19" id="s2id_autogen19_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-19">   </ul></div></div><select name="DepartmentCode9" id="DepartmentCode9" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode9").select2();
                                                                $("#DepartmentCode9").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt9').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            10
                                                        </td>
                                                        <td width="60px" style="">
                                                            10 Jul 2026
                                                            <br>
                                                            Friday
                                                            <input id="AttendanceDate10" type="hidden" value="10 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift10" id="ddlShift10" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            10 Jul 2026 09:30
                                                            <input id="StandardIn10" type="hidden" value="10 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            10 Jul 2026 18:00
                                                            <input id="StandardOut10" type="hidden" value="10 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn10" name="ActualIn10" type="text" value="10 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime10" name="ActualInTime10" type="text" value="09:27" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut10" name="ActualOut10" type="text" value="10 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime10" name="ActualOutTime10" type="text" value="18:03" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn10" name="EarlyIn10" type="text" value="00:03" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut10" name="EarlyOut10" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn10" name="LateIn10" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut10" name="LateOut10" type="text" value="00:03" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks10" name="ActualWorks10" type="text" value="08:36" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime10" name="OverTime10" type="text" value="00:03" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt10" name="IsOt10" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode10" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-20">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen20" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-20" id="s2id_autogen20" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen20_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-20" id="s2id_autogen20_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-20">   </ul></div></div><select name="AttendanceTypeCode10" id="AttendanceTypeCode10" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode10" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-21">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen21" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-21" id="s2id_autogen21" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen21_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-21" id="s2id_autogen21_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-21">   </ul></div></div><select name="DepartmentCode10" id="DepartmentCode10" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode10").select2();
                                                                $("#DepartmentCode10").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt10').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            11
                                                        </td>
                                                        <td width="60px" style="">
                                                            11 Jul 2026
                                                            <br>
                                                            Saturday
                                                            <input id="AttendanceDate11" type="hidden" value="11 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift11" id="ddlShift11" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            11 Jul 2026 09:30
                                                            <input id="StandardIn11" type="hidden" value="11 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            11 Jul 2026 18:00
                                                            <input id="StandardOut11" type="hidden" value="11 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn11" name="ActualIn11" type="text" value="11 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime11" name="ActualInTime11" type="text" value="09:33" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut11" name="ActualOut11" type="text" value="11 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime11" name="ActualOutTime11" type="text" value="18:04" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn11" name="EarlyIn11" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut11" name="EarlyOut11" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn11" name="LateIn11" type="text" value="00:03" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut11" name="LateOut11" type="text" value="00:04" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks11" name="ActualWorks11" type="text" value="08:31" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime11" name="OverTime11" type="text" value="00:01" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt11" name="IsOt11" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode11" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-22">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen22" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-22" id="s2id_autogen22" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen22_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-22" id="s2id_autogen22_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-22">   </ul></div></div><select name="AttendanceTypeCode11" id="AttendanceTypeCode11" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode11" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-23">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen23" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-23" id="s2id_autogen23" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen23_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-23" id="s2id_autogen23_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-23">   </ul></div></div><select name="DepartmentCode11" id="DepartmentCode11" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode11").select2();
                                                                $("#DepartmentCode11").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt11').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            12
                                                        </td>
                                                        <td width="60px" style="">
                                                            12 Jul 2026
                                                            <br>
                                                            Sunday
                                                            <input id="AttendanceDate12" type="hidden" value="12 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift12" id="ddlShift12" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            12 Jul 2026 09:30
                                                            <input id="StandardIn12" type="hidden" value="12 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            12 Jul 2026 18:00
                                                            <input id="StandardOut12" type="hidden" value="12 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn12" name="ActualIn12" type="text" value="12 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime12" name="ActualInTime12" type="text" value="09:36" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut12" name="ActualOut12" type="text" value="12 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime12" name="ActualOutTime12" type="text" value="18:05" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn12" name="EarlyIn12" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut12" name="EarlyOut12" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn12" name="LateIn12" type="text" value="00:06" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut12" name="LateOut12" type="text" value="00:05" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks12" name="ActualWorks12" type="text" value="08:29" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime12" name="OverTime12" type="text" value="00:00" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt12" name="IsOt12" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode12" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-24">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen24" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-24" id="s2id_autogen24" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen24_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-24" id="s2id_autogen24_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-24">   </ul></div></div><select name="AttendanceTypeCode12" id="AttendanceTypeCode12" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode12" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-25">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen25" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-25" id="s2id_autogen25" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen25_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-25" id="s2id_autogen25_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-25">   </ul></div></div><select name="DepartmentCode12" id="DepartmentCode12" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode12").select2();
                                                                $("#DepartmentCode12").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt12').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            13
                                                        </td>
                                                        <td width="60px" style="background-color:red">
                                                            13 Jul 2026
                                                            <br>
                                                            Monday
                                                            <input id="AttendanceDate13" type="hidden" value="13 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift13" id="ddlShift13" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            13 Jul 2026 09:30
                                                            <input id="StandardIn13" type="hidden" value="13 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            13 Jul 2026 18:00
                                                            <input id="StandardOut13" type="hidden" value="13 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn13" name="ActualIn13" type="text" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime13" name="ActualInTime13" type="text" value="" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut13" name="ActualOut13" type="text" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime13" name="ActualOutTime13" type="text" value="" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn13" name="EarlyIn13" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut13" name="EarlyOut13" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn13" name="LateIn13" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut13" name="LateOut13" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks13" name="ActualWorks13" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime13" name="OverTime13" type="text" value="00:00" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt13" name="IsOt13" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="background-color:red">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode13" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-26">Weekly Off</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen26" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-26" id="s2id_autogen26" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen26_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-26" id="s2id_autogen26_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-26">   </ul></div></div><select name="AttendanceTypeCode13" id="AttendanceTypeCode13" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option selected="" value="1010000019">Weekly Off</option>
                                                                        <option value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode13" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-27">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen27" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-27" id="s2id_autogen27" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen27_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-27" id="s2id_autogen27_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-27">   </ul></div></div><select name="DepartmentCode13" id="DepartmentCode13" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode13").select2();
                                                                $("#DepartmentCode13").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt13').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            14
                                                        </td>
                                                        <td width="60px" style="">
                                                            14 Jul 2026
                                                            <br>
                                                            Tuesday
                                                            <input id="AttendanceDate14" type="hidden" value="14 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift14" id="ddlShift14" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            14 Jul 2026 09:30
                                                            <input id="StandardIn14" type="hidden" value="14 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            14 Jul 2026 18:00
                                                            <input id="StandardOut14" type="hidden" value="14 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn14" name="ActualIn14" type="text" value="14 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime14" name="ActualInTime14" type="text" value="09:27" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut14" name="ActualOut14" type="text" value="14 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime14" name="ActualOutTime14" type="text" value="18:03" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn14" name="EarlyIn14" type="text" value="00:03" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut14" name="EarlyOut14" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn14" name="LateIn14" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut14" name="LateOut14" type="text" value="00:03" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks14" name="ActualWorks14" type="text" value="08:36" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime14" name="OverTime14" type="text" value="00:03" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt14" name="IsOt14" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode14" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-28">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen28" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-28" id="s2id_autogen28" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen28_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-28" id="s2id_autogen28_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-28">   </ul></div></div><select name="AttendanceTypeCode14" id="AttendanceTypeCode14" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode14" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-29">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen29" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-29" id="s2id_autogen29" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen29_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-29" id="s2id_autogen29_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-29">   </ul></div></div><select name="DepartmentCode14" id="DepartmentCode14" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode14").select2();
                                                                $("#DepartmentCode14").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt14').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            15
                                                        </td>
                                                        <td width="60px" style="">
                                                            15 Jul 2026
                                                            <br>
                                                            Wednesday
                                                            <input id="AttendanceDate15" type="hidden" value="15 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift15" id="ddlShift15" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            15 Jul 2026 09:30
                                                            <input id="StandardIn15" type="hidden" value="15 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            15 Jul 2026 18:00
                                                            <input id="StandardOut15" type="hidden" value="15 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn15" name="ActualIn15" type="text" value="15 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime15" name="ActualInTime15" type="text" value="09:30" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut15" name="ActualOut15" type="text" value="15 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime15" name="ActualOutTime15" type="text" value="18:05" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn15" name="EarlyIn15" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut15" name="EarlyOut15" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn15" name="LateIn15" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut15" name="LateOut15" type="text" value="00:05" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks15" name="ActualWorks15" type="text" value="08:35" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime15" name="OverTime15" type="text" value="00:05" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt15" name="IsOt15" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode15" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-30">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen30" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-30" id="s2id_autogen30" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen30_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-30" id="s2id_autogen30_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-30">   </ul></div></div><select name="AttendanceTypeCode15" id="AttendanceTypeCode15" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode15" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-31">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen31" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-31" id="s2id_autogen31" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen31_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-31" id="s2id_autogen31_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-31">   </ul></div></div><select name="DepartmentCode15" id="DepartmentCode15" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode15").select2();
                                                                $("#DepartmentCode15").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt15').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            16
                                                        </td>
                                                        <td width="60px" style="">
                                                            16 Jul 2026
                                                            <br>
                                                            Thursday
                                                            <input id="AttendanceDate16" type="hidden" value="16 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift16" id="ddlShift16" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            16 Jul 2026 09:30
                                                            <input id="StandardIn16" type="hidden" value="16 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            16 Jul 2026 18:00
                                                            <input id="StandardOut16" type="hidden" value="16 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn16" name="ActualIn16" type="text" value="16 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime16" name="ActualInTime16" type="text" value="09:00" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut16" name="ActualOut16" type="text" value="16 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime16" name="ActualOutTime16" type="text" value="17:40" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn16" name="EarlyIn16" type="text" value="00:30" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut16" name="EarlyOut16" type="text" value="00:20" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn16" name="LateIn16" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut16" name="LateOut16" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks16" name="ActualWorks16" type="text" value="08:40" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime16" name="OverTime16" type="text" value="00:00" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt16" name="IsOt16" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode16" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-32">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen32" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-32" id="s2id_autogen32" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen32_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-32" id="s2id_autogen32_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-32">   </ul></div></div><select name="AttendanceTypeCode16" id="AttendanceTypeCode16" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode16" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-33">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen33" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-33" id="s2id_autogen33" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen33_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-33" id="s2id_autogen33_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-33">   </ul></div></div><select name="DepartmentCode16" id="DepartmentCode16" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode16").select2();
                                                                $("#DepartmentCode16").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt16').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            17
                                                        </td>
                                                        <td width="60px" style="">
                                                            17 Jul 2026
                                                            <br>
                                                            Friday
                                                            <input id="AttendanceDate17" type="hidden" value="17 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift17" id="ddlShift17" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            17 Jul 2026 09:30
                                                            <input id="StandardIn17" type="hidden" value="17 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            17 Jul 2026 18:00
                                                            <input id="StandardOut17" type="hidden" value="17 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn17" name="ActualIn17" type="text" value="17 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime17" name="ActualInTime17" type="text" value="09:29" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut17" name="ActualOut17" type="text" value="17 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime17" name="ActualOutTime17" type="text" value="18:03" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn17" name="EarlyIn17" type="text" value="00:01" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut17" name="EarlyOut17" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn17" name="LateIn17" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut17" name="LateOut17" type="text" value="00:03" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks17" name="ActualWorks17" type="text" value="08:34" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime17" name="OverTime17" type="text" value="00:03" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt17" name="IsOt17" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode17" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-34">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen34" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-34" id="s2id_autogen34" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen34_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-34" id="s2id_autogen34_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-34">   </ul></div></div><select name="AttendanceTypeCode17" id="AttendanceTypeCode17" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode17" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-35">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen35" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-35" id="s2id_autogen35" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen35_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-35" id="s2id_autogen35_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-35">   </ul></div></div><select name="DepartmentCode17" id="DepartmentCode17" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode17").select2();
                                                                $("#DepartmentCode17").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt17').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            18
                                                        </td>
                                                        <td width="60px" style="">
                                                            18 Jul 2026
                                                            <br>
                                                            Saturday
                                                            <input id="AttendanceDate18" type="hidden" value="18 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift18" id="ddlShift18" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            18 Jul 2026 09:30
                                                            <input id="StandardIn18" type="hidden" value="18 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            18 Jul 2026 18:00
                                                            <input id="StandardOut18" type="hidden" value="18 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn18" name="ActualIn18" type="text" value="18 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime18" name="ActualInTime18" type="text" value="09:24" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut18" name="ActualOut18" type="text" value="18 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime18" name="ActualOutTime18" type="text" value="18:18" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn18" name="EarlyIn18" type="text" value="00:06" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut18" name="EarlyOut18" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn18" name="LateIn18" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut18" name="LateOut18" type="text" value="00:18" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks18" name="ActualWorks18" type="text" value="08:54" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime18" name="OverTime18" type="text" value="00:18" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt18" name="IsOt18" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode18" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-36">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen36" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-36" id="s2id_autogen36" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen36_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-36" id="s2id_autogen36_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-36">   </ul></div></div><select name="AttendanceTypeCode18" id="AttendanceTypeCode18" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode18" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-37">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen37" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-37" id="s2id_autogen37" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen37_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-37" id="s2id_autogen37_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-37">   </ul></div></div><select name="DepartmentCode18" id="DepartmentCode18" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode18").select2();
                                                                $("#DepartmentCode18").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt18').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            19
                                                        </td>
                                                        <td width="60px" style="">
                                                            19 Jul 2026
                                                            <br>
                                                            Sunday
                                                            <input id="AttendanceDate19" type="hidden" value="19 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift19" id="ddlShift19" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            19 Jul 2026 09:30
                                                            <input id="StandardIn19" type="hidden" value="19 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            19 Jul 2026 18:00
                                                            <input id="StandardOut19" type="hidden" value="19 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn19" name="ActualIn19" type="text" value="19 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime19" name="ActualInTime19" type="text" value="09:03" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut19" name="ActualOut19" type="text" value="19 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime19" name="ActualOutTime19" type="text" value="17:39" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn19" name="EarlyIn19" type="text" value="00:27" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut19" name="EarlyOut19" type="text" value="00:21" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn19" name="LateIn19" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut19" name="LateOut19" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks19" name="ActualWorks19" type="text" value="08:36" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime19" name="OverTime19" type="text" value="00:00" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt19" name="IsOt19" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode19" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-38">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen38" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-38" id="s2id_autogen38" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen38_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-38" id="s2id_autogen38_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-38">   </ul></div></div><select name="AttendanceTypeCode19" id="AttendanceTypeCode19" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode19" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-39">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen39" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-39" id="s2id_autogen39" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen39_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-39" id="s2id_autogen39_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-39">   </ul></div></div><select name="DepartmentCode19" id="DepartmentCode19" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode19").select2();
                                                                $("#DepartmentCode19").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt19').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            20
                                                        </td>
                                                        <td width="60px" style="background-color:red">
                                                            20 Jul 2026
                                                            <br>
                                                            Monday
                                                            <input id="AttendanceDate20" type="hidden" value="20 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift20" id="ddlShift20" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            20 Jul 2026 09:30
                                                            <input id="StandardIn20" type="hidden" value="20 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            20 Jul 2026 18:00
                                                            <input id="StandardOut20" type="hidden" value="20 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn20" name="ActualIn20" type="text" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime20" name="ActualInTime20" type="text" value="" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut20" name="ActualOut20" type="text" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime20" name="ActualOutTime20" type="text" value="" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn20" name="EarlyIn20" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut20" name="EarlyOut20" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn20" name="LateIn20" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut20" name="LateOut20" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks20" name="ActualWorks20" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime20" name="OverTime20" type="text" value="00:00" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt20" name="IsOt20" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="background-color:red">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode20" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-40">Weekly Off</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen40" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-40" id="s2id_autogen40" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen40_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-40" id="s2id_autogen40_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-40">   </ul></div></div><select name="AttendanceTypeCode20" id="AttendanceTypeCode20" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option selected="" value="1010000019">Weekly Off</option>
                                                                        <option value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode20" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-41">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen41" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-41" id="s2id_autogen41" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen41_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-41" id="s2id_autogen41_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-41">   </ul></div></div><select name="DepartmentCode20" id="DepartmentCode20" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode20").select2();
                                                                $("#DepartmentCode20").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt20').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            21
                                                        </td>
                                                        <td width="60px" style="">
                                                            21 Jul 2026
                                                            <br>
                                                            Tuesday
                                                            <input id="AttendanceDate21" type="hidden" value="21 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift21" id="ddlShift21" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            21 Jul 2026 09:30
                                                            <input id="StandardIn21" type="hidden" value="21 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            21 Jul 2026 18:00
                                                            <input id="StandardOut21" type="hidden" value="21 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn21" name="ActualIn21" type="text" value="21 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime21" name="ActualInTime21" type="text" value="09:33" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut21" name="ActualOut21" type="text" value="21 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime21" name="ActualOutTime21" type="text" value="18:04" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn21" name="EarlyIn21" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut21" name="EarlyOut21" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn21" name="LateIn21" type="text" value="00:03" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut21" name="LateOut21" type="text" value="00:04" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks21" name="ActualWorks21" type="text" value="08:31" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime21" name="OverTime21" type="text" value="00:01" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt21" name="IsOt21" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode21" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-42">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen42" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-42" id="s2id_autogen42" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen42_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-42" id="s2id_autogen42_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-42">   </ul></div></div><select name="AttendanceTypeCode21" id="AttendanceTypeCode21" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode21" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-43">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen43" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-43" id="s2id_autogen43" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen43_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-43" id="s2id_autogen43_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-43">   </ul></div></div><select name="DepartmentCode21" id="DepartmentCode21" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode21").select2();
                                                                $("#DepartmentCode21").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt21').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            22
                                                        </td>
                                                        <td width="60px" style="">
                                                            22 Jul 2026
                                                            <br>
                                                            Wednesday
                                                            <input id="AttendanceDate22" type="hidden" value="22 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift22" id="ddlShift22" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            22 Jul 2026 09:30
                                                            <input id="StandardIn22" type="hidden" value="22 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            22 Jul 2026 18:00
                                                            <input id="StandardOut22" type="hidden" value="22 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn22" name="ActualIn22" type="text" value="22 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime22" name="ActualInTime22" type="text" value="09:29" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut22" name="ActualOut22" type="text" value="22 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime22" name="ActualOutTime22" type="text" value="18:01" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn22" name="EarlyIn22" type="text" value="00:01" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut22" name="EarlyOut22" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn22" name="LateIn22" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut22" name="LateOut22" type="text" value="00:01" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks22" name="ActualWorks22" type="text" value="08:32" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime22" name="OverTime22" type="text" value="00:01" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt22" name="IsOt22" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode22" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-44">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen44" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-44" id="s2id_autogen44" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen44_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-44" id="s2id_autogen44_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-44">   </ul></div></div><select name="AttendanceTypeCode22" id="AttendanceTypeCode22" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode22" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-45">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen45" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-45" id="s2id_autogen45" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen45_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-45" id="s2id_autogen45_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-45">   </ul></div></div><select name="DepartmentCode22" id="DepartmentCode22" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode22").select2();
                                                                $("#DepartmentCode22").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt22').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            23
                                                        </td>
                                                        <td width="60px" style="">
                                                            23 Jul 2026
                                                            <br>
                                                            Thursday
                                                            <input id="AttendanceDate23" type="hidden" value="23 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift23" id="ddlShift23" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            23 Jul 2026 09:30
                                                            <input id="StandardIn23" type="hidden" value="23 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            23 Jul 2026 18:00
                                                            <input id="StandardOut23" type="hidden" value="23 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn23" name="ActualIn23" type="text" value="23 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime23" name="ActualInTime23" type="text" value="09:32" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut23" name="ActualOut23" type="text" value="23 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime23" name="ActualOutTime23" type="text" value="18:03" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn23" name="EarlyIn23" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut23" name="EarlyOut23" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn23" name="LateIn23" type="text" value="00:02" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut23" name="LateOut23" type="text" value="00:03" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks23" name="ActualWorks23" type="text" value="08:31" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime23" name="OverTime23" type="text" value="00:01" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt23" name="IsOt23" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode23" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-46">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen46" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-46" id="s2id_autogen46" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen46_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-46" id="s2id_autogen46_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-46">   </ul></div></div><select name="AttendanceTypeCode23" id="AttendanceTypeCode23" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode23" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-47">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen47" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-47" id="s2id_autogen47" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen47_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-47" id="s2id_autogen47_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-47">   </ul></div></div><select name="DepartmentCode23" id="DepartmentCode23" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode23").select2();
                                                                $("#DepartmentCode23").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt23').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            24
                                                        </td>
                                                        <td width="60px" style="background-color:orange">
                                                            24 Jul 2026
                                                            <br>
                                                            Friday
                                                            <input id="AttendanceDate24" type="hidden" value="24 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift24" id="ddlShift24" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            24 Jul 2026 09:30
                                                            <input id="StandardIn24" type="hidden" value="24 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            24 Jul 2026 18:00
                                                            <input id="StandardOut24" type="hidden" value="24 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn24" name="ActualIn24" type="text" value="24 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime24" name="ActualInTime24" type="text" value="09:35" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut24" name="ActualOut24" type="text" value="24 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime24" name="ActualOutTime24" type="text" value="18:07" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn24" name="EarlyIn24" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut24" name="EarlyOut24" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn24" name="LateIn24" type="text" value="00:05" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut24" name="LateOut24" type="text" value="00:07" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks24" name="ActualWorks24" type="text" value="08:32" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime24" name="OverTime24" type="text" value="00:02" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt24" name="IsOt24" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="background-color:orange">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode24" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-48">Half Debit</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen48" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-48" id="s2id_autogen48" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen48_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-48" id="s2id_autogen48_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-48">   </ul></div></div><select name="AttendanceTypeCode24" id="AttendanceTypeCode24" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option selected="" value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode24" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-49">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen49" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-49" id="s2id_autogen49" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen49_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-49" id="s2id_autogen49_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-49">   </ul></div></div><select name="DepartmentCode24" id="DepartmentCode24" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode24").select2();
                                                                $("#DepartmentCode24").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt24').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            25
                                                        </td>
                                                        <td width="60px" style="">
                                                            25 Jul 2026
                                                            <br>
                                                            Saturday
                                                            <input id="AttendanceDate25" type="hidden" value="25 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift25" id="ddlShift25" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            25 Jul 2026 09:30
                                                            <input id="StandardIn25" type="hidden" value="25 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            25 Jul 2026 18:00
                                                            <input id="StandardOut25" type="hidden" value="25 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn25" name="ActualIn25" type="text" value="25 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime25" name="ActualInTime25" type="text" value="09:27" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut25" name="ActualOut25" type="text" value="25 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime25" name="ActualOutTime25" type="text" value="18:06" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn25" name="EarlyIn25" type="text" value="00:03" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut25" name="EarlyOut25" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn25" name="LateIn25" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut25" name="LateOut25" type="text" value="00:06" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks25" name="ActualWorks25" type="text" value="08:39" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime25" name="OverTime25" type="text" value="00:06" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt25" name="IsOt25" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode25" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-50">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen50" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-50" id="s2id_autogen50" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen50_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-50" id="s2id_autogen50_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-50">   </ul></div></div><select name="AttendanceTypeCode25" id="AttendanceTypeCode25" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode25" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-51">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen51" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-51" id="s2id_autogen51" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen51_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-51" id="s2id_autogen51_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-51">   </ul></div></div><select name="DepartmentCode25" id="DepartmentCode25" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode25").select2();
                                                                $("#DepartmentCode25").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt25').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            26
                                                        </td>
                                                        <td width="60px" style="">
                                                            26 Jul 2026
                                                            <br>
                                                            Sunday
                                                            <input id="AttendanceDate26" type="hidden" value="26 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift26" id="ddlShift26" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            26 Jul 2026 09:30
                                                            <input id="StandardIn26" type="hidden" value="26 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            26 Jul 2026 18:00
                                                            <input id="StandardOut26" type="hidden" value="26 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn26" name="ActualIn26" type="text" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime26" name="ActualInTime26" type="text" value="" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut26" name="ActualOut26" type="text" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime26" name="ActualOutTime26" type="text" value="" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn26" name="EarlyIn26" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut26" name="EarlyOut26" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn26" name="LateIn26" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut26" name="LateOut26" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks26" name="ActualWorks26" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime26" name="OverTime26" type="text" value="00:00" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt26" name="IsOt26" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode26" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-52">Absent Day</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen52" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-52" id="s2id_autogen52" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen52_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-52" id="s2id_autogen52_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-52">   </ul></div></div><select name="AttendanceTypeCode26" id="AttendanceTypeCode26" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option selected="" value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode26" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-53">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen53" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-53" id="s2id_autogen53" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen53_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-53" id="s2id_autogen53_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-53">   </ul></div></div><select name="DepartmentCode26" id="DepartmentCode26" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode26").select2();
                                                                $("#DepartmentCode26").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt26').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            27
                                                        </td>
                                                        <td width="60px" style="background-color:red">
                                                            27 Jul 2026
                                                            <br>
                                                            Monday
                                                            <input id="AttendanceDate27" type="hidden" value="27 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift27" id="ddlShift27" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            27 Jul 2026 09:30
                                                            <input id="StandardIn27" type="hidden" value="27 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            27 Jul 2026 18:00
                                                            <input id="StandardOut27" type="hidden" value="27 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn27" name="ActualIn27" type="text" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime27" name="ActualInTime27" type="text" value="" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut27" name="ActualOut27" type="text" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime27" name="ActualOutTime27" type="text" value="" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn27" name="EarlyIn27" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut27" name="EarlyOut27" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn27" name="LateIn27" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut27" name="LateOut27" type="text" value="00:00" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks27" name="ActualWorks27" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime27" name="OverTime27" type="text" value="00:00" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt27" name="IsOt27" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="background-color:red">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode27" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-54">Weekly Off</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen54" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-54" id="s2id_autogen54" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen54_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-54" id="s2id_autogen54_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-54">   </ul></div></div><select name="AttendanceTypeCode27" id="AttendanceTypeCode27" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option selected="" value="1010000019">Weekly Off</option>
                                                                        <option value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode27" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-55">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen55" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-55" id="s2id_autogen55" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen55_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-55" id="s2id_autogen55_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-55">   </ul></div></div><select name="DepartmentCode27" id="DepartmentCode27" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode27").select2();
                                                                $("#DepartmentCode27").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt27').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            28
                                                        </td>
                                                        <td width="60px" style="">
                                                            28 Jul 2026
                                                            <br>
                                                            Tuesday
                                                            <input id="AttendanceDate28" type="hidden" value="28 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift28" id="ddlShift28" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            28 Jul 2026 09:30
                                                            <input id="StandardIn28" type="hidden" value="28 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            28 Jul 2026 18:00
                                                            <input id="StandardOut28" type="hidden" value="28 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn28" name="ActualIn28" type="text" value="28 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime28" name="ActualInTime28" type="text" value="09:33" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut28" name="ActualOut28" type="text" value="28 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime28" name="ActualOutTime28" type="text" value="18:06" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn28" name="EarlyIn28" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut28" name="EarlyOut28" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn28" name="LateIn28" type="text" value="00:03" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut28" name="LateOut28" type="text" value="00:06" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks28" name="ActualWorks28" type="text" value="08:33" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime28" name="OverTime28" type="text" value="00:03" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt28" name="IsOt28" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode28" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-56">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen56" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-56" id="s2id_autogen56" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen56_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-56" id="s2id_autogen56_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-56">   </ul></div></div><select name="AttendanceTypeCode28" id="AttendanceTypeCode28" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode28" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-57">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen57" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-57" id="s2id_autogen57" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen57_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-57" id="s2id_autogen57_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-57">   </ul></div></div><select name="DepartmentCode28" id="DepartmentCode28" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode28").select2();
                                                                $("#DepartmentCode28").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt28').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="20px" class="text-center">
                                                            29
                                                        </td>
                                                        <td width="60px" style="">
                                                            29 Jul 2026
                                                            <br>
                                                            Wednesday
                                                            <input id="AttendanceDate29" type="hidden" value="29 Jul 2026">
                                                        </td>
                                                        <td width="70px" class="text-center">
                                                            <label class="select">
                                                                <select name="ddlShift29" id="ddlShift29" style="width:100%" disabled="disabled">
                                                                        <option value="0"></option>
                                                                        <option value="1010000001">01:00-08:00</option>
                                                                        <option value="1010000052">01:00-09:00</option>
                                                                        <option value="1010000002">02:00-08:00</option>
                                                                        <option value="1010000074">03:00-11:00</option>
                                                                        <option value="1010000069">05:00 -13:00</option>
                                                                        <option value="1010000039">06:00 - 14:30</option>
                                                                        <option value="1010000003">06:00-12:00</option>
                                                                        <option value="1010000004">06:00-14:00</option>
                                                                        <option value="1010000005">07:00-13:00</option>
                                                                        <option value="1010000006">07:00-15:00</option>
                                                                        <option value="1010000040">07:00-15:30</option>
                                                                        <option value="1010000068">07:00-19:00</option>
                                                                        <option value="1010000007">07:30-16:00</option>
                                                                        <option value="1010000008">07:45-14:15</option>
                                                                        <option value="1010000009">08:00-14:00</option>
                                                                        <option value="1010000010">08:00-15:00</option>
                                                                        <option value="1010000011">08:00-16:00</option>
                                                                        <option value="1010000012">08:00-16:30</option>
                                                                        <option value="1010000041">08:00-16:30</option>
                                                                        <option value="1010000013">08:00-20:00</option>
                                                                        <option value="1010000050">08:00-20:00</option>
                                                                        <option value="1010000076">08:30-16:30</option>
                                                                        <option value="1010000042">09:00- 17:30</option>
                                                                        <option value="1010000014">09:00-17:00</option>
                                                                        <option value="1010000015">09:00-17:30</option>
                                                                        <option value="1010000016">09:00-18:00</option>
                                                                        <option value="1010000075">09:00-19:00</option>
                                                                        <option value="1010000080">09:00-19:00</option>
                                                                        <option value="1010000056">09:00-20:00</option>
                                                                        <option value="1010000066">09:15-17:45</option>
                                                                        <option selected="" value="1010000017">09:30-18:00</option>
                                                                        <option value="1010000062">09:45-18:15</option>
                                                                        <option value="1010000063">10:00-06:00</option>
                                                                        <option value="1010000064">10:00-18:00</option>
                                                                        <option value="1010000018">10:00-18:30</option>
                                                                        <option value="1010000084">10:00-19:00</option>
                                                                        <option value="1010000053">10:00-20:00</option>
                                                                        <option value="1010000081">10:00-20:00</option>
                                                                        <option value="1010000061">10:30-19:00</option>
                                                                        <option value="1010000085">10:30-19:30</option>
                                                                        <option value="1010000058">11:00- 19:00</option>
                                                                        <option value="1010000043">11:00- 19:30</option>
                                                                        <option value="1010000054">11:00-20:00</option>
                                                                        <option value="1010000082">11:00-21:00</option>
                                                                        <option value="1010000019">12:00-18:00</option>
                                                                        <option value="1010000020">12:00-20:00</option>
                                                                        <option value="1010000044">12:00-20:30</option>
                                                                        <option value="1010000078">12:30-08:30</option>
                                                                        <option value="1010000021">13:00-19:00</option>
                                                                        <option value="1010000055">13:00-20:00</option>
                                                                        <option value="1010000083">13:00-21:00</option>
                                                                        <option value="1010000022">13:00-21:30</option>
                                                                        <option value="1010000045">14:00- 22:00</option>
                                                                        <option value="1010000023">14:00-20:00</option>
                                                                        <option value="1010000065">15:00-23:00</option>
                                                                        <option value="1010000072">15:30-23:59</option>
                                                                        <option value="1010000024">15:45-00:15</option>
                                                                        <option value="1010000046">16:00- 23:59</option>
                                                                        <option value="1010000025">16:00-23:59</option>
                                                                        <option value="1010000026">16:30-01:00</option>
                                                                        <option value="1010000077">16:30-12:30</option>
                                                                        <option value="1010000051">17:00-01:00</option>
                                                                        <option value="1010000027">17:30-02:00</option>
                                                                        <option value="1010000047">18:00- 2:00</option>
                                                                        <option value="1010000028">18:00-02:00</option>
                                                                        <option value="1010000029">18:00-23:59</option>
                                                                        <option value="1010000071">19:00-03:00 </option>
                                                                        <option value="1010000070">19:00-03:30</option>
                                                                        <option value="1010000067">19:00-07:00</option>
                                                                        <option value="1010000048">20:00- 4:00</option>
                                                                        <option value="1010000030">20:00-02:00</option>
                                                                        <option value="1010000031">20:00-04:00</option>
                                                                        <option value="1010000032">20:00-04:30</option>
                                                                        <option value="1010000033">20:00-08:00</option>
                                                                        <option value="1010000079">20:30-04:30</option>
                                                                        <option value="1010000060">21:00-05:00</option>
                                                                        <option value="1010000057">22:00-06:00 </option>
                                                                        <option value="1010000034">22:00-06:30</option>
                                                                        <option value="1010000035">22:00-07:00</option>
                                                                        <option value="1010000059">23:00-07:00</option>
                                                                        <option value="1010000036">23:45-08:15</option>
                                                                        <option value="1010000049">23:59- 8:00</option>
                                                                        <option value="1010000073">23:59:07:00</option>
                                                                        <option value="1010000037">23:59-06:00</option>
                                                                        <option value="1010000038">23:59-08:00</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="60px">
                                                            29 Jul 2026 09:30
                                                            <input id="StandardIn29" type="hidden" value="29 Jul 2026 09:30">
                                                        </td>
                                                        <td width="60px">
                                                            29 Jul 2026 18:00
                                                            <input id="StandardOut29" type="hidden" value="29 Jul 2026 18:00">
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualIn29" name="ActualIn29" type="text" value="29 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualInTime29" name="ActualInTime29" type="text" value="09:35" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="78px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOut29" name="ActualOut29" type="text" value="29 Jul 2026" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="48px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualOutTime29" name="ActualOutTime29" type="text" value="18:10" onblur="CalculateTime(this)" disabled="disabled">
                                                            </label>
                                                        </td>

                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyIn29" name="EarlyIn29" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="EarlyOut29" name="EarlyOut29" type="text" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateIn29" name="LateIn29" type="text" value="00:05" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="LateOut29" name="LateOut29" type="text" value="00:10" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="45px">
                                                            <label class="input">
                                                                <input class="form-control input-xs" id="ActualWorks29" name="ActualWorks29" type="text" value="08:35" disabled="disabled">
                                                            </label>
                                                        </td>
                                                        <td width="65px">
                                                            <div class="col-md-8">
                                                                <label class="input">
                                                                    <input class="form-control input-xs" id="OverTime29" name="OverTime29" type="text" value="00:05" disabled="disabled">
                                                                </label>
                                                            </div>
                                                            <div class="col-md-1"></div>
                                                            <div class="col-md-3">
                                                                <label>
                                                                    <input type="checkbox" id="IsOt29" name="IsOt29" class="checkbox style-0" onclick="CheckClicked()" disabled="disabled">
                                                                    <span class="label"></span>
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td width="120px" style="">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_AttendanceTypeCode29" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-58">Work Hours</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen58" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-58" id="s2id_autogen58" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen58_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-58" id="s2id_autogen58_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-58">   </ul></div></div><select name="AttendanceTypeCode29" id="AttendanceTypeCode29" style="width:100%" onchange="AttSumChange()" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000011">Absent Day</option>
                                                                        <option value="1010000001">Casual Leave</option>
                                                                        <option value="1010000014">Day Adj OT</option>
                                                                        <option value="1010000005">Day Off</option>
                                                                        <option value="1010000023">Debit</option>
                                                                        <option value="1010000025">ESIC Leave</option>
                                                                        <option value="1010000013">Half Day</option>
                                                                        <option value="1010000024">Half Debit</option>
                                                                        <option value="1010000012">Holiday</option>
                                                                        <option value="1010000007">Lunch Time</option>
                                                                        <option value="1010000002">Overtime</option>
                                                                        <option value="1010000009">Paid Leave</option>
                                                                        <option value="1010000010">Sick Leave</option>
                                                                        <option value="1010000022">Tour</option>
                                                                        <option value="1010000019">Weekly Off</option>
                                                                        <option selected="" value="1010000006">Work Hours</option>
                                                                </select>
                                                            </label>
                                                        </td>
                                                        <td width="120px">
                                                            <label class="select">
                                                                <div class="select2-container select2-container-disabled" id="s2id_DepartmentCode29" style="width:100%"><a href="javascript:void(0)" class="select2-choice" tabindex="-1">   <span class="select2-chosen" id="select2-chosen-59">IT DEPARTMENT</span><abbr class="select2-search-choice-close"></abbr>   <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a><label for="s2id_autogen59" class="select2-offscreen"></label><input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-59" id="s2id_autogen59" disabled=""><div class="select2-drop select2-display-none select2-with-searchbox">   <div class="select2-search">       <label for="s2id_autogen59_search" class="select2-offscreen"></label>       <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-59" id="s2id_autogen59_search" placeholder="">   </div>   <ul class="select2-results" role="listbox" id="select2-results-59">   </ul></div></div><select name="DepartmentCode29" id="DepartmentCode29" style="width:100%" disabled="" tabindex="-1" title="" class="select2-offscreen">
                                                                        <option value="1010000001">ACCOUNTS</option>
                                                                        <option value="1010000052">AGRICULTURE DEPT</option>
                                                                        <option value="1010000050">CALIBRATION</option>
                                                                        <option value="1010000029">CENTRAL CALIBRATION</option>
                                                                        <option value="1010000030">CENTRAL STORE</option>
                                                                        <option value="1010000067">CIVIL</option>
                                                                        <option value="1010000014">CMM DEPARTMENT</option>
                                                                        <option value="1010000016">CORE SHOP</option>
                                                                        <option value="1010000032">DESIGN</option>
                                                                        <option value="1010000013">DEVELOPMENT DEPARTMENT</option>
                                                                        <option value="1010000051">DRIVER</option>
                                                                        <option value="1010000005">ELECT. MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000002">ELECT. MAINTENANCE MSHOP</option>
                                                                        <option value="1010000035">ELECTRICIAN</option>
                                                                        <option value="1010000027">EXCISE</option>
                                                                        <option value="1010000055">FABRICATION</option>
                                                                        <option value="1010000022">FETTLING DEPARTMENT</option>
                                                                        <option value="1010000056">FOUNDRY UNDER GROUND</option>
                                                                        <option value="1010000065">GAUGES</option>
                                                                        <option value="1010000042">GENERAL MAINTENANCE</option>
                                                                        <option value="1010000053">GURUKUL</option>
                                                                        <option value="1010000010">H.R. DEPARTMENT</option>
                                                                        <option value="1010000058">HEAT TREATMENT</option>
                                                                        <option value="1010000054">HOUSEKEEPING</option>
                                                                        <option value="1010000036">IED</option>
                                                                        <option selected="" value="1010000025">IT DEPARTMENT</option>
                                                                        <option value="1010000021">KNOCKOUT DEPARTMENT</option>
                                                                        <option value="1010000044">LABORATORY DEPT</option>
                                                                        <option value="1010000045">LADDLE</option>
                                                                        <option value="1010000064">LOADING &amp; UNLOADING</option>
                                                                        <option value="1010000049">LOOSE MOULDING</option>
                                                                        <option value="1010000043">Machine Shop</option>
                                                                        <option value="1010000006">MAINTENANCE FOUNDRY</option>
                                                                        <option value="1010000004">MAINTENANCE MSHOP</option>
                                                                        <option value="1010000066">Manufacturing Excellence ( ME)</option>
                                                                        <option value="1010000034">MARKETING</option>
                                                                        <option value="1010000033">MECH. MAINTENANCE</option>
                                                                        <option value="1010000018">MELTING DEPARTMENT</option>
                                                                        <option value="1010000019">MOULDING DEPARTMENT</option>
                                                                        <option value="1010000040">MR</option>
                                                                        <option value="1010000062">MSHOP-QUALITY ASSURANCE</option>
                                                                        <option value="1010000063">MSHOP-STORES</option>
                                                                        <option value="1010000048">NOBACK</option>
                                                                        <option value="1010000037">NPD</option>
                                                                        <option value="1010000039">OFFICE</option>
                                                                        <option value="1010000012">PACKING DEPARTMENT</option>
                                                                        <option value="1010000023">PATTERN SHOP DEPARTMENT</option>
                                                                        <option value="1010000020">POURING DEPARTMENT</option>
                                                                        <option value="1010000038">PPC</option>
                                                                        <option value="1010000046">PRESSURE PLATE</option>
                                                                        <option value="1010000007">PRODUCTION FOUNDRY</option>
                                                                        <option value="1010000003">PRODUCTION MSHOP</option>
                                                                        <option value="1010000011">PRODUCTION PLANNING &amp; CONTROL</option>
                                                                        <option value="1010000008">QUALITY ASSURANCE</option>
                                                                        <option value="1010000057">REWINDING DEPARTMENT</option>
                                                                        <option value="1010000015">SALES DEPARTMENT</option>
                                                                        <option value="1010000017">SAND PLANT DEPARTMENT</option>
                                                                        <option value="1010000026">SECURITY</option>
                                                                        <option value="1010000024">SHOT BLASTING DEPARTMENT</option>
                                                                        <option value="1010000047">SONIC ANALYSIS</option>
                                                                        <option value="1010000031">STORE</option>
                                                                        <option value="1010000009">STORES / PURCHASE</option>
                                                                        <option value="1010000041">SYSTEM</option>
                                                                        <option value="1010000059">TATA SUMO UK06K3878 </option>
                                                                        <option value="1010000028">TOOL MANUFACTURING DEPARTMENT</option>
                                                                        <option value="1010000061">TRUCK UK06CA0425</option>
                                                                        <option value="1010000060">TRUCK UK06CA0689</option>
                                                                </select>
                                                            </label>
                                                            <script>
                                                                $("#AttendanceTypeCode29").select2();
                                                                $("#DepartmentCode29").select2();
                                                                if(0 ==1){
                                                                    $('#IsOt29').prop('checked', true);
                                                                }
                                                            </script>
                                                        </td>
                                                    </tr>
                                                <tr>
                                                    <td colspan="9"></td>
                                                    <td>
                                                        <label class="input">
                                                            <input class="form-control input-xs" id="totEarlyIn" name="totEarlyIn" type="text" value="0.00" readonly="readonly">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="input">
                                                            <input class="form-control input-xs" id="totEarlyOut" name="totEarlyOut" type="text" value="0.00" readonly="readonly">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="input">
                                                            <input class="form-control input-xs" id="totLateIn" name="totLateIn" type="text" value="0.00" readonly="readonly">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="input">
                                                            <input class="form-control input-xs" id="totLateOut" name="totLateOut" type="text" value="0.00" readonly="readonly">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="input">
                                                            <input class="form-control input-xs" id="totActualWorks" name="totActualWorks" type="text" value="0.00" readonly="readonly">
                                                        </label>
                                                    </td>
                                                    <td>
                                                        <label class="input">
                                                            <input class="form-control input-xs" id="totOverTime" name="totOverTime" type="text" value="0.00" readonly="readonly">
                                                        </label>
                                                    </td>
                                                    <td colspan="2"></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </section>

```  