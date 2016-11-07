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

    public static function getList($params, $others=NUll){
        //Query default values
        $sort = $params['sort'] ?: 'r.title';
        $order = $params['order'] ?: 'ASC';
        $page   = (int) $params['page'] ?: 1;
        $limit  = $params['limit'] ?: 8;
        
        //Create the builder paging query
        $builder    = \Phalcon\Di::getDefault()
                ->getModelsManager()->createBuilder()
                ->from(array('r' => 'Multiple\Frontend\Models\Products'))
                ->where('r.category = '.$params['cat'])->orderBy("$sort $order");
        $paginator  = new PaginatorQueryBuilder(array(
            'builder' => $builder, 'limit' => $limit, 'page' => $page));
        return $paginator;
    }
    
    public static function __getCategoryProduct($where, array $others=NULL){
        $builder    = \Phalcon\Di::getDefault()->getModelsManager()
                ->createBuilder()->from('Multiple\Frontend\Models\Products')
                ->where('Multiple\Frontend\Models\Products.category = '.$where);
        if(!is_null($others) && !empty($others) && is_array($others)){
            foreach($others as $keys => $values){
                $builder->andWhere('Multiple\Frontend\Models\Products.'.$keys.' = "'.$values.'"');
            }
        }
        $builderStackFlow   = $builder->limit(10)->getQuery()->execute();
        return count($builderStackFlow) > 0 ? $builderStackFlow : array();
    }
    
    public static function __getCatProBuilder($params, array $others=NULL){
        //Query default values
        $sort = $params['sort'] ?: 'title';
        $order = $params['order'] ?: 'ASC';
        $page   = (int) $params['page'] ?: 1;
        $limit  = $params['limit'] ?: 8;
        
        //Create the builder paging query
        $builder    = \Phalcon\Di::getDefault()->getModelsManager()
                ->createBuilder()->from('Multiple\Frontend\Models\Products')
                ->where('Multiple\Frontend\Models\Products.category = '.$params['cat']);
        if(!is_null($others) && !empty($others) && is_array($others)){
            foreach($others as $keys => $values){
                $builder->andWhere('Multiple\Frontend\Models\Products.'.$keys.' = "'.$values.'"');
            }
        }
        $builder->limit(10)->orderBy("$sort $order");
        $paginator  = new PaginatorQueryBuilder(array(
            'builder' => $builder, 'limit' => $limit, 'page' => $page));
        return $paginator;
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
