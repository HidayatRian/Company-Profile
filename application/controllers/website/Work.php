<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class work extends CI_Controller {

	public function index() {
		$datacontent['url'] = 'website/Work';
        $datacontent['title'] = 'How We Work';

		$data['content']=$this->load->view('website/Work/work', $datacontent, TRUE);
		$this->load->view('website/layouts/html', $data);
		$data['title'] = $datacontent['title'] ;
	}

}
?>
