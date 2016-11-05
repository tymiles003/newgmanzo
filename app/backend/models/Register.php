<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Register
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Backend\Models;

use Phalcon\Validation\Validator;

class Register extends BaseModel{
    
    //put your code here
    public function initialize(){
        
    }
    
    public function validation(){
        $validator   = new \Phalcon\Validation();
        $validate->add('email', new Validator\Uniqueness(array(
            'model'     => $this,
            'message'   => 'Email Already Existed'
        )));
        return $this->validate($validator);
    }
}
