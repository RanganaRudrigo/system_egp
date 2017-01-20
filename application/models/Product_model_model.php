<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/22/15
 * Time: 2:33 PM
 */

class Product_model_model extends CI_Model{


    function getMax(){
        $maxid = $this->db->query('SELECT id as maxid FROM pro_model order by id desc limit 1')->row()->maxid;
        return ($maxid >= 1 || $id == 1) ? $maxid + 1 : 1;
    }

    function getAll(){
//        return $this->db->from('pro_model')->order_by("id", "desc")->get()->result();
        return  $this->db->query("Select pro_model.*, pro_brand.pro_brand As pro_brand_name From pro_model Inner Join pro_brand On pro_model.pro_brand = pro_brand.id")->result();

    }

    function delete($id){
        return $this->db->delete( 'pro_model'  ,"id=$id") ? TRUE : FALSE ;
    }

    function getById($id){
        return $this->db->from('pro_model')->where('id',$id)->get()->first_row();
    }

    function update($id){

        $data = $this->input->post('form');
        return $this->db->update('pro_model',$data,"id=$id") ? TRUE : FALSE ;
    }


    function get_data_like_statement($key){

        $this->db->select('*');
        $this->db->from('pro_model');
        $this->db->select('pro_model.* , pro_brand.pro_brand');
        return $this->db->join('pro_brand', 'pro_model.pro_brand = pro_brand.id')->like('pro_model',$key)->get()->result();

//        return $this->db->from('pro_model')->like('pro_model', $key)->get()->result();
    }

    function insert(){

        $data = $this->input->post('form');
        $data['status'] = 'No';
//        unset( $data['cus_code']);
//        print_r($data);

        return $this->db->insert( 'pro_model' , $data ) ? TRUE : FALSE ;

    }

} 