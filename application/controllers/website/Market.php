<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class market extends CI_Controller {

	public function index() {
		$datacontent['url'] = 'website/Market';
        $datacontent['title'] = 'Market';

		$data['content']=$this->load->view('website/Market/market', $datacontent, TRUE);
		$this->load->view('website/layouts/html', $data);
		$data['title'] = $datacontent['title'] ;
	}

}
?>
