<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of LockController
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Backend\Controllers;

class LockController extends BaseController{
    //put your code here
    private $_component;
    
    public function initialize() {
        parent::initialize();
        \Phalcon\Tag::appendTitle('Lock Screen');
        $this->assets->collection('headers')->addCss(
                    'assets/css/pages/lockscreen.css');
        $this->_component   = $this->component->helper;
    }
    
    public function indexAction(){
        $auth       = $this->session->get('auth');
        
        //check for the users login details
        $varToken   = empty($auth) || is_null($auth) ? 
                $this->session->get('email')['email'] : $auth['email'];
        
        //Post and check for the users login again
        if($this->request->isPost() && (!empty($varToken))){
            $users = Users::findFirstByEmail($varToken);
            
            if($users){
                if($this->security->checkHash(
                        $this->request->getPost('password'),$users->password)){
                    $this->__registerSession($users);
                    LoggersPlugin::getLoggerInst()->setLogFile('locks/log_'.date('Y-m-d'));
                    LoggersPlugin::getLoggerInst()->getLogger()->info($users->firstname.' Locked Screen');
                    $this->response->redirect('dashboard/?token='.$this->_component->makeRandomString(15));
                    return;
                }
                else{
                    $this->security->hash(rand());
                    $this->flash->error('<strong>Invalid Password</strong>');
                    $this->dispatcher->forward(array('action' => 'index'));
                    return;
                }
            }
            else{
                $this->flash->error('<strong>Sorry no session existed</strong>');
                $this->response->redirect('index/?task=locked_screen');
            }
        }
        $this->view->setRenderLevel(Phalcon\Mvc\View::LEVEL_LAYOUT);
        $this->session->set('email',array('email' => $varToken));
        $this->session->remove('auth');
        return;
    }
    
    private function __registerSession(Users $user){
        $this->session->set('auth', array(
            'firstname' => $user->firstname,
            'codename'  => $user->codename,
            'token'     => $this->_component->makeRandomString(15),
            'role'      => $user->role, 'email'     => $user->email,
            'active'    => 1
        ));
    }
}
