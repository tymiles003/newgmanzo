<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Multiple\Frontend\Models;

/**
 * Description of Pickupdelivery
 *
 * @author ENNY
 */

use Phalcon\Validation\Validator;

class Pickupdelivery extends BaseModel{
    //put your code here
    public function beforeValidationOnCreate(){
        $this->pickupdate   = new \Phalcon\Db\RawValue('NOW()');
    }
    
    public function validation(){
        $validation = new \Phalcon\Validation();
        $validation->add('trans_id', new Validator\Email(array(
            'model'     => $this,
            'message'   => 'Please Refresh! ID already existed'
        )));
        return $this->validate($validation);
    }
}
