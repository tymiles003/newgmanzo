<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Order
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Frontend\Models;

class Order extends BaseModel{
    
    public function initialize(){
        $this->allowEmptyStringValues(array(
            'company','additional_info'));
    }
    
    public function beforeValidationOnCreate(){
        
    }
}
