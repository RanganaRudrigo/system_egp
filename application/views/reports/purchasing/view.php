<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 8/13/15
 * Time: 10:29 AM
 */
?>
<style type="text/css">
    #sortable1{
        list-style: none;
    }
</style>
<div class=" container-fluid">
    <!-- master -->
    <div id="master" class="row">
        <div class="col-lg-12">

            <h1 class="page-header"><i class="fa fa-print"></i> Purchasing Reports

            </h1>
            <div class="loader progress progress-striped active hidden">
                <div style="width: 100%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="100" role="progressbar" class="progress-bar progress-bar-success">
                </div>
            </div>


            <div class="col-lg-4 col-md-4 col-sm-12 ui-sortable-handle" id="catRow_3">
                <div class="panel panel-yellow">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-th-list  fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge"></div>
                                <div><h2>Detailed </h2><strong>Report</strong></div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <a href="<?= base_url() ?>Reports/Purchasing/Detail_report/view">
                            <span class="pull-left">View&nbsp;</span>
                            <span class="pull-left"><i class="fa fa-arrow-circle-right"></i></span>
                        </a>

                        <div class="clearfix"></div>
                    </div>

                </div>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-12 ui-sortable-handle" id="catRow_2">
                <div class="panel panel-green">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-th fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge"></div>
                                <div><h2>Summary </h2><strong>Report</strong></div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <a href="<?= base_url() ?>Reports/Purchasing/Summary_report/view">
                            <span class="pull-left">View&nbsp;</span>
                            <span class="pull-left"><i class="fa fa-arrow-circle-right"></i></span>
                        </a>

                        <div class="clearfix"></div>
                    </div>

                </div>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-12 ui-sortable-handle" id="catRow_12">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-users fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge"></div>
                                <div><h2>Supplier Wise</h2><strong>Detailed Report</strong></div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <a href="<?= base_url() ?>Reports/Purchasing/Supplier_wise/view">
                            <span class="pull-left">View&nbsp;</span>
                            <span class="pull-left"><i class="fa fa-arrow-circle-right"></i></span>
                        </a>

                        <div class="clearfix"></div>
                    </div>

                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 ui-sortable-handle" id="catRow_12">
                <div class="panel panel-red">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-3">
                                <i class="fa fa-plus-square fa-5x"></i>
                            </div>
                            <div class="col-xs-9 text-right">
                                <div class="huge"></div>
                                <div><h2>Supplier Wise </h2><strong>Summary Report</strong></div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                        <a href="<?= base_url() ?>Reports/Purchasing/Supplier_wise_summary/view">
                            <span class="pull-left">View&nbsp;</span>
                            <span class="pull-left"><i class="fa fa-arrow-circle-right"></i></span>
                        </a>

                        <div class="clearfix"></div>
                    </div>

                </div>
            </div>



        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.master -->
</div>



<!--select * from purchase_order-->

<!--select *,pro_item.item_name,user.name from purchase_order,purchase_item,pro_item,user where purchase_item.p_order_id='PRCH0001' and purchase_order.sysid='PRCH0001' and pro_item.id=purchase_item.item_id and purchase_order.supp_id=user.id-->