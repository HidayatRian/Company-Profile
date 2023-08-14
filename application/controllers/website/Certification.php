<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Certification extends CI_Controller {

	public function index() {
		$datacontent['url'] = 'website/Certification';
        $datacontent['title'] = 'Certification';

		$data['content']=$this->load->view('website/Certification/certification', $datacontent, TRUE);
		$this->load->view('website/layouts/html', $data);
		$data['title'] = $datacontent['title'] ;
	}

}
?>
