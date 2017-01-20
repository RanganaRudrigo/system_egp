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
        Supplier List
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    </div>
    <div class="panel-body">
        <div class="table-responsive" style="height: 60%;overflow: auto">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th style="display: none">id</th>
                    <th>User Code</th>
                    <th>Supplier Name</th>
                    <th>Telephone</th>
                    <th>Mobile</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($data as $row) { ?>

                    <tr style="cursor: pointer;" class="sup_table">
                        <td style="display: none"><?= $row->id ?></td>
                        <td><?= $row->cus_code ?></td>
                        <td><?= $row->name ?> </td>
                        <td><?= $row->tele ?></td>
                        <td><?= $row->mobile ?></td>
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