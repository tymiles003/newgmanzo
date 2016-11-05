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
        if($this->request->hasQuery('task')){
            $this->session->set(
                    'store-name', $this->request->getQuery('task'));
        }
        if($this->session->has('strLocation')){
            $vendors    = Vendor::find('address1="'.
                    $this->session->get('strLocation').'"')->toArray();
            if($vendors != false){
                $this->view->setVars(array('vendors' => $vendors));
            }
            else{
                $this->view->setVars(array('notAvailable' => true));
            }
        }
        $this->view->setVar('category', Category::find()->toArray());
        $this->view->setVar('helper', $this->component->helper);
    }
    
    public function indexAction(){
        $this->session->remove('cart_item');
                //$this->session->remove('cart_item');
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_LAYOUT);
        return;
    }
    
    public function beforeExecuteRoute(Dispatcher $dispatcher){
        $action     = $dispatcher->getActionName();
        $controller = $dispatcher->getControllerName();
        
        if($this->request->hasQuery('task')){
            $shop_id    = $this->request->getQuery('task', 'int');
            $this->session->set('v_id', $shop_id);
        }
        
        if($controller == 'stores' && $action == 'index'){
            if(!$this->session->has('strLocation')){
                return $dispatcher->forward(array(
                    'action'    => 'package'
                ));
            }
        }
        elseif($controller == 'stores' && $action == 'browse'){
            //$this->session->remove('cart_item');
            if(!$this->session->has('strLocation')){
                return $dispatcher->forward(array(
                    'action'    => 'package'
                ));
            }
        }
    }
    
    public function afterExecuteRoute(Dispatcher $dispatcher){
        
    }
    
    public function detailsAction($id=""){
        if(empty($id) && !is_null($id)){
            $this->response->redirect(
                    'stores/?strLocation='.$this->session->get('strLocation'));
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
        if($this->request->hasQuery('task') && !$this->request->has('goto')){
            $this->view->setVars(array(
                'id'    => $this->request->getQuery('task'),
                'name'  => $this->request->getQuery('display')
            ));
            $this->session->set('store-name', $this->request->getQuery('task'));
            $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
            return;
        }
        if($this->session->has('store-name') && !$this->request->has('goto')){
            $store_id   = $this->session->get('store-name');
            $type       = json_encode(array('type' => 'vendor','id' => $store_id));
            $products   = Products::find("added_by='".$type."'")->toArray();
            if($products){
                $this->view->setVars(array('products' => $products));
            }
            $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
            return;
        }
        elseif($this->session->has('store-name') && $this->request->has('goto')){
            $store_id   = $this->session->get('store-name');
            $type       = json_encode(array('type' => 'vendor','id' => $store_id));
            $products   = Products::find("added_by='".$type."' AND category='".(int)
                    $this->request->getQuery('goto')."'")->toArray();
            if($products){
                $this->view->setVars(array('products' => $products));
            }
            $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
            return;
        }
        else{
            $this->view->setVars(array('products' => Products::find()->toArray()));
            $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
            return;
        }
    }
    
    public function packageAction(){
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
}
