<div id="ajax_pop" class="modal fade">

    <!--    <div class="modal-dialog" translate(310px, 181px);>-->
    <div class="col-lg-6" style="padding: 0px; transform: translate(30%, 10%);">
        <div class="modal-content" id="pop_content">

            <div class="modal-header" id="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Settings</h4>

            </div>

            <div class="modal-body">
                <p>Settings</p>

            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

            </div>
        </div>
        <!-- /.modal-content -->

    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<div id="ajax_pop_custom" class="modal fade">

    <!--    <div class="modal-dialog" translate(310px, 181px);>-->
    <div class="col-lg-6" style="padding: 0px; transform: translate(30%, 10%);">
        <div class="modal-content" id="pop_content">

            <div class="panel panel-primary" id="modal-header" style="margin-bottom: 0;">
                <div class="panel-heading">
                    Add Serial Number
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Add Serial Number
                            </div>
                            <div class="panel-body">

                                <div class="col-lg-5">
                                    <div class="form-group">
                                        <label>Prefix. : </label>
                                        <input type="text" autocapitalize="off" autocorrect="off" autocomplete="off"
                                               name="pre[]" id="pre" value="" placeholder=""
                                               class="form-control input-sm">

                                    </div>
                                </div>

                                <div class="col-lg-5">
                                    <div class="form-group">
                                        <label>Start. : </label>
                                        <input type="text" onkeypress="return NumOnly(this,event);" autocapitalize="off"
                                               autocorrect="off" autocomplete="off" name="start[]" id="start" value=""
                                               placeholder="" class="form-control input-sm">
                                        <span style="color: red;">(Numbers only) </span>
                                    </div>
                                </div>
                                <div class="clearfix"></div>

                                <div class="col-lg-5">
                                    <div class="form-group">
                                        <label>No of Digits (after Prefix). : </label>
                                        <input type="text" onkeypress="return NumOnly(this,event);" autocapitalize="off"
                                               autocorrect="off" autocomplete="off" name="digit[]" id="digit" value=""
                                               placeholder="" class="form-control input-sm">
                                        <span style="color: red;">(Numbers only) </span>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                    <!-- /.table-responsive -->
                </div>
                <div class="panel-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal" id="pop_process">Process</button>
                </div>

            </div>
        </div>
        <!-- /.modal-content -->

    </div>
    <!-- /.modal-dialog -->
</div>




<?php
/**
 * Created by PhpStorm.
 * User: Rangana Rudrigo
 * Date: 6/10/15
 * Time: 11:14 AM
 */
?>


<!--<script src="//code.jquery.com/jquery-1.10.2.js"></script>-->

<!-- jQuery -->
<script src="<?= base_url() ?>js/jquery.js"></script>


<!-- Bootstrap Core JavaScript -->
<script src="<?= base_url() ?>js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="<?= base_url() ?>js/plugins/metisMenu/metisMenu.min.js"></script>

<script src="<?= base_url() ?>js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="<?= base_url() ?>js/plugins/dataTables/dataTables.bootstrap.js"></script>

<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css"/>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css"/>


<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>

<script>
    $(function () {

        $("#sortable").sortable({
            opacity: 0.6, cursor: 'move', update: function () {
                var conf = window.confirm("Are you sure to re-arrange the record order ?");
                var table = $("#view").val();

                if (conf == true) {

                    var order = $(this).sortable("serialize") + '&table=' + table;

                    $.post(URL.base + "UpdateOrder/do_update", order, function (theResponse) {
                        $('#legend').removeClass('preloader');
                        location.reload()
                    });
                } else {
                    window.location.reload();
                }
            }
        });
    });
</script>


<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
    $(document).ready(function () {
        $('#dataTables').dataTable();
    });
</script>

<!-- Custom Theme JavaScript -->
<script src="<?= base_url() ?>js/sb-admin-2.js"></script>

<script src="<?= base_url() ?>js/common_script.js"></script>

<!--<script src="--><?//= base_url() ?><!--js/login.js"></script>-->

<script src="<?= base_url() ?>js/bootbox.min.js"></script>


<script>

