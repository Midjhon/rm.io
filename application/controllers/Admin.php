<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller 
{
	public function __construct()
	{
		parent::__construct();
		// cek kalo blm login -> pake helper
		is_logged_in();
		
	}
    public function index()
    {
        $data['title'] = "Dashboard";
		// load model nya
		$this->load->model('MainModel','main');
		
		// query submenu
		$data['join'] = $this->main->getJoint();
        template_view('admin/index', $data);
    }
}