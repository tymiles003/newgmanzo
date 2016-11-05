<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of LoginController
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Frontend\Controllers;

use Multiple\Frontend\Models\Register;

class LoginController extends BaseController{
    //put your code here
    public function indexAction(){
        if($this->request->isPost()){
            $register   = Register::findFirstByEmail(
                    $this->request->getPost('email'));
            if($register != false){
                if($this->security->checkHash(
                        $this->request->getPost('password'), $register->password)){
                    $this->__registerSession($register);
                    $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                    $this->flash->success('You are welcome! '.$register->firstname);
                    $this->response->redirect('order/?token='.uniqid());
                    return;
                }
            }
            else{
                $this->dispatcher->forward(array(
                    'controller' => 'checkout', 'action' => 'process'));
                $this->flash->error('Not a valid user. Register Now');
                return;
            }
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        $this->response->redirect('checkout/process?task=redirect&'.uniqid());
        return;
    }
    
    public function logoutAction(){
        $this->session->remove('auth');
        $this->session->remove('cart_item');
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        $this->response->redirect('checkout/process?token=' . uniqid());
    }
    
    private function __registerSession(Register $register){
        $this->session->set('auth', array(
            'role'          => $register->role,
            'email'         => $register->email,
            'register_id'   => $register->register_id,
            'fullname'      => $register->firstname.' '.$register->lastname,
            'firstname'     => $register->firstname,
            'lastname'      => $register->lastname,
            'phonenumber'   => $register->phonenumber,
            'codename'      => $register->codename
        ));
    }
}
