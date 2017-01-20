<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/20/15
 * Time: 11:43 AM
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

<h1 class="page-header">Transaction</h1>
<div class="loader progress progress-striped active hidden">
    <div style="width: 100%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="100" role="progressbar" class="progress-bar progress-bar-success">
    </div>
</div>


<div class="col-lg-4 col-md-4 col-sm-12 ui-sortable-handle" id="catRow_3">
    <div class="panel panel-yellow">
        <div class="panel-heading">
            <div class="row">
                <div class="col-xs-3">
                    <i class="fa fa-truck  fa-5x"></i>
                </div>
                <div class="col-xs-9 text-right">
                    <div class="huge"></div>
                    <div><h2>Purchase</h2><strong>&nbsp;</strong></div>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <a href="<?= base_url() ?>Transaction/Purchase_item/add">
                <span class="pull-left">Add&nbsp;</span>
                <span class="pull-left"><i class="fa fa-arrow-circle-right"></i></span>
            </a>
            <a href="<?= base_url() ?>Transaction/Purchase_item/view">
                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                <span class="pull-right">View &nbsp;</span>
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
                    <i class="fa fa-paste fa-5x"></i>
                </div>
                <div class="col-xs-9 text-right">
                    <div class="huge"></div>
                    <div><h2>Invoice - Item</h2><strong>&nbsp;</strong></div>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <a href="<?= base_url() ?>Transaction/Invoice_item/add">
                <span class="pull-left">Add&nbsp;</span>
                <span class="pull-left"><i class="fa fa-arrow-circle-right"></i></span>
            </a>
            <a href="<?= base_url() ?>Transaction/Invoice_item/view">
                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                <span class="pull-right">View &nbsp;</span>
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
                    <i class="fa fa-reply fa-5x"></i>
                </div>
                <div class="col-xs-9 text-right">
                    <div class="huge"></div>
                    <div><h2>Return - Item</h2><strong>&nbsp;</strong></div>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            <a href="<?= base_url() ?>Transaction/Return_item/add">
                <span class="pull-left">Add&nbsp;</span>
                <span class="pull-left"><i class="fa fa-arrow-circle-right"></i></span>
            </a>
            <a href="<?= base_url() ?>Transaction/Return_item/view">
                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                <span class="pull-right">View &nbsp;</span>
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