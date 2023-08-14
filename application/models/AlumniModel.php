<!-- <?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AlumniModel extends CI_Model{
	function get(){
		$data =$this->db->get('tb_alumni');
		return $data;
	}

	// function memasukkan data
	function insert($data=array()){
		$this->db->insert('tb_alumni',$data);
		$info=' <div class="alert alert-success alert-dismissible show fade">
                <p><i class="bi bi-check-circle"></i> Data Berhasil Disimpan</p>
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>';
	    $this->session->set_flashdata('info',$info);
	}
	
	
	// function update/ubah data
	function update($data=array(),$where=array()){
		foreach ($where as $key => $value) {
			$this->db->where($key,$value);
		}
		$this->db->update('tb_alumni',$data);
		$info=' <div class="alert alert-success alert-dismissible show fade">
                <p><i class="bi bi-check-circle"></i> Data Berhasil Diubah</p>
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>';
	    $this->session->set_flashdata('info',$info);
	}

	// hapus data
		function delete($where=array()){
			foreach ($where as $key => $value) {
				$this->db->where($key,$value);
			}
			$this->db->delete('tb_alumni');
			$info=' <div class="alert alert-success alert-dismissible show fade">
					<p><i class="bi bi-check-circle"></i> Data Berhasil Dihapus</p>
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
					</div>';
			$this->session->set_flashdata('info',$info);
		}

}

?> -->