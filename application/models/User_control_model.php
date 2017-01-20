<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 8/26/15
 * Time: 12:08 PM
 */

class User_control_model extends CI_Model{

    function insert_user_control(){

        $user=$this->input->post('userd');
        $master=$this->input->post('master');
        $transaction=$this->input->post('transaction');
        $report=$this->input->post('report');

        foreach ($master as $k => $key) {
            $m_details[$k] = array_sum($master[$k]);
        }
        foreach ($transaction as $k => $key) {
            $t_details[$k] = array_sum($transaction[$k]);
        }
        foreach ($report as $k => $key) {
            $r_details[$k] = array_sum($report[$k]);
        }

        unset( $m_details['all']);
        unset( $t_details['all']);
        unset( $r_details['all']);


        $data=array_merge($user,(array)$m_details,(array)$t_details,(array)$r_details);

        return $this->db->insert( 'admin_tab' , $data ) ? TRUE : FALSE ;

    }

    function getAll(){
        return $this->db->from('admin_tab')->order_by("id", "desc")->get()->result();
//        return  $this->db->query("SELECT * FROM user ORDER BY id DESC")->result();
    }

    function getById($id){
        return $this->db->from('admin_tab')->where('id',$id)->get()->first_row();
    }

    function delete($id){
        $this->db->delete( 'admin_tab'  ,"id=$id");
    }

    function update($id){

        $s_key=array(
            'user'=>'0',
            'product_type'=>'0',
            'product_brand'=>'0',
            'product_model'=>'0',
            'product_item'=>'0',
            'purchase_item'=>'0',
            'invoice_item'=>'0',
            'return_item'=>'0',
            'customer_list'=>'0',
            'supplier_list'=>'0',
            'item_list'=>'0',
            'purchasing_report_d'=>'0',
            'purchasing_report_s'=>'0',
            'supplier_wise_d'=>'0',
            'supplier_wise_s'=>'0',
            'balance_stock'=>'0',
            'damage_serial_d'=>'0',

        );
        $this->db->update('admin_tab',$s_key,"id=$id");


        $user=$this->input->post('userd');
        $master=$this->input->post('master');
        $transaction=$this->input->post('transaction');
        $report=$this->input->post('report');



        foreach ($master as $k => $key) {
            $m_details[$k] = array_sum($master[$k]);

        }
        foreach ($transaction as $k => $key) {
            $t_details[$k] = array_sum($transaction[$k]);
        }
        foreach ($report as $k => $key) {
            $r_details[$k] = array_sum($report[$k]);
        }

        unset( $m_details['all']);
        unset( $t_details['all']);
        unset( $r_details['all']);





        $data=array_merge($user,(array)$m_details,(array)$t_details,(array)$r_details);

//        echo '<pre>';
//        print_r($s_key);
//        echo '</pre>';

        $this->db->update('admin_tab',$s_key,"id=$id");
//        return $this->db->insert( 'admin_tab' , $data ) ? TRUE : FALSE ;
        return $this->db->update('admin_tab',$data,"id=$id") ? TRUE : FALSE ;
    }

} 