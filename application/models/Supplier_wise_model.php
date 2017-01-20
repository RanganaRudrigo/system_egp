<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 8/18/15
 * Time: 11:46 AM
 */

class Supplier_wise_model extends  CI_Model{


    function getAll($supp_id){

        return $this->db->from('purchase_order')
            ->join("user" , " user.id = purchase_order.supp_id " )
            ->select("purchase_order.sysid ,purchase_order.p_code , purchase_order.p_date , purchase_order.date ,user.name  " )
            ->where("supp_id",$supp_id)->order_by("purchase_order.id", "DESC")
            ->get()->result();


    }

    function getPurchaseItemByOrderBySysId($sysid){
        return $this->db->from('purchase_item')
            ->join('pro_item' , "pro_item.id = purchase_item.item_id")
            ->select("purchase_item.has_serial , purchase_item.qty , pro_item.item_name , pro_item.sysid ")
            ->where("p_order_id",$sysid)->get()->result();

    }


} 