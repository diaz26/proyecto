<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	function __construct(){
    parent::__construct();
    $this->load->model('model_header');
    $this->load->model('model_informacion');
  }

	public function to($ban=NULL)
	{
    if ($ban!=NULL) {
			$head['page']=$this->model_informacion->consultPageO($ban);

			if (!empty($head)) {
				$head['head']=$this->model_header->consultOficial(1);
				//$result['productos']=$this->model_productos->ProductosO($ban);
				$this->load->view('header_ecommerce',$head);
	  		$this->load->view('view_ecommerce');
	  		$this->load->view('footer_ecommerce',$head);
			}else {
				$this->load->view('error_page');
			}
    }else {
      $this->load->view('error_page');
    }
	}
}
