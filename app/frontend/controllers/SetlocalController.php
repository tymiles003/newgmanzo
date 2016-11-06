<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of SetlocalController
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Frontend\Controllers;

class SetlocalController extends BaseController{
    //put your code here
    public function indexAction(){
        //var_dump($this->request->getPost()); exit;
        $response    = new \Phalcon\Http\Response();
        if($this->request->isPost() && $this->request->isAjax()){
            $response->setRawHeader("HTTP/1.1 200 OK");
            $state  = strtolower($this->request->getPost('state'));
            $response->setHeader('Content-Type', 'application/json');
            $response->setJsonContent(array("status" => "OK"));
            $this->session->set('strLocation', $state);
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        $response->sendHeaders(); $response->send();
        return;
    }
}
