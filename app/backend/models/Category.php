<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Category
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
//use Phalcon\Mvc\Model\Validator;
namespace Multiple\Backend\Models;

use Phalcon\Validation\Validator;

class Category extends BaseModel{
    //put your code here
    private $_di, $_eventManager;
    
    public function initialize($di = NULL, $eventManager = NULL) {
        $this->belongsTo(
                "product_id", 
                "Multiple\Backend\Models\Products", 
                "product_id",
                array('reusable' => true));
        $this->_di              = $di;
        $this->_eventManager    = $eventManager;
    }
    
    //A fix for the namespacing issue with phalcon relationship
    public function getProducts(){
        return $this->getRelated('Multiple\Backend\Models\Products');
    }
    
    /**public function validation(){
        $this->validate(new Validator\Uniqueness(array(
            'field'     => 'product_desc',
            'message'   => 'Category already existed'
        )));
        
        $this->validate(new Validator\StringLength(array(
            "field"             => 'product_desc',
            'max'               => 150,
            'min'               => 2,
            'messageMaximum'    => 'Do not make the too long string',
            'messageMinimum'    => 'The category string is too small'
        )));
        if($this->validationHasFailed() == true){
            return false;
        }
    }**/
    
    public function validation(){
        $validator  = new \Phalcon\Validation();
        $validator->add('description', new Validator\Uniqueness(array(
            'model'     => $this,
            'message'   => 'Category Already Existed'
        )));
        
        $validator->add('description', new Validator\StringLength(array(
            "model"             => $this,
            'max'               => 150,
            'min'               => 2,
            'messageMaximum'    => 'Do not make the too long string',
            'messageMinimum'    => 'The category string is too small'
        )));
        return $this->validate($validator);
    }
}
