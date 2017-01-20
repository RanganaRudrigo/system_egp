<?php

/**
 * Created by PhpStorm.
 * User: Web
 * Date: 8/4/15
 * Time: 2:00 PM
 */
class Return_item_model extends CI_Model
{

    function getMax()
    {
        $maxid = $this->db->query('SELECT id as maxid FROM return_item order by id desc limit 1')->row()->maxid;
        return ($maxid >= 1 || $id == 1) ? $maxid + 1 : 1;
    }


    function get_searchAllInvoiceData($key)
    {

        return $this->db->from('invoice_item')
            ->join('invoice_item_details', "invoice_item_details.invoice_id = invoice_item.sysid")
            ->join('pro_item', "invoice_item_details.item_id = pro_item.id")
            ->join('user', "invoice_item.cus_id = user.id")

//            ->join('return_item_details', "invoice_item.sysid = return_item_details.invoice_id","invoice_item_details.item_id= return_item_details.item_id")

            ->select('invoice_item.sysid , invoice_item.i_code , invoice_item.i_date')
            ->select('invoice_item_details.item_id ,invoice_item_details.has_serial ,invoice_item_details.qty')
            ->select('pro_item.item_name , pro_item.sysid as item_code ,pro_item.id as proID')
            ->select('user.name')

//            ->select('return_item_details.sum(return_item_details.rtn_qty+return_item_details.dmg_qty) as returnTot')

            ->where('invoice_item.id', $key)
            ->get()->result();


    }


    function get_serial_number_by_invoice_id($proID, $InID)
    {

        return $this->db->from('purchase_item_serial')->where('p_id', $proID)->where('sold', $InID)->get()->result();

    }


    function insert_data_return_item()
    {

//        $data = $this->input->post('product')['Noserial'];

        $data = $this->input->post('form');
//        unset($data['in_id']);
        $data['status'] = 'No';

//        echo '<pre>';
//        print_r($data);
//        echo '</pre>';

        return $this->db->insert('return_item', $data) ? TRUE : FALSE;

    }


    function insert_no_serial_return_item()
    {

        $sysids = $this->input->post('form');
        $sysid = $sysids['sysid'];
        $invoice_ids = $this->input->post('form');
        $invoice_id = $invoice_ids['in_id'];
        $datas = $this->input->post('product');
        $data = $datas['No_serial'][$invoice_id];


        foreach ($data as $k => $v) {
            $data[$k] = array(
                'r_sysid' => $sysid,
                'invoice_id' => $invoice_id,
                'item_id' => $data[$k]['item_id'],
                'rtn_qty' => $data[$k]['re_qty'],
                'dmg_qty' => $data[$k]['dam_qty']
            );

            if($data[$k]['rtn_qty'] != 0 && $data[$k]['dmg_qty'] == 0){
//                echo $data[$k]['dmg_qty'];
                $this->insert_update_product_item($data[$k]['item_id'], $data[$k]['rtn_qty']);

            }elseif($data[$k]['rtn_qty'] != 0 && $data[$k]['dmg_qty'] != 0){
//                echo $data[$k]['rtn_qty'];
                $this->insert_update_product_item($data[$k]['item_id'], $data[$k]['rtn_qty']);
            }



        }

//        echo '<pre>';
//        print_r($data);
//        echo '</pre>';


        $this->db->insert_batch('return_item_details',$data) ? TRUE : FALSE;

//        echo '<pre>';
//        print_r($this->input->post('product')['No_serial']);
//        echo '</pre>';

    }

