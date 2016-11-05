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
namespace Multiple\Frontend\Models;

use Phalcon\Mvc\Model\Validator;
use Phalcon\Paginator\Adapter\QueryBuilder as PaginatorQueryBuilder;

class Products extends BaseModel{
    //put your code here
    public function initialize() {
        $this->belongsTo(
                "product_id", 
                "Categories", 
                "product_id",
                array('reusable' => true));
    }
    
    /**
     * This is for the purpose of the string format
     * {type:vendor, id:1}
     * @param type $string
     */
    public static function __convert($string, $key=''){
        $product        = new Products();
        $strJsonDecode  = json_decode($string);
        $sqlStatement   = "SELECT * FROM vendor "
                                        . "WHERE vendor_id=".$strJsonDecode->id;
        $result         = $product->getReadConnection()->query($sqlStatement);
                          $result->setFetchMode(\Phalcon\Db::FETCH_ASSOC);
        return empty($key) ? $result->fetch() : $result->fetch()[$key];
    }
    
    //A fix for the namespacing attributes
    public function getCategories(){
        return $this->getRelated('Multiple\Frontend\Models\Categories');
    }
    
    /**
     * Built for the json returned result for Added Vendor
     * {type:vendor, id:1} formatted
     * @param type $string
     * @return type
     */
    public static function __getAddress($string, $key=''){
        $stackProduct   = Products::__convert($string, $key);
        return $stackProduct;
    }
    
    /**
     * Built for the json returned result for Added Vendor
     * {type:vendor, id:1} formatted
     * @param type $string
     * @return type
     */
    public static function __getNextAddress($string, $key=''){
        $stackProduct   = Products::__convert($string, $key);
        return $stackProduct;
    }

    public static function getList($params){
        //Query default values
        
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
}