$(document).ready(function () {
    $('#dateRangePicker')
        .datepicker({
            format: 'yyyy-mm-dd',
            startDate: '<?= date("Y-m-d") ?>',
            todayBtn: "linked",
            clearBtn: true,
            autoclose: 1
        })

});

//    $('.datepicker').datepicker({
//        format: "yyyy-mm-dd",
//        todayBtn: "linked",
//        clearBtn: true
//    });


$('body').on('click', '.sup_table', function () {
    var sup_id = $(this).closest("tr").find('td:eq(0)').text();
    var sup_name = $(this).closest("tr").find('td:eq(2)').text();
    $("#sup_name").val(sup_name);
    $("#sup_id").val(sup_id);

    $('.modal').modal('hide');
});


$('.add_item').click(function () {
    var id = $(this).closest("tr").find('td:eq(0)').text();
    var code = $(this).closest("tr").find('td:eq(1)').text();
    var name = $(this).closest("tr").find('td:eq(2)').text();
    var hs_serial = $(this).closest("tr").find('td:eq(3)').text();
    var tr = $(this).data('id');

    if ($("#tr_" + tr).length == 0) {

        if (hs_serial == 'Yes') {

            show_popup_custom();

            $('body').one('click', '#pop_process', function (e) {
                e.stopImmediatePropagation();
                if ($("#start").val() == '') {
                    customMessage('Please check following : <br/>* Start Serial Number <br/>* No of Digit cannot be blank');
                } else {
                    $("#perDataRow").append('<tr class="gradeU" id="tr_' + tr + '" >' +
                        '<input type="hidden" name="product[serial][' + id + '][p_order_id]" value="' + $("#sysid").val() + '"  />' +
                        '<input type="hidden" name="product[serial][' + id + '][has_serial]" value="Yes"  />' +
                        '<input type="hidden" name="product[serial][' + id + '][item_code]" value="' + code + '"  />' +
                        '<input type="hidden" name="product[serial][' + id + '][item_id]" value="' + id + '"  />' +
                        '<input type="hidden" name="product[serial][' + id + '][pre]" value="' + $("#pre").val() + '"  />' +
                        '<input type="hidden" name="product[serial][' + id + '][start]" value="' + $("#start").val() + '"  />' +
                        '<input type="hidden" name="product[serial][' + id + '][digit]" value="' + $("#digit").val() + '"  />' +
                        '<td>' + code + '</td>' +
                        '<td><input type="hidden" name="product[serial][' + id + '][name]" value="' + name + '"  />' + name + '</td>' +
                        '<td><input type="text" name="product[serial][' + id + '][qty]" class="form-control input-sm" onkeypress="return NumOnly(this,event);"></td>' +
                        '<td><a class="tr_remove" style="cursor: pointer;text-decoration: none;"><i class="fa fa-times  "></i> Delete</a></td>' +
                        ' </tr>');
                }
            });
        } else {
            $("#perDataRow").append('<tr class="gradeU" id="tr_' + tr + '" >' +
                '<input type="hidden" name="product[nonserial][' + id + '][p_order_id]" value="' + $("#sysid").val() + '"  />' +
                '<input type="hidden" name="product[nonserial][' + id + '][has_serial]" value="No"  />' +
                '<input type="hidden" name="product[nonserial][' + id + '][item_code]" value="' + code + '"  />' +
                '<input type="hidden" name="product[nonserial][' + id + '][item_id]" value="' + id + '"  />' +
                '<td> ' + code + '</td>' +
                '<td><input type="hidden" name="product[nonserial][' + id + '][name]" value="' + name + '"  />' + name + '</td>' +
                '<td><input type="text" name="product[nonserial][' + id + '][qty]" class="form-control input-sm" onkeypress="return NumOnly(this,event);"></td>' +
                '<td><a class="tr_remove" style="cursor: pointer;text-decoration: none;"><i class="fa fa-times  "></i> Delete</a></td>' +
                ' </tr>');
        }


    } else {
        customMessage('This product already exists');
    }


});


$('body').on("click", ".tr_remove", function () {
    $(this).closest('tr').remove();
});

//  ================================================================================= Invoice page  ==================================================

