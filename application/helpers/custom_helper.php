<?php  

    function assets ($file='') {
        return base_url('assets/' .$file);
    }

    function template ($a='') {
        return base_url('assets/templates/mazer/' .$a);
    }

// FUNCTION UPLOAD FILE GEOJSON
    function upload($name='file', $types="images"){
        if($types=='images'){
            $allowed_types='gif|jpg|png';
            $config['max_width']         = 1024;
            $config['max_height']        = 768;
        }
        elseif($types=='geojson'){
            $allowed_types='geojson';
        }

        $CI =& get_instance();
        $config['upload_path']          = './assets/unggah/geojson';
        $config['allowed_types']        = $allowed_types;
        $config['max_size']             = 1000;
        $CI->load->library('upload', $config);
            
                if ( ! $CI->upload->do_upload($name))
                {
                        $respone['info']=false;
                        $respone['message']= $CI->upload->display_errors();
                }
                else
                {
                        $respone['info']=true;
                        $respone['message']= "Berhasil di Upload";
                        $respone['upload_data']= $CI->upload->data();
                }
        return $respone;
}
