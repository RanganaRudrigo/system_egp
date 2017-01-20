<?php
/**
 * Created by PhpStorm.
 * User: Rangana Rudrigo
 * Date: 7/9/15
 * Time: 10:56 AM
 */

class setting_m extends CI_Model{

    function update(){

        $id=$this->input->post('id');
        $d['password'] = $this->input->post('passconf');


        return $this->db->update('admin_tab',$d,"id=$id") ? TRUE : FALSE ;
    }

} 