$('.add_cart').click(function () {
    var in_item_id = $(this).closest("tr").find('td:eq(0)').text();
    var in_item_code = $(this).closest("tr").find('td:eq(1)').text();
    var in_item_name = $(this).closest("tr").find('td:eq(2)').text();
    var in_has_serial = $(this).closest("tr").find('td:eq(3)').text();
    var in_abt_qty = $(this).closest("tr").find('td:eq(5)').text();


    if ($("#tr_" + in_item_id).length == 0) {

        if (in_has_serial == 'Yes') {
            searchDataLikeStatement(in_item_id, 'Transaction/Invoice_item/get_serial_number_by_item_id/');

            $('body').one('click', '#key_process', function (e) {
                e.stopImmediatePropagation();
                e.stopPropagation();
                var values = $("input[name='key\\[\\]']:checked").map(function () {
                    return $(this).val();
                }).get();
                var selectKeyNo = values.length;

                for (var i = 0; i < values.length; i++) {
                    values[i] = '<input type="hidden" name="product[serial][' + in_item_id + '][s_no][' + i + ']" value="' + values[i] + '"  />';
                }

                $("#perDataRowIn").append('<tr class="gradeU" id="tr_' + in_item_id + '" >' +
                    values +
                    '<input type="hidden" name="product[serial][' + in_item_id + '][invoice_id]" value="' + $("#sysid").val() + '"  />' +
                    '<input type="hidden" name="product[serial][' + in_item_id + '][item_id]" value="' + in_item_id + '"  />' +
                    '<input type="hidden" name="product[serial][' + in_item_id + '][has_serial]" value="' + in_has_serial + '"  />' +
                    ' <input type="hidden" name="product[serial][' + in_item_id + '][qty]" class="form-control input-sm" value="' + selectKeyNo + '" >' +
                    '<td> ' + in_item_code + '</td>' +
                    '<td>' + in_item_name + '</td>' +
                    '<td>' + in_abt_qty + '</td>' +
                    '<td>' + selectKeyNo + '</td>' +
                    '<td><a class="tr_remove" style="cursor: pointer;text-decoration: none;"><i class="fa fa-times  "></i> Delete</a></td>' +
                    ' </tr>');
            });

        } else {
            $("#perDataRowIn").append('<tr class="gradeU" id="tr_' + in_item_id + '" >' +
                '<input type="hidden" name="product[Noserial][' + in_item_id + '][invoice_id]" value="' + $("#sysid").val() + '"  />' +
                '<input type="hidden" name="product[Noserial][' + in_item_id + '][item_id]" value="' + in_item_id + '"  />' +
                '<input type="hidden" name="product[Noserial][' + in_item_id + '][has_serial]" value="' + in_has_serial + '"  />' +
                '<td> ' + in_item_code + '</td>' +
                '<td>' + in_item_name + '</td>' +
                '<td>' + in_abt_qty + '</td>' +
                '<td><input value="'+$(this).closest("tr").find('td:eq(4)').text()+'" type="text" name="product[Noserial][' + in_item_id + '][price]" class="form-control input-sm" required onkeypress="return NumOnly(this,event);"  onkeyup="calTotal(this)"  ></td>' +
                '<td><input value="" type="text" name="product[Noserial][' + in_item_id + '][qty]" class="form-control input-sm" required onkeypress="return NumOnly(this,event);" onkeyup="purchaseQty(this,this.value,'+ in_abt_qty+' );"  ></td>' +

                '<td><input value="" type="text" name="product[Noserial][' + in_item_id + '][total]" class="form-control input-sm"    ></td>' +

                '<td><a class="tr_remove" style="cursor: pointer;text-decoration: none;"><i class="fa fa-times  "></i> Delete</a></td>' +
                ' </tr>');
        }

    } else {
        customMessage('This product already exists');
    }

});
//=====================================================================================================================================================================================================


$('.return_cart').click(function () {
    var invoice_real_id = $(this).closest("tr").find('td:eq(0)').text();
    var invoice = $(this).closest("tr").find('td:eq(1)').text();
    var invoice_id = $(this).closest("tr").find('td:eq(2)').text();
    var customer_name = $(this).closest("tr").find('td:eq(3)').text();
    var invoice_date = $(this).closest("tr").find('td:eq(4)').text();

    $("#in_code").html(invoice_id);
    $("#cusName").html(customer_name);
    $("#in_date").html(invoice_date);

    $("#in_id").val(invoice);


    searchAllInvoiceData(invoice_real_id, 'Transaction/Return_item/get_searchAllInvoiceData/');
});


