<?php
/**
 * Created by PhpStorm.
 * User: Rangana Rudrigo
 * Date: 7/9/15
 * Time: 10:59 AM
 */

?>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                <i class="fa fa-gears fa-fw"></i>
                User Control
            </h1>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                User Privilege
            </div>

            <div class="panel-body">
            <?php
            if ($this->session->flashdata('msg_err')) {
                ?>
                <div class="alert alert-danger alert-dismissable">
                    <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×
                    </button>
                    <?= $this->session->flashdata('msg_err') ?>
                </div>
            <?php }elseif($this->session->flashdata('msg_done')){ ?>
                <div class="alert alert-success alert-dismissable">
                    <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×
                    </button>
                    <?= $this->session->flashdata('msg_done') ?>
                </div>
            <?php } ?>
            <?php echo form_open(); ?>
            <div class="form-group col-lg-5">
                <label>Username:<i class="text-center text-danger fa fa-asterisk "></i></label>
                <input type="text" value="<?= $result->username; ?>" id="name" class="form-control " name="userd[username]"  >
                <span style="color: red;"> <?= form_error('userd[username]'); ?></span>
            </div>
            <div class="clearfix"></div>


            <div class="clearfix"></div>
            <div class="form-group col-lg-5">
                <label>Password :<i class="text-center text-danger fa fa-asterisk "></i></label>
                <input type="password" id="pass_user" class="form-control p" name="userd[password]" >
                <span style="color: red;"> <?php echo form_error('userd[password]'); ?></span>
            </div>
            <div class="form-group col-lg-5">
                <label>Confirm Password :<i class="text-center text-danger fa fa-asterisk "></i></label>
                <input type="password" id="cpass" class="form-control p " name="password"  >
                <span style="color: red;"> <?php echo form_error('password'); ?></span>
            </div>
            <div class="clearfix"></div>
            <div id="accordion" class="panel-group">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a class="collapsed" aria-expanded="false" href="#master" data-parent="#accordion" data-toggle="collapse"> <i class="fa-plus-circle fa"></i>
                            <label> Master  </label>
                        </a>
                    </h4>
                </div>
                <div aria-expanded="false" class="panel-collapse collapse" id="master" style="height: 0px;">
                    <div class="panel-body">
                        <ul>
                            <li>
                                <div><label> <input type="checkbox" value="1" name="master[all]" class="checkroot"> ALL  </label></div>
                                <ul class="col-md-8 col-lg-8 col-sm-12 ">
                                    <li>
                                        <label> <input type="checkbox" <?= (int)$result->user > 0 ? "checked" :"" ?> class="checksub"> User  </label>
                                        <div class="pull-right ">
                                            <label>Add <input type="checkbox" <?= (int)$result->user == 1 || (int)$result->user == 7 || (int)$result->user == 3 || (int)$result->user == 5 ? "checked" :"" ?> class="checksupersub" value="1" name="master[user][]"></label> &nbsp;&nbsp;
                                            <label>Update <input type="checkbox" <?= (int)$result->user == 2 || (int)$result->user == 7 || (int)$result->user == 3 ||  (int)$result->user == 6 ? "checked" :"" ?> class="checksupersub" value="2" name="master[user][]"></label> &nbsp;&nbsp;
                                            <label>Delete <input type="checkbox" <?= (int)$result->user == 4 || (int)$result->user == 7 || (int)$result->user == 5 || (int)$result->user == 5 || (int)$result->user == 6 ? "checked" :"" ?> class="checksupersub" value="4" name="master[user][]"></label>
                                        </div>
                                    </li>
                                    <li>
                                        <label> <input type="checkbox" <?= (int)$result->product_type > 0 ? "checked" :"" ?> class="checksub"> Product Type  </label>
                                        <div class="pull-right">
                                            <label>Add <input type="checkbox" <?= (int)$result->product_type == 1 || (int)$result->product_type == 7 || (int)$result->product_type == 3 || (int)$result->product_type == 5 ? "checked" :"" ?> class="checksupersub" value="1" name="master[product_type][]"></label> &nbsp;&nbsp;
                                            <label>Update <input type="checkbox" <?= (int)$result->product_type == 2 || (int)$result->product_type == 7 || (int)$result->product_type == 3 ||  (int)$result->product_type == 6 ? "checked" :"" ?> class="checksupersub" value="2" name="master[product_type][]"></label> &nbsp;&nbsp;
                                            <label>Delete <input type="checkbox" <?= (int)$result->product_type == 4 || (int)$result->product_type == 7 || (int)$result->product_type == 5 || (int)$result->product_type == 5 || (int)$result->product_type == 6 ? "checked" :"" ?> class="checksupersub" value="4" name="master[product_type][]"></label>
                                        </div>
                                    </li>
                                    <li>
                                        <label> <input type="checkbox" <?= (int)$result->product_brand > 0 ? "checked" :"" ?> class="checksub"> Product Brand   </label>
                                        <div class="pull-right">
                                            <label>Add <input type="checkbox" <?= (int)$result->product_brand == 1 || (int)$result->product_brand == 7 || (int)$result->product_brand == 3 || (int)$result->product_brand == 5 ? "checked" :"" ?> class="checksupersub" value="1" name="master[product_brand][]"></label> &nbsp;&nbsp;
                                            <label>Update <input type="checkbox" <?= (int)$result->product_brand == 2 || (int)$result->product_brand == 7 || (int)$result->product_brand == 3 ||  (int)$result->product_brand == 6 ? "checked" :"" ?> class="checksupersub" value="2" name="master[product_brand][]"></label> &nbsp;&nbsp;
                                            <label>Delete <input type="checkbox" <?= (int)$result->product_brand == 4 || (int)$result->product_brand == 7 || (int)$result->product_brand == 5 || (int)$result->product_brand == 5 || (int)$result->product_brand == 6 ? "checked" :"" ?> class="checksupersub" value="4" name="master[product_brand][]"></label>
                                        </div>
                                    </li>
                                    <li>
                                        <label> <input type="checkbox" <?= (int)$result->product_model > 0 ? "checked" :"" ?> class="checksub"> Product Model   </label>
                                        <div class="pull-right">
                                            <label>Add <input type="checkbox" <?= (int)$result->product_model == 1 || (int)$result->product_model == 7 || (int)$result->product_model == 3 || (int)$result->product_model == 5 ? "checked" :"" ?> class="checksupersub" value="1" name="master[product_model][]"></label> &nbsp;&nbsp;
                                            <label>Update <input type="checkbox" <?= (int)$result->product_model == 2 || (int)$result->product_model == 7 || (int)$result->product_model == 3 ||  (int)$result->product_model == 6 ? "checked" :"" ?> class="checksupersub" value="2" name="master[product_model][]"></label> &nbsp;&nbsp;
                                            <label>Delete <input type="checkbox" <?= (int)$result->product_model == 4 || (int)$result->product_model == 7 || (int)$result->product_model == 5 || (int)$result->product_model == 5 || (int)$result->product_model == 6 ? "checked" :"" ?> class="checksupersub" value="4" name="master[product_model][]"></label>
                                        </div>
                                    </li>
                                    <li>
                                        <label> <input type="checkbox" <?= (int)$result->product_item > 0 ? "checked" :"" ?> class="checksub"> Product Item   </label>
                                        <div class="pull-right">
                                            <label>Add <input type="checkbox" <?= (int)$result->product_item == 1 || (int)$result->product_item == 7 || (int)$result->product_item == 3 || (int)$result->product_item == 5 ? "checked" :"" ?> class="checksupersub" value="1" name="master[product_item][]"></label> &nbsp;&nbsp;
                                            <label>Update <input type="checkbox" <?= (int)$result->product_item == 2 || (int)$result->product_item == 7 || (int)$result->product_item == 3 ||  (int)$result->product_item == 6 ? "checked" :"" ?> class="checksupersub" value="2" name="master[product_item][]"></label> &nbsp;&nbsp;
                                            <label>Delete <input type="checkbox" <?= (int)$result->product_item == 4 || (int)$result->product_item == 7 || (int)$result->product_item == 5 || (int)$result->product_item == 5 || (int)$result->product_item == 6 ? "checked" :"" ?> class="checksupersub" value="4" name="master[product_item][]"></label>
                                        </div>

                                    </li>


                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a aria-expanded="false" class="collapsed" href="#cv" data-parent="#accordion" data-toggle="collapse"><i class="fa-plus-circle fa"></i> <label>Transaction</label> </a>
                    </h4>
                </div>
                <div style="height: 0px;" aria-expanded="false" class="panel-collapse collapse" id="cv">
                    <div class="panel-body">
                        <ul>
                            <li>
                                <div><label> <input type="checkbox" value="1" name="transaction[all]" class="checkroot"> ALL  </label></div>
                                <ul class="col-md-8 col-lg-8 col-sm-12 ">
                                    <li>
                                        <label> <input type="checkbox" <?= (int)$result->purchase_item > 0 ? "checked" :"" ?> class="checksub"> Purchase - Item  </label>

                                        <div class="pull-right">
                                            <label>Add <input type="checkbox" <?= (int)$result->purchase_item == 1 || (int)$result->purchase_item == 7 || (int)$result->purchase_item == 3 || (int)$result->purchase_item == 5 ? "checked" :"" ?> class="checksupersub" value="1" name="transaction[purchase_item][]"></label> &nbsp;&nbsp;
                                            <label>Delete <input type="checkbox" <?= (int)$result->purchase_item == 4 || (int)$result->purchase_item == 7 || (int)$result->purchase_item == 5 || (int)$result->purchase_item == 5 || (int)$result->purchase_item == 6 ? "checked" :"" ?> class="checksupersub" value="4" name="transaction[purchase_item][]"></label>
                                        </div>
                                    </li>
                                    <li>
                                        <label> <input type="checkbox" <?= (int)$result->invoice_item > 0 ? "checked" :"" ?>  class="checksub"> Invoice - Item  </label>

                                        <div class="pull-right">
                                            <label>Add <input type="checkbox" <?= (int)$result->invoice_item == 1 || (int)$result->invoice_item == 7 || (int)$result->invoice_item == 3 || (int)$result->invoice_item == 5 ? "checked" :"" ?> class="checksupersub" value="1" name="transaction[invoice_item][]"></label> &nbsp;&nbsp;
                                            <label>Delete <input type="checkbox" <?= (int)$result->invoice_item == 4 || (int)$result->invoice_item == 7 || (int)$result->invoice_item == 5 || (int)$result->invoice_item == 5 || (int)$result->invoice_item == 6 ? "checked" :"" ?> class="checksupersub" value="4" name="transaction[invoice_item][]"></label>
                                        </div>
                                    </li>
                                    <li>
                                        <label> <input type="checkbox" <?= (int)$result->return_item > 0 ? "checked" :"" ?>  class="checksub"> Return - Item  </label>

                                        <div class="pull-right">
                                            <label>Add <input type="checkbox" <?= (int)$result->return_item == 1 || (int)$result->return_item == 7 || (int)$result->return_item == 3 || (int)$result->return_item == 5 ? "checked" :"" ?> class="checksupersub" value="1" name="transaction[return_item][]"></label> &nbsp;&nbsp;
                                            <label>Delete <input type="checkbox" <?= (int)$result->return_item == 4 || (int)$result->return_item == 7 || (int)$result->return_item == 5 || (int)$result->return_item == 5 || (int)$result->return_item == 6 ? "checked" :"" ?> class="checksupersub" value="4" name="transaction[return_item][]"></label>
                                        </div>
                                    </li>

                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a class="" aria-expanded="true" href="#report" data-parent="#accordion" data-toggle="collapse"> <i class="fa-plus-circle fa"></i>
                                <label> Report  </label>
                            </a>
                        </h4>
                    </div>

                        <div style="height: 0px;" aria-expanded="false" class="panel-collapse collapse" id="report">
                        <div class="panel-body">
                            <ul>
                                <li>
                                    <div><label> <input type="checkbox" value="1" name="report[all]" class="checkroot"> ALL  </label></div>
                                    <ul class="col-md-8 col-lg-8 col-sm-12 ">
                                        <li>
                                            <label> <input type="checkbox" <?= (int)$result->customer_list > 0 ? "checked" :"" ?>  class="checksub"> Customer List </label>

                                            <div class="pull-right ">
                                                <label>View <input type="checkbox" <?= (int)$result->customer_list == 1 || (int)$result->customer_list == 7 || (int)$result->customer_list == 3 || (int)$result->customer_list == 5 ? "checked" :"" ?> class="checksupersub" value="1" name="report[customer_list][]"></label> &nbsp;&nbsp;
                                                <label>Excel Sheet <input type="checkbox" <?= (int)$result->customer_list == 2 || (int)$result->customer_list == 7 || (int)$result->customer_list == 3 ||  (int)$result->customer_list == 6 ? "checked" :"" ?> class="checksupersub" value="2" name="report[customer_list][]"></label> &nbsp;&nbsp;
                                                <label>Pdf <input type="checkbox" <?= (int)$result->customer_list == 4 || (int)$result->customer_list == 7 || (int)$result->customer_list == 5 || (int)$result->customer_list == 5 || (int)$result->customer_list == 6 ? "checked" :"" ?> class="checksupersub" value="4" name="report[customer_list][]"></label>
                                            </div>
                                        </li>
                                        <li>
                                            <label> <input type="checkbox" <?= (int)$result->supplier_list > 0 ? "checked" :"" ?> class="checksub"> Supplier List  </label>

                                            <div class="pull-right ">
                                                <label>View <input type="checkbox" <?= (int)$result->supplier_list == 1 || (int)$result->supplier_list == 7 || (int)$result->supplier_list == 3 || (int)$result->supplier_list == 5 ? "checked" :"" ?> class="checksupersub" value="1" name="report[supplier_list][]"></label> &nbsp;&nbsp;
                                                <label>Excel Sheet <input type="checkbox" <?= (int)$result->supplier_list == 2 || (int)$result->supplier_list == 7 || (int)$result->supplier_list == 3 ||  (int)$result->supplier_list == 6 ? "checked" :"" ?> class="checksupersub" value="2" name="report[supplier_list][]"></label> &nbsp;&nbsp;
                                                <label>Pdf <input type="checkbox" <?= (int)$result->supplier_list == 4 || (int)$result->supplier_list == 7 || (int)$result->supplier_list == 5 || (int)$result->supplier_list == 5 || (int)$result->supplier_list == 6 ? "checked" :"" ?> class="checksupersub" value="4" name="report[supplier_list][]"></label>
                                            </div>
                                        </li>
                                        <li>
                                            <label> <input type="checkbox" <?= (int)$result->item_list > 0 ? "checked" :"" ?>  class="checksub"> Item List   </label>

                                            <div class="pull-right ">
                                                <label>View <input type="checkbox" <?= (int)$result->item_list == 1 || (int)$result->item_list == 7 || (int)$result->item_list == 3 || (int)$result->item_list == 5 ? "checked" :"" ?> class="checksupersub" value="1" name="report[item_list][]"></label> &nbsp;&nbsp;
                                                <label>Excel Sheet <input type="checkbox" <?= (int)$result->item_list == 2 || (int)$result->item_list == 7 || (int)$result->item_list == 3 ||  (int)$result->item_list == 6 ? "checked" :"" ?> class="checksupersub" value="2" name="report[item_list][]"></label> &nbsp;&nbsp;
                                                <label>Pdf <input type="checkbox" <?= (int)$result->item_list == 4 || (int)$result->item_list == 7 || (int)$result->item_list == 5 || (int)$result->item_list == 5 || (int)$result->item_list == 6 ? "checked" :"" ?> class="checksupersub" value="4" name="report[item_list][]"></label>
                                            </div>
                                        </li>
                                        <li>
                                            <label> <input type="checkbox" <?= (int)$result->purchasing_report_d > 0 ? "checked" :"" ?> class="checksub"> Purchasing Reports-Detailed   </label>

                                            <div class="pull-right ">
                                                <label>View <input type="checkbox" <?= (int)$result->purchasing_report_d == 1 || (int)$result->purchasing_report_d == 7 || (int)$result->purchasing_report_d == 3 || (int)$result->purchasing_report_d == 5 ? "checked" :"" ?> class="checksupersub" value="1" name="report[purchasing_report_d][]"></label> &nbsp;&nbsp;
                                                <label>Excel Sheet <input type="checkbox" <?= (int)$result->purchasing_report_d == 2 || (int)$result->purchasing_report_d == 7 || (int)$result->purchasing_report_d == 3 ||  (int)$result->purchasing_report_d == 6 ? "checked" :"" ?> class="checksupersub" value="2" name="report[purchasing_report_d][]"></label> &nbsp;&nbsp;
                                                <label>Pdf <input type="checkbox" <?= (int)$result->purchasing_report_d == 4 || (int)$result->purchasing_report_d == 7 || (int)$result->purchasing_report_d == 5 || (int)$result->purchasing_report_d == 5 || (int)$result->purchasing_report_d == 6 ? "checked" :"" ?> class="checksupersub" value="4" name="report[purchasing_report_d][]"></label>
                                            </div>
                                        </li>
                                        <li>
                                            <label> <input type="checkbox" <?= (int)$result->purchasing_report_s > 0 ? "checked" :"" ?>  class="checksub"> Purchasing Reports-Summary   </label>

                                            <div class="pull-right ">
                                                <label>View <input type="checkbox" <?= (int)$result->purchasing_report_s == 1 || (int)$result->purchasing_report_s == 7 || (int)$result->purchasing_report_s == 3 || (int)$result->purchasing_report_s == 5 ? "checked" :"" ?> class="checksupersub" value="1" name="report[purchasing_report_s][]"></label> &nbsp;&nbsp;
                                                <label>Excel Sheet <input type="checkbox" <?= (int)$result->purchasing_report_s == 2 || (int)$result->purchasing_report_s == 7 || (int)$result->purchasing_report_s == 3 ||  (int)$result->purchasing_report_s == 6 ? "checked" :"" ?> class="checksupersub" value="2" name="report[purchasing_report_s][]"></label> &nbsp;&nbsp;
                                                <label>Pdf <input type="checkbox" <?= (int)$result->purchasing_report_s == 4 || (int)$result->purchasing_report_s == 7 || (int)$result->purchasing_report_s == 5 || (int)$result->purchasing_report_s == 5 || (int)$result->purchasing_report_s == 6 ? "checked" :"" ?> class="checksupersub" value="4" name="report[purchasing_report_s][]"></label>
                                            </div>
                                        </li>
                                        <li>
                                            <label> <input type="checkbox" <?= (int)$result->supplier_wise_d > 0 ? "checked" :"" ?>  class="checksub"> Supplier Wise-Detailed   </label>

                                            <div class="pull-right ">
                                                <label>View <input type="checkbox" <?= (int)$result->supplier_wise_d == 1 || (int)$result->supplier_wise_d == 7 || (int)$result->supplier_wise_d == 3 || (int)$result->supplier_wise_d == 5 ? "checked" :"" ?> class="checksupersub" value="1" name="report[supplier_wise_d][]"></label> &nbsp;&nbsp;
                                                <label>Excel Sheet <input type="checkbox" <?= (int)$result->supplier_wise_d == 2 || (int)$result->supplier_wise_d == 7 || (int)$result->supplier_wise_d == 3 ||  (int)$result->supplier_wise_d == 6 ? "checked" :"" ?> class="checksupersub" value="2" name="report[supplier_wise_d][]"></label> &nbsp;&nbsp;
                                                <label>Pdf <input type="checkbox" <?= (int)$result->supplier_wise_d == 4 || (int)$result->supplier_wise_d == 7 || (int)$result->supplier_wise_d == 5 || (int)$result->supplier_wise_d == 5 || (int)$result->supplier_wise_d == 6 ? "checked" :"" ?> class="checksupersub" value="4" name="report[supplier_wise_d][]"></label>
                                            </div>
                                        </li>
                                        <li>
                                            <label> <input type="checkbox" <?= (int)$result->supplier_wise_s > 0 ? "checked" :"" ?> class="checksub"> Supplier Wise-Summary   </label>

                                            <div class="pull-right ">
                                                <label>View <input type="checkbox" <?= (int)$result->supplier_wise_s == 1 || (int)$result->supplier_wise_s == 7 || (int)$result->supplier_wise_s == 3 || (int)$result->supplier_wise_s == 5 ? "checked" :"" ?> class="checksupersub" value="1" name="report[supplier_wise_s][]"></label> &nbsp;&nbsp;
                                                <label>Excel Sheet <input type="checkbox" <?= (int)$result->supplier_wise_s == 2 || (int)$result->supplier_wise_s == 7 || (int)$result->supplier_wise_s == 3 ||  (int)$result->supplier_wise_s == 6 ? "checked" :"" ?> class="checksupersub" value="2" name="report[supplier_wise_s][]"></label> &nbsp;&nbsp;
                                                <label>Pdf <input type="checkbox" <?= (int)$result->supplier_wise_s == 4 || (int)$result->supplier_wise_s == 7 || (int)$result->supplier_wise_s == 5 || (int)$result->supplier_wise_s == 5 || (int)$result->supplier_wise_s == 6 ? "checked" :"" ?> class="checksupersub" value="4" name="report[supplier_wise_s][]"></label>
                                            </div>
                                        </li>
                                        <li>
                                            <label> <input type="checkbox" <?= (int)$result->balance_stock > 0 ? "checked" :"" ?> class="checksub"> Balance Stock Report    </label>

                                            <div class="pull-right ">
                                                <label>View <input type="checkbox" <?= (int)$result->balance_stock == 1 || (int)$result->balance_stock == 7 || (int)$result->balance_stock == 3 || (int)$result->balance_stock == 5 ? "checked" :"" ?> class="checksupersub" value="1" name="report[balance_stock][]"></label> &nbsp;&nbsp;
                                                <label>Excel Sheet <input type="checkbox" <?= (int)$result->balance_stock == 2 || (int)$result->balance_stock == 7 || (int)$result->balance_stock == 3 ||  (int)$result->balance_stock == 6 ? "checked" :"" ?> class="checksupersub" value="2" name="report[balance_stock][]"></label> &nbsp;&nbsp;
                                                <label>Pdf <input type="checkbox" <?= (int)$result->balance_stock == 4 || (int)$result->balance_stock == 7 || (int)$result->balance_stock == 5 || (int)$result->balance_stock == 5 || (int)$result->balance_stock == 6 ? "checked" :"" ?> class="checksupersub" value="4" name="report[balance_stock][]"></label>
                                            </div>
                                        </li>
                                        <li>
                                            <label> <input type="checkbox" <?= (int)$result->damage_serial_d > 0 ? "checked" :"" ?> class="checksub"> Damage Serial - Detail    </label>

                                            <div class="pull-right ">
                                                <label>View <input type="checkbox" <?= (int)$result->damage_serial_d == 1 || (int)$result->damage_serial_d == 7 || (int)$result->damage_serial_d == 3 || (int)$result->damage_serial_d == 5 ? "checked" :"" ?> class="checksupersub" value="1" name="report[damage_serial_d][]"></label> &nbsp;&nbsp;
                                                <label>Excel Sheet <input type="checkbox" <?= (int)$result->damage_serial_d == 2 || (int)$result->damage_serial_d == 7 || (int)$result->damage_serial_d == 3 ||  (int)$result->damage_serial_d == 6 ? "checked" :"" ?> class="checksupersub" value="2" name="report[damage_serial_d][]"></label> &nbsp;&nbsp;
                                                <label>Pdf <input type="checkbox" <?= (int)$result->damage_serial_d == 4 || (int)$result->damage_serial_d == 7 || (int)$result->damage_serial_d == 5 || (int)$result->damage_serial_d == 5 || (int)$result->damage_serial_d == 6 ? "checked" :"" ?> class="checksupersub" value="4" name="report[damage_serial_d][]"></label>
                                            </div>
                                        </li>


                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-lg-5">
                <div class="success_user result text-success hidden"></div>
                <div class="failure_user result text-danger hidden">Password does not match ...</div>
                <div class="clearfix"></div>
                <button class="btn btn-primary pull-left " name="btn" value="1" type="submit">Save</button>
            </div>
            <?php echo form_close(); ?>
            </div>


        </div>

    </div>

</div>