    function insert_serial_return_item()
    {
        $datas = $this->input->post('product');
        $data = $datas['serial'];

        $sysids = $this->input->post('form');
        $sysid = $sysids['sysid'];



        foreach ($data as $k => $v) {
            $data_all[] = array(
                'r_sysid' => $sysid,
                'invoice_id' => $sysids['in_id'],
                'r_s_key' => $data[$k]['r_s_no'],
                'd_s_key' => $data[$k]['d_s_no']

            );

//            if($data[$k]['r_s_no']!= null){
//                echo 'return';
//            }
        }



        for ($x = 0; $x < count($data_all); $x++) {


            if ($data_all[$x]['r_s_key'] != null) {

                    $data = array(
                        'return'=> $data_all[$x]['invoice_id'],
                        'sold' => '0'
                    );

                    $query = $this->db->from('purchase_item_serial')->where('key', $data_all[$x]['r_s_key'])->get()->first_row();


                   $this->insert_update_product_item($query->p_id, '1');
                  $this->db->where('key', $data_all[$x]['r_s_key'])->update('purchase_item_serial', $data);



            } else {
                $data = array(
                    'damage' => $data_all[$x]['invoice_id'],
                    'sold' => '0'
                );
                    $this->db->where('key', $data_all[$x]['d_s_key'])->update('purchase_item_serial', $data);
            }


        }


    }


    function insert_update_product_item($item_id, $item_qty)
    {


        $query = $this->db->from('pro_item')->select_sum('abl_qty')->where('id', $item_id)->get()->first_row();

        $data = array(
            'abl_qty' => $query->abl_qty + $item_qty
        );

        $this->db->where('id', $item_id)->update('pro_item', $data);




    }

    function getDamageReturnTotalWithOutSerial($in_id,$item_id)
    {
        $total = $this->db->query('select sum(rtn_qty+dmg_qty) as rTot from return_item_details where invoice_id="'.$in_id.'" && item_id="'.$item_id.'"')->row()->rTot;
        return ($total <= null) ? 0  : $total;
    }

    function getDamageReturnTotalWithSerial($in_id,$item_id){
//        echo 'select count(damage) as rTot from purchase_item_serial where damage="'.$in_id.'" && p_id="'.$item_id.'"';
        $total = $this->db->query('select count(damage) as rTot from purchase_item_serial where damage="'.$in_id.'" && p_id="'.$item_id.'"')->row()->rTot;
        return ($total <= 0) ? 0  : $total;
    }

    function getAll(){
        return $this->db->from('return_item')->order_by("id", "DESC")->get()->result();
    }

    function getReturnByID($rt_id){
        return $this->db->from('return_item')->where('sysid', $rt_id)->get()->result();
    }

//    function getReturnItemDetails($in_id,$rt_id){
//
//        return $this->db->from('invoice_item_details')
//            ->join("pro_item" , " pro_item.id = invoice_item_details.item_id " )
//
//            ->select("invoice_item_details.has_serial ,invoice_item_details.qty , invoice_item_details.invoice_id  " )
//            ->select("pro_item.item_name" )
//
//            ->where("invoice_item_details.invoice_id",$key)
//            ->get()->result();
//
//
//    }

    function getReturnItemWithSerialDamage($in_id){
        return $this->db->query('select pro_item.item_name,count(damage) as rTot from purchase_item_serial,pro_item where purchase_item_serial.damage="'.$in_id.'" && purchase_item_serial.p_id = pro_item.id group by purchase_item_serial.p_id')->result();
    }

    function getReturnItemWithSerialReturn($in_id){
        return $this->db->query('select pro_item.item_name,count(`return`) as rTot from purchase_item_serial,pro_item where purchase_item_serial.return="'.$in_id.'" && purchase_item_serial.p_id = pro_item.id group by purchase_item_serial.p_id')->result();
    }

    function getReturnItemWithOutSerial($rt_id){
        return $this->db->from('return_item_details')
            ->join("pro_item" , " pro_item.id = return_item_details.item_id " )

            ->select("return_item_details.invoice_id ,return_item_details.rtn_qty , return_item_details.dmg_qty  " )
            ->select("pro_item.item_name" )

            ->where("return_item_details.r_sysid",$rt_id)
            ->get()->result();
    }
} 