<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 8/13/15
 * Time: 3:17 PM
 */

class Supplier_list_model extends  CI_Model{

    function getSupplierAll(){
        return $this->db->from('user')->where('type', 'Supplier')->order_by("id", "ASC")->get()->result();
    }



} 