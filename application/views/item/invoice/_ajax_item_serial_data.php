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
        Product Serial List
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    </div>

    <div class="panel-body" >
        <div class="table-responsive" style="height: 60%;overflow: auto">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th >#</th>
                    <th>Serial No:</th>

                </tr>
                </thead>
                <tbody>
                <?php foreach ($data as $k =>  $row) { ?>

                    <tr style="cursor: pointer;">
                        <td ><?=$k+1 ?></td>
                        <td>
                            <div class="checkbox" >
                                <label>
                                    <input type="checkbox" class="s_check" name="key[]" value="<?= $row->key ?>"/> <?= $row->key ?>
                                </label>
                            </div>
                        </td>
                    </tr>
                <?php } ?>

                </tbody>
            </table>
            Number of selected serials : <strong id="s_count"> 0 </strong>
            <input type="hidden" name="s_count_val" value="0" id="s_count_val"/>


        </div>
        <!-- /.table-responsive -->
    </div>
    <div class="panel-footer">
        <button id="key_process" data-dismiss="modal" class="btn btn-primary key_process" type="button">Process</button>
        <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
    </div>


</div>