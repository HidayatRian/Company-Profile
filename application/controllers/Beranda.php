<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Beranda extends CI_Controller {

	public function index()
	{
		$data['title'] = 'Perusahan XYZ';
		$data['content']=$this->load->view('website/berandaView', $data, TRUE);
		$this->load->view('website/layouts/html', $data);
	}
}
