<?php
/**
 * Created by PhpStorm.
 * User: Web
 * Date: 8/13/15
 * Time: 11:08 AM
 */

class Customer_list extends CI_Controller{


    function __construct()
    {
        parent::__construct();

        $this->permissions = $this->session->userdata('customer_list');

        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        $this->load->model('Customer_list_model');


    }

    public function view(){

        if ($this->permissions == 7 || $this->permissions == 1 || $this->permissions == 3 || $this->permissions == 5) {

        $data['user_list'] = $this->Customer_list_model->getCustomerAll();


        if($this->input->post('download') != null){

            if ($this->permissions == 7 || $this->permissions == 2 || $this->permissions == 3 || $this->permissions == 6) {
            $result = $this->Customer_list_model->getCustomerAll();
            $data['result'] = $result;

            $this->report_download('reports/master/print_customer_list',$data,date("Y-m-d").'-Customer_List');
            }else {
            $data['view'] = 'errors/cus_error';
            $this->load->view('inc/body', $data);

            }
        }

        $data['view'] = 'reports/master/customer_list';
        $this->load->view('inc/body', $data);

        } else {
            $data['view'] = 'errors/cus_error';
            $this->load->view('inc/body', $data);

        }
    }

    public function print_report(){
        if ($this->permissions == 7 || $this->permissions == 4 || $this->permissions == 5 || $this->permissions == 6) {

        $result = $this->Customer_list_model->getCustomerAll();

        $data['result'] = $result;
        //this data will be passed on to the view
//        $data['the_content']='mPDF and CodeIgniter are cool!';

//load the view, pass the variable and do not show it but "save" the output into $html variable
        $html=$this->load->view('reports/master/print_customer_list', $data, true);

//this the the PDF filename that user will get to download
        $pdfFilePath = date("Y-m-d")."Customer_List.pdf";

//load mPDF library
        $this->load->library('pdf');
//actually, you can pass mPDF parameter on this load() function
        $pdf = $this->pdf->load();
//generate the PDF!
        $pdf->WriteHTML($html);
//offer it to user via browser download! (The PDF won't be saved on your server HDD)
        $pdf->Output($pdfFilePath, "I");
        } else {
            $data['view'] = 'errors/cus_error';
            $this->load->view('inc/body', $data);

        }
//        $pdf->Output($pdfFilePath, "D");
//        $pdf->Stream($pdfFilePath);



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