<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 8/13/15
 * Time: 11:13 AM
 */

class Customer_list_model extends  CI_Model{

    function getCustomerAll(){
        return $this->db->from('user')->where('type', 'Customer')->order_by("id", "ASC")->get()->result();
    }




} 