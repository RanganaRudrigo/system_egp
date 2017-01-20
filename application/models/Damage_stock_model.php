<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 9/1/15
 * Time: 10:10 AM
 */

class Damage_stock_model extends CI_Model{

    function getReturnItemWithOutSerial(){
        return $this->db->from('return_item_details')
            ->join("pro_item" , " pro_item.id = return_item_details.item_id " )

            ->select("return_item_details.invoice_id  " )
            ->select_sum("return_item_details.dmg_qty")
            ->select("pro_item.item_name" )
            ->group_by("pro_item.id")
//            ->where("return_item_details.item_id = pro_item.id")
            ->get()->result();
    }
    function getReturnItemWithSerialDamage(){
        return $this->db->query('select pro_item.item_name,count(purchase_item_serial.damage) as rTot from purchase_item_serial,pro_item where purchase_item_serial.damage !="0" && purchase_item_serial.p_id = pro_item.id group by purchase_item_serial.p_id')->result();
    }

} 