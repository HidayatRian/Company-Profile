<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class about extends CI_Controller {

	public function index() {
		$datacontent['url'] = 'website/About';
        $datacontent['title'] = 'About';

		$data['content']=$this->load->view('website/About/about', $datacontent, TRUE);
		$this->load->view('website/layouts/html', $data);
		$data['title'] = $datacontent['title'] ;
	}

}
?>
