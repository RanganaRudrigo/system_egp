<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 8/14/15
 * Time: 12:32 PM
 */

class Summary_report_model extends CI_Model{


    function getAll(){
        return  $this->db->query("select *,purchase_order.sysid as pcid from purchase_order,user where purchase_order.supp_id = user.id")->result();
    }


} 