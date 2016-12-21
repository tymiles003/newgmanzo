<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Multiple\Frontend\Controllers;

/**
 * Description of CustomerController
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
class CustomerController extends BaseController{
    //put your code here
    public $_config;
    private $_registry, $_codename, $_phoneNumber;
    
    public function initialize() {
        parent::initialize();
        \Phalcon\Tag::appendTitle('Customer');
        //var_dump($this->config['db']); exit;
        $this->_config = array(
            "host"  => $this->config['db']['host'],
            "user"  => $this->config['db']['username'],
            "pass"  => $this->config['db']['password'],
            "db"    => $this->config['db']['dbname']
        );
        
        $this->view->setVar('category', \Multiple\Frontend\
                Models\Category::find()->toArray());
        $this->__setPropertyTask();
    }
    
    public function indexAction(){
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function historyAction(){
        $config = $this->_config;
        //$this->__tableDataCssJs();
        $response   = new \Phalcon\Http\Response();
        $primaryKey = 'sales_id'; $table = 'sales';
        if($this->request->isGet() && $this->request->isAjax()){
            $columns    = array(
                array('db' => 'sales_id', 'dt' => 0),
                array('db' => 'trans_id', 'dt' => 1),
                array('db' => 'agent', 'dt' => 2),
                array('db' => 'date_of_order', 'dt' => 3),
                array('db' => 'delivery_time', 'dt' => 4),
                array('db' => 'status', 'dt' => 5),
                array('db' => 'trans_id', 'dt' => 6, 
                    'formatter' => function($d, $row){
                        $track = \Multiple\Frontend\Models\Job::find(
                                'trans_id="'.$d.'"')->getLast();
                    return $track ? $track->tracking_link : '';
                }),
            );
            $whereAll    = 'register_id='.
                    $this->session->get('auth')['register_id'];
            $response->setJsonContent(
                    \Multiple\Frontend\Plugins\SspPlugin::complex(
                            $_GET, $config, $table, $primaryKey, $columns, NULL, $whereAll));
            $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
            $response->setHeader('Content-Type', 'application/json');
            $response->send();
            exit();
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function wishListAction(){
        if($this->request->isAjax() && $this->request->isPost()){
            
        }
    }
    
    public function editWishListAction(){
        
    }
    
    public function deleteWishListAction(){
        
    }
    
    public function clearWishListAction(){
        
    }
    
    public function purchasesAction(){
        $config = $this->_config;
        $this->__tableDataCssJs();
        $quantity   = array(); $pricing = array();
        $response   = new \Phalcon\Http\Response();
        $primaryKey = 'sales_id'; $table = 'sales';
        if($this->request->isGet() && $this->request->isAjax()){
            $columns    = array(
                array('db' => 'sales_id', 'dt' => 0),
                array('db' => 'trans_id', 'dt' => 1),
                array('db' => 'date_of_order', 'dt' => 2),
                array('db' => 'item_sold', 'dt' => 3, 'formatter' => function($d, $row){
                    $taskFlow   = $this->__fixItemJSON($d, array('qty','price'));
                    while(list($key, $value) = each($taskFlow['qty'])){
                        $quantity[]  = $value;
                    }
                    while(list($key, $value) = each($taskFlow['price'])){
                        $pricing[]  = $value;
                    }
                    for($key = 0; $key < count($pricing); $key++){
                        $taskFlow['total'][] = $pricing[$key] * $quantity[$key];
                    }
                    return number_format(array_sum($taskFlow['total']), 2);
                }),
                array('db' => 'item_sold', 'dt' => 4),
            );
            $whereAll    = 'register_id='.
                    $this->session->get('auth')['register_id'];
            $response->setJsonContent(
                    \Multiple\Frontend\Plugins\SspPlugin::complex(
                            $_GET, $config, $table, $primaryKey, $columns, NULL, $whereAll));
            $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
            $response->setHeader('Content-Type', 'application/json');
            $response->send();
            exit();
        }
        $this->view->setTemplateAfter('dashboard');
        return;
    }
    
    private function __fixItemJSON($json, array $keys){
        $taskArray    = array();
        $item   = json_decode($json, true);
        foreach($item as $key => $values){
            for($i = 0; $i < count($keys); $i++){
                $taskArray[$keys[$i]][] = $values[$keys[$i]];
            }
        }
        return $taskArray;
    }
    
    private function __setPropertyTask(){
        $this->_codename    = $this->session->get('auth')['codename'];
        $this->_registry    = $this->session->get('auth')['register_id'];
        $this->_phoneNumber = $this->session->get('auth')['phonenumber'];
    }
    
    //Intention was not to tamper with the default
    //$this->__dataTableJsCss() in the BaseController();
    private function __tableDataCssJs(){
        //$this->__dataTableJsCss();
        $this->assets->collection('footers')->addJs(
                'assets/js/datatables.js');
    }
}
