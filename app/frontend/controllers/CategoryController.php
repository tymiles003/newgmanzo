<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CategoryController
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Frontend\Controllers;

//use Phalcon\Mvc\View;
use Multiple\Frontend\Models\Products;
use Multiple\Frontend\Models\Category;

class CategoryController extends BaseController{
    //put your code here
    private $_category;
    
    public function initialize() {
        parent::initialize();
        \Phalcon\Tag::appendTitle('Categories');
        $category   = Category::find()->toArray();
        $this->view->setVar('helper', $this->component->helper);
        $this->view->setVar('category', $category);
    }
    
    public function indexAction(){
        $params = $this->request->getQuery();
        $this->view->pager  = Products::getList($params);
        $this->view->cat    = Category::findFirstByCategory_id($params['cat']);
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
}
