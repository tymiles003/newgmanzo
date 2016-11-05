<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of i
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Backend\Controllers;

class IndexController extends BaseController{
    //put your code here
    public function initialize() {
        parent::initialize();
        \Phalcon\Tag::appendTitle('Administrator');
    }
    
    public function indexAction(){
        $this->assets->collection('headers')->addJs('admin/css/pages/login.css');
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_MAIN_LAYOUT);
    }
    
    public function show404(){
        
    }
    
    public function show409(){
        
    }
}
