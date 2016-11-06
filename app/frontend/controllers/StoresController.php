<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ShopsController
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Frontend\Controllers;

use Phalcon\Events\Event;
use Phalcon\Mvc\Dispatcher,
        Multiple\Frontend\Models\Category,
        Multiple\Frontend\Models\Products,
        Multiple\Frontend\Models\Vendor;

class StoresController extends BaseController{
    //put your code here
    public function initialize() {
        parent::initialize();
        \Phalcon\Tag::appendTitle('Stores');
        $this->view->setVar('category', Category::find()->toArray());
        $this->view->setVar('helper', $this->component->helper);
    }
    
    public function indexAction(){
        $this->session->remove('cart_item');
        $state  = strtolower($this->session->get('strLocation'));
        $vendor = Vendor::find('address1="' . $state . '"')->toArray();
        $vendor ? $this->view->setVar('vendors', $vendor) : $this->view
                                           ->setVar('notAvailable',true);
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_AFTER_TEMPLATE);
        $this->view->setVar('category', Category::find()->toArray());
        $this->view->setVar('helper', $this->component->helper);
        return;
    }
    
    public function beforeExecuteRoute(Dispatcher $dispatcher){
        $action     = $dispatcher->getActionName();
        $controller = $dispatcher->getControllerName();
    }
    
    public function afterExecuteRoute(Dispatcher $dispatcher){
        
    }
    
    public function detailsAction($id=""){
        if(empty($id) && !is_null($id)){
            $this->response->redirect('stores/?strLocation='.$this->session->get('strLocation'));
            $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
            return;
        }
        $this->view->setVars(array(
            'store'     => $this->request->getQuery('display'),
            'details'   => Products::find('product_id='.$id)->getLast()));
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }

    public function browseAction(){
        
    }
    
    public function packageAction(){
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
}
