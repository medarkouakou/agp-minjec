<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends MX_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
	    $this->load->view('welcome_message');
	}
	
	public function menu(){
		//var_dump($this->session->userdata());
		//exit;
		if(isset($_SESSION['group_id']) and $_SESSION['group_id'] === 1){
			$data['identity'] = $this->session->userdata('identity');
			$this->load->view('theme/index', $data);
		}else{
			$this->index();
		}
	}
	
	public function creer_utilisateur(){
		echo 'ok';
	}
}
