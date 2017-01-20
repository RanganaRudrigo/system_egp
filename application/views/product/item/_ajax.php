<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/23/15
 * Time: 12:28 PM
 */
?>
<div class="panel panel-primary" id="modal-header" style="margin-bottom: 0;">
    <div class="panel-heading">
        Product Item List
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    </div>
    <div class="panel-body">
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th>System ID</th>
                    <th>Product Type Name</th>
                    <th>Product Brand Name</th>
                    <th>Product Model Name</th>
                    <th>Product Item Name</th>
                </tr>
                </thead>
                <tbody>
                <?php


                foreach ($data as $row) { ?>
                    <tr>
                        <td><a href="<?= base_url().'Master/Product_item/update/'.$row->id ?>"><?= $row->sysid ?></a></td>
                        <td> <?= $row->typeName ?></td>
                        <td> <?= $row->brandName ?></td>
                        <td> <?= $row->modelName ?></td>
                        <td> <a href="<?= base_url().'Master/Product_item/update/'.$row->id ?>"> <?= $row->item_name ?></a></td>
                    </tr>
                <?php } ?>

                </tbody>
            </table>
        </div>
        <!-- /.table-responsive -->
    </div>
    <div class="panel-footer">
        <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
    </div>

</div>