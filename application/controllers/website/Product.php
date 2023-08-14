<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class product extends CI_Controller {

	public function index() {
		$datacontent['url'] = 'website/Product';
        $datacontent['title'] = 'Product';

		$data['content']=$this->load->view('website/Product/product', $datacontent, TRUE);
		$this->load->view('website/layouts/html', $data);
		$data['title'] = $datacontent['title'] ;
	}

}
?>
