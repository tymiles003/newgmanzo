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
        //Check if the url param has vendor;
        if($this->request->hasQuery('vendor')){
            $vendor = $this->request->getQuery('vendor');
            $this->session->set('vendor_id', $vendor);
        }
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
    
    public function categoryAction(){
        $params             = $this->request->getQuery();
        $vendor_id          = $this->session->get('vendor_id');
        $this->view->pager  = Products::__getCatProBuilder($params, 
                array('vendor_id' => $this->request->getQuery('vendor')));
        $this->view->vendors = Vendor::findFirstByVendor_id($vendor_id);
        $this->view->cat    = Category::findFirstByCategory_id($params['cat']);
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function beforeExecuteRoute(\Phalcon\Dispatcher $dispatcher){
        $action     = $dispatcher->getActionName();
        $controller = $dispatcher->getControllerName();
        if(!$this->session->has('strLocation')){
            $this->response->redirect('stores/getStores');
        }
    }
    
    public function afterExecuteRoute(Dispatcher $dispatcher){
        
    }
    
    public function getStoresAction(){
        $this->view->setVar('stores', Vendor::find()->toArray());
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function detailsAction($id=""){
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }

    public function browseAction(){
        $this->view->setVar('others', array(
            'vendor_id' => $this->request->getQuery('vendor')));
        $this->view->setVar('category', Category::find()->toArray());
        $this->view->setVar('vendors', Vendor::findFirstByVendor_id(
                                    $this->request->getQuery('vendor')));
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function packageAction(){
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
}
