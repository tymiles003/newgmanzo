<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Products
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Backend\Models;

use Phalcon\Validation\Validator;

class Products extends BaseModel{
    //put your code here
    public function initialize() {
        $this->belongsTo(
                "product_id", 
                "Categories", 
                "product_id",
                array('reusable' => true));
        $this->allowEmptyStringValues(array('brand','category'));
        //$this->skipAttributesOnCreate(array('category'));
    }
    
    public function beforeValidationOnCreate(){
        $this->add_timestamp    = new \Phalcon\Db\RawValue('now()');
    }
    
    /**
     * This is for the purpose of the string format
     * {type:vendor, id:1}
     * @param type $string
     */
    public static function __convert($string, $key=''){
        $product        = new Products();
        $strJsonDecode  = json_decode($string);
        $sqlStatement   = "SELECT * FROM vendor WHERE vendor_id=".$strJsonDecode->id;
        $result         = $product->getReadConnection()->query($sqlStatement);
                          $result->setFetchMode(\Phalcon\Db::FETCH_ASSOC);
        return empty($key) ? $result->fetch() : $result->fetch()[$key];
    }
    
    public function validation(){
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
    }
    
    /**
    public function validation(){
        $validator  = new \Phalcon\Validation();
        $validator->add('title', new Validator\Uniqueness(array(
            'models'    => 'Products',
            'message'   => 'Category already existed'
        )));
        $validator->add('title', new Validator\StringLength(array(
            'models'            => 'Products',
            'min'               => 2,
            'max'               => 50,
            'messageMaximun'    => 'Do not make the too long string',
            'messageMinimum'    => 'The category string is too small'
        )));
        return $this->validate($validator);
    }**/
}
