<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 9/1/15
 * Time: 10:08 AM
 */

class Damage_stock extends CI_Controller{


    function __construct()
    {
        parent::__construct();

        $this->permissions = $this->session->userdata('damage_serial_d');

        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        $this->load->model('Damage_stock_model');


    }


    function view(){
        if ($this->permissions == 7 || $this->permissions == 1 || $this->permissions == 3 || $this->permissions == 5) {

        $data_wothout = $this->Damage_stock_model->getReturnItemWithOutSerial();
        $data_s_damage = $this->Damage_stock_model->getReturnItemWithSerialDamage();

        $data['out_s']=$data_wothout;
        $data['s_damage']=$data_s_damage;

            if($this->input->post('download') != null){

                if ($this->permissions == 7 || $this->permissions == 2 || $this->permissions == 3 || $this->permissions == 6) {

                    $data_wothout = $this->Damage_stock_model->getReturnItemWithOutSerial();
                    $data_s_damage = $this->Damage_stock_model->getReturnItemWithSerialDamage();

                    $data['out_s']=$data_wothout;
                    $data['s_damage']=$data_s_damage;




                    $this->report_download('reports/damage/print_damage_stock_report',$data,date("Y-m-d").'-Damage_Stock_Report');

                } else {
                    $data['view'] = 'errors/cus_error';
                    $this->load->view('inc/body', $data);

                }
            }


//            echo $this->db->last_query();

//        echo '<pre>';
//        print_r($data);
//        echo '</pre>';

            $data['view']='reports/damage/damage_view';
            $this->load->view('inc/body',$data);

        } else {
            $data['view'] = 'errors/cus_error';
            $this->load->view('inc/body', $data);

        }

    }

    public function print_report(){

        if ($this->permissions == 7 || $this->permissions == 4 || $this->permissions == 5 || $this->permissions == 6) {

            $data_wothout = $this->Damage_stock_model->getReturnItemWithOutSerial();
            $data_s_damage = $this->Damage_stock_model->getReturnItemWithSerialDamage();

            $data['out_s']=$data_wothout;
            $data['s_damage']=$data_s_damage;



//        $data['result'] = $result;
            //this data will be passed on to the view
//        $data['the_content']='mPDF and CodeIgniter are cool!';

//load the view, pass the variable and do not show it but "save" the output into $html variable
            $html=$this->load->view('reports/damage/print_damage_stock_report', $data, true);

//this the the PDF filename that user will get to download
            $pdfFilePath = date("Y-m-d")."-Damage_Stock_Report .pdf";

//load mPDF library
            $this->load->library('pdf');
//actually, you can pass mPDF parameter on this load() function
            $pdf = $this->pdf->load();
//generate the PDF!
            $pdf->WriteHTML($html);
//offer it to user via browser download! (The PDF won't be saved on your server HDD)
            $pdf->Output($pdfFilePath, "I");
//        $pdf->Output($pdfFilePath, "D");
//        $pdf->Stream($pdfFilePath);

        } else {
            $data['view'] = 'errors/cus_error';
            $this->load->view('inc/body', $data);

        }

    }

    function report_download($path,$data,$file_name){
        $result=$data;
        ob_start();
//        $this->load->view($path,array('records'=>$data ));
        $this->load->view($path,$result );
        $content = ob_get_contents();
        ob_clean();
        header("Content-type: application/vnd.ms-excel");
        header("Content-Disposition: attachment; filename=$file_name.xls");
        echo $content;
        exit();
    }

} 