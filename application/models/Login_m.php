<?php

/**
 * Created by PhpStorm.
 * User: Rangana Rudrigo
 * Date: 6/17/15
 * Time: 3:01 PM
 */
class login_m extends CI_Model
{


    function check()
    {

        $username = $this->input->get('username');
        $password = $this->input->get('password');

        $array = array('username' => $username, 'password' => $password);

        $row = $this->db->from('admin_tab')->where($array)->get()->first_row();






        if (is_object($row)) {

            $data = array(
                'id' => $row->id,
                'username' => $row->username,
                'last_login_time' => $row->last_login_time,
                'user'=>$row->user,
                'product_type'=>$row->product_type,
                'product_brand'=>$row->product_brand,
                'product_model'=>$row->product_model,
                'product_item'=>$row->product_item,
                'purchase_item'=>$row->purchase_item,
                'invoice_item'=>$row->invoice_item,
                'return_item'=>$row->return_item,
                'customer_list'=>$row->customer_list,
                'supplier_list'=>$row->supplier_list,
                'item_list'=>$row->item_list,
                'purchasing_report_d'=>$row->purchasing_report_d,
                'purchasing_report_s'=>$row->purchasing_report_s,
                'supplier_wise_d'=>$row->supplier_wise_d,
                'supplier_wise_s'=>$row->supplier_wise_s,
                'balance_stock'=>$row->balance_stock,
                'damage_serial_d'=>$row->damage_serial_d,
            );

            $this->session->set_userdata($data);

            return 1;
        }
            return 2;

    }

}




