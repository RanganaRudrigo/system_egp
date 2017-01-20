<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/22/15
 * Time: 2:04 PM
 */

class Product_brand_model extends CI_Model{


    function getMax(){
        $maxid = $this->db->query('SELECT id as maxid FROM pro_brand order by id desc limit 1')->row()->maxid;
        return ($maxid >= 1 || $id == 1) ? $maxid + 1 : 1;
    }

    function getAll(){
        return $this->db->from('pro_brand')->order_by("id", "desc")->get()->result();
//        return  $this->db->query("SELECT * FROM pro_type ORDER BY id DESC")->result();
    }

    function delete($id){
        return $this->db->delete( 'pro_brand'  ,"id=$id") ? TRUE : FALSE ;
    }

    function getById($id){
        return $this->db->from('pro_brand')->where('id',$id)->get()->first_row();
    }

    function update($id){

        $data = $this->input->post('form');
        return $this->db->update('pro_brand',$data,"id=$id") ? TRUE : FALSE ;
    }


    function get_data_like_statement($key){
        return $this->db->from('pro_brand')->like('pro_brand', $key)->get()->result();
    }

    function insert(){

        $data = $this->input->post('form');
        $data['status'] = 'No';
//        unset( $data['cus_code']);
//        print_r($data);

        return $this->db->insert( 'pro_brand' , $data ) ? TRUE : FALSE ;

    }

} 