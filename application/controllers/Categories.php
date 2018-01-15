<?php 
class Categories extends CI_Controller {


    public function create()
    {

       if(!$this->session->userdata('logged_in')){

				redirect('users/login');

		}
        $data['title'] = 'Create A Category';
        $this->form_validation->set_rules('name', 'Name', 'required');
        if ($this->form_validation->run() === FALSE) {

                $this->load->view('templates/header');
                $this->load->view('categories/create', $data);
                $this->load->view('templates/footer');
        }
        else {
               $this->load->model('category_model');
               $this->category_model->create_category();
               $this->session->set_flashdata('category_created','Your category has been created');
               redirect('categories');
        }
    }
    public function index()
    {

        	$data['title'] = 'All Categories';
            $this->load->model('category_model');
            $data['categories'] = $this->category_model->get_categories();
            $this->load->view('templates/header');
			$this->load->view('categories/index', $data);
			$this->load->view('templates/footer');

    }

    public function posts($id)
    {
        $this->load->model('category_model');
        $data['title'] = $this->category_model->get_category($id)->name;
        $this->load->model('post_model');
        $data['posts'] = $this->post_model->get_posts_by_category($id);

            $this->load->view('templates/header');
			$this->load->view('posts/index', $data);
			$this->load->view('templates/footer');


    }

    public function delete($id)
	{
		if(!$this->session->userdata('logged_in')){

			redirect('users/login');

		}
		$this->load->model('category_model');
		$this->category_model->delete_category($id);
		$this->session->set_flashdata('category_deleted','Your Category has been Deleted');
		redirect('categories');
	}

}