$('body').on('click', '.s_check', function () {

    var total = $('body').find('.s_check:checked').length;
    $("#s_count").html(total);
    $("#s_count_val").val(total);

});

//    ===============================return item (return only)==============================
$('body').on('click', '.is_return', function () {

    var rd_id = $(this).attr("data-id");

    if (this.checked) {
        $("#dmgs_" + rd_id).attr("disabled", true);
    } else {
        $("#dmgs_" + rd_id).attr("disabled", false);
    }

    var total = $('body').find('.is_return:checked').length;
    $("#r_count").html(total);
    $("#r_count_val").val(total);

});

//    ===============================return item damage==============================

$('body').on('click', '.is_damage', function () {

    var rd_id = $(this).attr("data-id");

    if (this.checked) {
        $("#rets_" + rd_id).attr("disabled", true);
    } else {
        $("#rets_" + rd_id).attr("disabled", false);
    }

    var total = $('body').find('.is_damage:checked').length;
    $("#d_count").html(total);
    $("#d_count_val").val(total);

});


$('body').on('click', '#key_process_return', function () {

    var returnI = $("input[name='is_return\\[\\]']:checked").map(function () {
        return $(this).val();
    }).get();
    var selectReturnNo = returnI.length;

    var damageI = $("input[name='is_damage\\[\\]']:checked").map(function () {
        return $(this).val();
    }).get();
    var selectDamageNo = damageI.length;

//        console.log(selectReturnNo);
//        console.log(selectDamageNo);

    $("#ret_" + $(this).data('id')).val(selectReturnNo);
    $("#dmg_" + $(this).data('id')).val(selectDamageNo);
    cls = "re-" + $(this).data('id');
    $("." + cls).remove();
    for (var i = 0; i < returnI.length; i++) {
        returnI[i] = '<input type="hidden" name="product[serial][' + returnI[i] + '][r_s_no]" value="' + returnI[i] + '" class="' + cls + '"  />';
    }
    console.log(returnI);

    for (var x = 0; x < damageI.length; x++) {
        damageI[x] = '<input type="hidden" name="product[serial][' + damageI[x] + '][d_s_no]" value="' + damageI[x] + '" class="' + cls + '"  />';
    }
//        echo '<input id="item_qty'.$i.'" type="hidden" value="'.$data[$i]->qty .'" name="product[No_serial]['.$data[$i]->sysid.']['.$data[$i]->item_id.'][qty]">';
    $("#invoiceDataBody").append(returnI);
    $("#invoiceDataBody").append(damageI);

});

a=0,b=0;
$('.checkroot').click(function(e){
    $(this).closest('li').find('input[type="checkbox"]').prop('checked', a++%2==0? true : false);
});
$('.checksub').click(function(e){
    $(this).closest('li').find('input[type="checkbox"]').prop('checked', b++%2==0? false : true);
    if(!$(this).prop('checked')) {$('.checkroot').prop('checked',false),a++};
});
$('.checksupersub').click(function(){
    t=false;
    $(this).closest('div').find('.checksupersub').each(function(){
        if($(this).prop('checked')){
            t=true;
            return ;
        }
    });
    $(this).closest('li').find('.checksub').prop('checked',t);
});

//    ===============================return item (return only)==============================
/*$('body').on('click', '.masterAll', function () {

    var rd_id = $(this).attr("data-id");


    if(this.checked) { // check select status
        $('.master').each(function() { //loop through each checkbox
            this.checked = true;  //select all checkboxes with class "checkbox1"
        });
    }else{
        $('.master').each(function() { //loop through each checkbox
            this.checked = false; //deselect all checkboxes with class "checkbox1"
        });
    }


//    if (this.checked) {
//        $("#dmgs_" + rd_id).attr("disabled", true);
//    } else {
//        $("#dmgs_" + rd_id).attr("disabled", false);
//    }
//
//    var total = $('body').find('.is_return:checked').length;
//    $("#r_count").html(total);
//    $("#r_count_val").val(total);

});*/

</script>

