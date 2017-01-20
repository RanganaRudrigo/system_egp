<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/23/15
 * Time: 9:19 AM
 */

class Product_item_model extends CI_Model{

    function getMax(){
        $maxid = $this->db->query('SELECT id as maxid FROM pro_item order by id desc limit 1')->row()->maxid;
        return ($maxid >= 1 || $id == 1) ? $maxid + 1 : 1;
    }

    function getAll(){
//

        return  $this->db->query("Select
  pro_item.*,
  pro_type.pro_type As typeName,
  pro_brand.pro_brand As brandName,
  pro_model.pro_model As modelName
From
  pro_item Inner Join
  pro_brand On pro_item.pro_brand_id = pro_brand.id Inner Join
  pro_type On pro_item.pro_type_id = pro_type.id Inner Join
  pro_model On pro_model.pro_brand = pro_brand.id And pro_item.pro_model_id = pro_model.id")->result();
    }



    function getById($id){
        return $this->db->from('pro_item')->where('id',$id)->get()->first_row();
    }

    function update($id){

        $data = $this->input->post('form');
//    echo '<pre>';
//        print_r($data);
//        echo '</pre>';
        return $this->db->update('pro_item',$data,"id=$id") ? TRUE : FALSE ;
    }


    function get_data_like_statement($key){

        $this->db->select('*');
        $this->db->from('pro_item');
        $this->db->select('pro_item.* , pro_type.pro_type As typeName,pro_brand.pro_brand As brandName,pro_model.pro_model As modelName');
        $this->db->join('pro_brand', 'pro_item.pro_brand_id = pro_brand.id');
        $this->db->join('pro_type', 'pro_item.pro_type_id = pro_type.id');
        return $this->db->join('pro_model', 'pro_model.pro_brand = pro_brand.id And pro_item.pro_model_id = pro_model.id')->like('item_name',$key)->get()->result();

//        return $this->db->from('pro_item')->like('pro_brand', $key)->get()->result();
    }

    function load_model_search_by_brand_name($key){
        return $this->db->from('pro_model')->where('pro_brand', $key)->get()->result();
    }

    function insert(){

        $data = $this->input->post('form');
        $data['status'] = 'No';
//        unset( $data['cus_code']);
//    echo '<pre>';
//        print_r($data);
//        echo '</pre>';
        return $this->db->insert( 'pro_item' , $data ) ? TRUE : FALSE ;

    }

    function delete($id){

        echo "SELECT count(*) as maxid from purchase_item where purchase_item.item_id='".$id."' ";
        $maxid=$this->db->query("SELECT count(*) as maxid from purchase_item where purchase_item.item_id='".$id."' ")->row()->maxid;

        if($maxid <= 0){
            $this->db->delete( 'pro_item'  ,"id=$id");
            return true;
        }else{
            echo 'out';
            return false;
        }
        return false;

    }

} 