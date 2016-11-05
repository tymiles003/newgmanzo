<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of SessionController
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Backend\Controllers;

use Multiple\Backend\Models\Vendor,
    Multiple\Backend\Plugins\LoggersPlugin;

class SessionController extends BaseController{
    private $_component;
    
    //put your code here
    public function initialize() {
        parent::initialize();
        \Phalcon\Tag::appendTitle('Session Start');
        $this->_component   = $this->component->helper;
    }
    
    public function indexAction(){
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        return;
    }
    
    public function startAction(){
        if($this->request->isPost()){
            $users = Vendor::findFirstByEmail(
                    $this->request->getPost('email'));
            if($users != false){
                if($this->security->checkHash(
                        $this->request->getPost('password'),$users->password)){
                    $this->__registerSession($users);
                    LoggersPlugin::getLoggerInst()->setLogFile($users->display_name);
                    LoggersPlugin::getLoggerInst()->getLogger()->info(
                            $users->username.' Logged Into Backend Application');
                    $this->response->redirect('backend/dashboard/?token='.
                            $this->_component->makeRandomString(15));
                    return;
                }
                else{
                    $this->security->hash(rand());
                    $this->flash->error('<strong>Invalid Password String</strong>');
                    $this->dispatcher->forward(array(
                        'controller' => 'index', 'action' => 'index'));
                    return;
                }
            }
            else{
                $this->flash->error('<strong>Invalid User Try Again</strong>');
                $this->dispatcher->forward(array(
                    'controller' => 'index','action' => 'index'));
                return;
            }
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        $this->response->redirect('backend/index?task=login&type=failed');
    }
    
    private function __registerSession(Vendor $user){
        $this->session->set('auth', array(
            'username'  => $user->display_name,
            'phone'     => $user->phone,
            'token'     => $this->_component->makeRandomString(15),
            'role'      => $user->role, 'email' => $user->email,
            'active'    => 1, 'vendor_id' => $user->vendor_id
        ));
    }
}
