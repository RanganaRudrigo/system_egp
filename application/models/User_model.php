<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/20/15
 * Time: 10:17 AM
 */




class User_model extends CI_Model{



    function getMax(){
        $maxid = $this->db->query('SELECT id as maxid FROM user order by id desc limit 1')->row()->maxid;
        return ($maxid >= 1 || $id == 1) ? $maxid + 1 : 1;
    }

    function getAll(){
        return $this->db->from('user')->order_by("id", "desc")->get()->result();
//        return  $this->db->query("SELECT * FROM user ORDER BY id DESC")->result();
    }

//    function delete($id){
//        return $this->db->delete( 'user'  ,"id=$id") ? TRUE : FALSE ;
//    }

    function getById($id){
        return $this->db->from('user')->where('id',$id)->get()->first_row();
    }

    function update($id){

        $data = $this->input->post('form');
        return $this->db->update('user',$data,"id=$id") ? TRUE : FALSE ;
    }


    function get_data_like_statement($key){
        return $this->db->from('user')->like('name', $key)->get()->result();
    }



    function insert(){

        $data = $this->input->post('form');
        $data['status'] = 'No';
//        unset( $data['cus_code']);
//        print_r($data);

        return $this->db->insert( 'user' , $data ) ? TRUE : FALSE ;

    }



    function delete($id){


//        $query = $this->db->from('purchase_item')->where('id', $id)->get()->first_row();
//        $p_order_id=$query->p_order_id;
//        $item_id=$query->item_id;
//        $qty=$query->qty;

        $maxid=$this->db->query("SELECT count(*) as maxid from invoice_item,purchase_order where invoice_item.cus_id='".$id."' OR purchase_order.supp_id='".$id."'")->row()->maxid;

        if($maxid <= 0){

            $this->db->delete( 'user'  ,"id=$id");
            return true;

        }else{

            echo 'out';
            return false;
        }

        return false;
    }

} 