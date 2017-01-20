<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/22/15
 * Time: 1:42 PM
 */
?>
<div class="panel panel-primary" id="modal-header" style="margin-bottom: 0;">
    <div class="panel-heading">
        Product Brand List
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    </div>
    <div class="panel-body">
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th>System ID</th>
                    <th>Product Brand Name</th>
                    <th>Product Model Name</th>
                    <th>Date</th>
                </tr>
                </thead>
                <tbody>
                <?php


                foreach ($data as $row) { ?>
                    <tr>
                        <td><a href="<?= base_url().'Master/Product_model/update/'.$row->id ?>"><?= $row->sysid ?></a></td>
                        <td> <?= $row->pro_brand ?></td>
                        <td> <a href="<?= base_url().'Master/Product_model/update/'.$row->id ?>"> <?= $row->pro_model ?></a></td>
                        <td><?= $row->date ?></td>
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