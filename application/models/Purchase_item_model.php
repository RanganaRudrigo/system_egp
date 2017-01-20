<?php

/**
 * Created by PhpStorm.
 * User: Web
 * Date: 7/27/15
 * Time: 2:00 PM
 */
class Purchase_item_model extends CI_Model
{

    function getMax()
    {
        $id=null;
        $maxid = $this->db->query('SELECT id as maxid FROM purchase_order order by id desc limit 1')->row()->maxid;
        return ($maxid >= 1 || $id == 1) ? $maxid + 1 : 1;
    }

    function get_supplier_data_like_statement($key)
    {
        return $this->db->from('user')->where('type', 'Supplier')->like('name', $key)->get()->result();
    }


    function getAll(){

//        return $this->db->from('purchase_item')->order_by("id", "desc")->get()->result();

        return $this->db->from('purchase_item')
            ->join("pro_item" , " pro_item.id = purchase_item.item_id " )
            ->select("purchase_item.* ,pro_item.item_name" )
            ->order_by("purchase_item.id", "DESC")
            ->get()->result();
    }

    function get_serial_number_by_item_id_pre_id($key,$pid)
    {

        return $this->db->from('purchase_item_serial')->where('p_id', $key)->where('p_item_id', $pid)->get()->result();

    }


    function insert_purchase_order()
    {

        $data = $this->input->post('form');
        unset($data['supp_name']);
        $data['status'] = 'No';

//        echo '<pre>';
//        print_r($data);
//        echo '</pre>';

        return $this->db->insert('purchase_order', $data) ? TRUE : FALSE;

    }


    function insert_purchase_item()
    {
//        $data = $this->input->post('product')['nonserial'];

//        new line
        $datas = $this->input->post("product");
        $data = $datas['nonserial'];

//        list($data) = $this->input->post("product");

        foreach ($data as $k => $key) {
            unset($data[$k]['item_code']);
            unset($data[$k]['name']);
            $this->insert_update_product_item($data[$k]['item_id'],$data[$k]['qty']);
        }

//        echo '<pre>';
//        print_r($data);
//        echo '</pre>';

        return $this->db->insert_batch('purchase_item', $data) ? TRUE : FALSE;
    }


    function insert_update_product_item($item_id,$item_qty){

        $query = $this->db->from('pro_item')->select_sum('abl_qty')->where('id',$item_id)->get()->first_row();

        if($query->abl_qty == 0 ){

            $data = array(
                'abl_qty' => $item_qty
            );

            $this->db->where('id', $item_id)->update('pro_item', $data);

        }else{
            $data = array(
                'abl_qty' => $query->abl_qty+$item_qty
            );

            $this->db->where('id', $item_id)->update('pro_item', $data);
        }

    }



    function insert_purchase_item_serial()
    {
        $datas = $this->input->post('product');
        $data = $datas['serial'];
//        echo '<pre>';
//        print_r($data);
//        echo '</pre>';
        foreach ($data as $k => $key) {

            if($data[$k]['pre'] !='' && $data[$k]['digit'] && $data[$k]['start']){

                for($i= $data[$k]['start'];$i < $data[$k]['qty']+$data[$k]['start'];$i ++ ){
                    $s_key[]=array(
                        'p_id'=>$data[$k]['item_id'],
                        'p_item_id'=>$data[$k]['p_order_id'],
                        'key'=>$data[$k]['pre'].str_repeat("0",$data[$k]['digit']).$i,
                        'status'=>"No"
                    );
                }

            }elseif($data[$k]['pre'] !='' && $data[$k]['start'] != ''){
                for($i= $data[$k]['start'];$i < $data[$k]['qty']+$data[$k]['start'];$i ++ ){
                    $s_key[]=array(
                        'p_id'=>$data[$k]['item_id'],
                        'p_item_id'=>$data[$k]['p_order_id'],
                        'key'=>$data[$k]['pre'].$i,
                        'status'=>"No"
                    );
                }
            }elseif($data[$k]['start'] != '' && $data[$k]['digit'] !=''){
                for($i= $data[$k]['start'];$i < $data[$k]['qty']+$data[$k]['start'];$i ++ ){
                    $s_key[]=array(
                        'p_id'=>$data[$k]['item_id'],
                        'p_item_id'=>$data[$k]['p_order_id'],
                        'key'=>str_repeat("0",$data[$k]['digit']).$i,
                        'status'=>"No"
                    );
                }
            }else{
                for($i= $data[$k]['start'];$i < $data[$k]['qty']+$data[$k]['start'];$i ++ ){
                    $s_key[]=array(
                        'p_id'=>$data[$k]['item_id'],
                        'p_item_id'=>$data[$k]['p_order_id'],
                        'key'=>$i,
                        'status'=>"No"
                    );
                }
            }


            unset($data[$k]['item_code']);
            unset($data[$k]['name']);
            unset($data[$k]['pre']);
            unset($data[$k]['start']);
            unset($data[$k]['digit']);

            $this->insert_update_product_item($data[$k]['item_id'],$data[$k]['qty']);
       }

//        echo '<pre>';
////        echo $data[$k]['pre'].str_repeat("0",$data[$k]['digit']).$i;
//        print_r($s_key);
//        echo '</pre>';
        $this->db->insert_batch('purchase_item', $data);
        return $this->db->insert_batch('purchase_item_serial', $s_key) ? TRUE : FALSE;

//        echo '<pre>';
//        print_r($s_key);
//        echo '</pre>';

//      return $this->db->insert( 'purchase_item' , $data ) ? TRUE : FALSE ;
    }


    function delete($id){

//        $serial_count=0;

        $query = $this->db->from('purchase_item')->where('id', $id)->get()->first_row();
        $p_order_id=$query->p_order_id;
        $item_id=$query->item_id;
        $qty=$query->qty;

//        echo "SELECT count(*) as maxid from return_item_details ,purchase_item_serial  where return_item_details.invoice_id ='$in_id' and purchase_item_serial.`return`='$in_id' or purchase_item_serial.damage='$in_id'";

        $maxid=$this->db->query("SELECT count(*) as maxid from invoice_item_details where invoice_item_details.item_id='".$item_id."'")->row()->maxid;

        if($maxid <= 0){
//            echo 'in';

            $query = $this->db->from('pro_item')->select_sum('abl_qty')->where('id', $item_id)->get()->first_row();
            $data = array(
                'abl_qty' => $query->abl_qty - $qty
            );
            $this->db->where('id', $item_id)->update('pro_item', $data);

            $this->db->delete( 'purchase_item'  ,"id=$id");

            return true;

        }else{

            echo 'out';
            return false;
        }

        return false;
    }

}