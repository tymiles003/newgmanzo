<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of i
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Frontend\Controllers;

use Multiple\Frontend\Models\Vendor,
    Multiple\Frontend\Models\Category,
    Multiple\Frontend\Models\Products;

class IndexController extends BaseController{
    //put your code here
    public function initialize() {
        parent::initialize();
        \Phalcon\Tag::appendTitle('Welcome');
        $this->view->setVar('vendors', $this->__getVendor(10));
    }
    
    public function indexAction(){
        $counter    = 1;
        $category   = Category::find()->toArray();
        $available  = Category::find(array('limit'=>6))->toArray();
        //shuffle($keysflow);
        //Products::__convert('{"type":"vendor","id":"1"}');
        $this->view->setVars(array(
            'keysflow'      => $keysflow,
            'category'      => $category,
            'available'     => $available,
            'helper'        => $this->component->helper,
        ));
        foreach($available as $keys => $values){
            $this->view->setVar('tab_cat'.$counter,
                    Products::find('category='.$counter)->toArray());
            $counter++;
        }
        $this->view->setVars(array('products' => Products::find(
                array('limit'=>20,'order' => 'RAND()'))->toArray()));
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_LAYOUT);
        return;
    }
    
    public function show404(){
        
    }
    
    public function show409(){
        
    }
    
    private function __getVendor($limit=''){
        return !empty($limit) ? Vendor::find(array(
            'limit' => $limit, 'order' => 'RAND()'))->toArray() :
            Vendor::find(array('order' => 'RAND()'))->toArray();
    }
}
