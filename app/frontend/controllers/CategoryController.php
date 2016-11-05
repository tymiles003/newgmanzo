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

use Phalcon\Mvc\View;
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
    
    public function indexAction($id = ''){
        $category   = null;
        $category   = !empty($id) ? $id : $this->request->getQuery('cat');
        $products   = Products::find('category="'.$category.'"')->toArray();
        if($products){
            $this->view->setVar('categoryName', 
                    Category::findFirstByCategory_id($category));
            $this->view->setRenderLevel(View::LEVEL_ACTION_VIEW);
            $this->view->setVar('products', $products);
            return;
        }
        $this->view->setRenderLevel(View::LEVEL_NO_RENDER);
        $this->response->redirect('index?task=move');
        return;
    }
}
