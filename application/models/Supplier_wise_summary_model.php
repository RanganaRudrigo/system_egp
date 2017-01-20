<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 8/18/15
 * Time: 12:49 PM
 */

class Supplier_wise_summary_model extends CI_Model{


    function getAll($supp_id){

        return $this->db->from('purchase_order')
            ->join("user" , " user.id = purchase_order.supp_id " )
            ->select("purchase_order.sysid as pid ,purchase_order.p_code , purchase_order.p_date , purchase_order.date ,user.name , " )
            ->where("supp_id",$supp_id)
            ->get()->result();
    }

    function getAllQtyTotal($p_id){

        return $this->db->query('select COUNT(*) as count ,sum(qty) as qty from purchase_item where p_order_id ="'.$p_id.'"')->result();
    }

} 