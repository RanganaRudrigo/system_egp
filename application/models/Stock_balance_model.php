<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 8/18/15
 * Time: 2:46 PM
 */

class Stock_balance_model extends CI_Model{


    function getAll(){

        return $this->db->from('pro_item')
            ->join("pro_type" , " pro_type.id = pro_item.pro_type_id " )
            ->join("pro_brand" , " pro_brand.id = pro_item.pro_brand_id " )
            ->join("pro_model" , " pro_model.id = pro_item.pro_model_id " )

            ->select("pro_type.pro_type, pro_brand.pro_brand,pro_model.pro_model ,pro_item.id as itemId,pro_item.sysid ,pro_item.item_name ,pro_item.has_sireal ,pro_item.abl_qty   " )
            // ->where("pro_item.abl_qty !=0 ")
            ->order_by("pro_item.id", "DESC")
            ->get()->result();
    }
    function getPurchaseItemByOrderByItemId($item_id){

        return $this->db->from('return_item_details')
            ->select("sum(dmg_qty) as qty  " )
            ->where("return_item_details.item_id","$item_id")
            ->get()->first_row();

//        return $this->db->query('select * from return_item_details where item_id="'.$item_id.'"')->result();

    }


    function serialDamage($item_id){

        return $this->db->query('select COUNT(*) as count   from purchase_item_serial where p_id ="'.$item_id.'" and  damage != "0"')->first_row();

    }



} 