<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 8/14/15
 * Time: 11:10 AM
 */

class Detail_report_model extends CI_Model{
//        echo '<pre>';
//        print_r($return->sysid);
////        echo $return->sysid;
//        echo '</pre>';
    function getAll(){

        return $this->db->from('purchase_order')
            ->join("user" , " user.id = purchase_order.supp_id " )
            ->select("purchase_order.sysid ,purchase_order.p_code , purchase_order.p_date , purchase_order.date ,user.name  " )->order_by("purchase_order.id", "DESC")->get()->result();

      /*  return $this->db->from('purchase_order')
            ->join('purchase_item', "purchase_item.p_order_id = purchase_order.sysid")
            ->join('pro_item', "purchase_item.item_id = pro_item.id")
            ->join('user', "purchase_order.supp_id = user.id")
            ->select('purchase_item.*')
            ->select('pro_item.sysid,pro_item.item_name')
            ->select('user.*')
            ->get()->result();*/

    }

    function getPurchaseItemByOrderBySysId($sysid){
        return $this->db->from('purchase_item')
            ->join('pro_item' , "pro_item.id = purchase_item.item_id")
            ->select("purchase_item.has_serial , purchase_item.qty , pro_item.item_name , pro_item.sysid ")
            ->where("p_order_id",$sysid)->get()->result();

    }

} 