<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CheckoutController
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Frontend\Controllers;

use Multiple\Frontend\Models\Vendor,
 Multiple\Frontend\Models\Products,
 Multiple\Frontend\Models\Category;

class CheckoutController extends BaseController{
    //put your code here
    public function initialize() {
        parent::initialize();
        \Phalcon\Tag::appendTitle('Check Out');
        $this->view->setVar('vendors', $this->__getVendor(10));
        $this->view->setVar('strLocation', $this->session->get('strLocation'));
        $this->view->setVar('category', Category::find()->toArray());
    }
    
    public function indexAction(){
        //check whether clear exists in query
        if($this->request->hasQuery('clear')){
            $this->session->remove('cart_item');
        }
        
        if($this->session->has('cart_item')){
            $this->view->setVars(array(
                'cart_item' => $this->session->get('cart_item')));
            $this->view->setVar('grandTotal', $this->__getItemTotal());
            $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
            return;
        }
        else{
            $this->flash->warning('Cart Item is Empty! Try place orders');
            $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
            return;
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function processAction(){
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function cartShowAction(){
        $counter    = 0;
        $response   = new \Phalcon\Http\Response();
        if($this->request->isPost() && $this->request->isAjax()){
            $tyQuantity = $this->request->getPost('quantity');
            foreach($_SESSION['cart_item'] as $keys => $values){
                $subTotal       = $_SESSION['cart_item'][$keys]['price'];
                $urlQuantity    = $this->request->getPost('quantity')[$counter];
                $_SESSION['cart_item'][$keys]['subtotal']   = $subTotal * $urlQuantity;
                $_SESSION['cart_item'][$keys]['qty']        = $urlQuantity;
                $counter++;
            }
            $response->setHeader('Content-Type', 'application/json');
            $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
            $response->setJsonContent(array('status' => true));
            $response->sendHeaders(); $response->send();
            exit;
        }
    }
    
    public function removeAction(){
        $response   = new \Phalcon\Http\Response();
        $getItemId  = $this->request->getPost('id');
        if($this->request->isPost() && $this->request->isAjax()){
            foreach($_SESSION['cart_item'] as $keys => $values){
                if($getItemId == $keys){
                    unset($_SESSION['cart_item'][$getItemId]);
                    $response->setHeader('Content-Type', 'application/json');
                    $response->setJsonContent(array('status' => true));
                    $response->sendHeaders(); $response->send();
                    $this->view->setRenderLevel(
                            \Phalcon\Mvc\View::LEVEL_NO_RENDER);
                    return;
                }
            }
        }
        $this->view->setRenderLevel(
                \Phalcon\Mvc\View::LEVEL_NO_RENDER);
        return;
    }
    
    private function __getItemTotal(){
        $totalAmount    = []; $counter  = 0;
        foreach($this->session->get('cart_item') as $keys=>$values){
            foreach($values as $index => $elements){
                if($index == 'price'){
                    $q  = $values['qty'];
                    $totalAmount[]  = $elements * $q;
                }
            }
        }
        return (array_sum($totalAmount));
        exit();
    }
    
    private function __getVendor($limit=''){
        return !empty($limit) ? Vendor::find(array(
            'limit' => $limit))->toArray() : Vendor::find()->toArray();
    }
}
