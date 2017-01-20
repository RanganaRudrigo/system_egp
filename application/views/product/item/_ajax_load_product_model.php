<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/23/15
 * Time: 9:59 AM
 */
?>
    <option value="" selected="">---- Select Product Model Name ----</option>
<?php
    foreach ($data as $row) { ?>
           <option value="<?= $row->id ?>"> <?= $row->pro_model ?></option>
    <?php } ?>