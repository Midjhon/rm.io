<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
    }
    public function index()
    {
        $data['title'] = "Pendaftaran Pasien";
        $this->load->model('MainModel');
        $data['join'] = $this->MainModel->get('user_menu');
        $data['join2'] = $this->MainModel->get('user_sub_menu');
        template_view('user/index', $data);
    }
}