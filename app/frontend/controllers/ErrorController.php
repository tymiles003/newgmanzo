<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Multiple\Frontend\Controllers;

/**
 * Description of ErrorController
 *
 * @author ENNY
 */
class ErrorController extends BaseController{
    //put your code here
    public function initialize() {
        parent::initialize();
        \Phalcon\Tag::appendTitle('Error Page');
    }
    
//    public function indexAction(){
//        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
//    }
    
    public function show404Action(){
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function show505Action(){
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
}
