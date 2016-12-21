<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CustomerController
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Backend\Controllers;

use Phalcon\Paginator\Adapter\QueryBuilder;

class CustomerController extends BaseController{
    //put your code here
    public $_config;
    const LIMIT = 20;
    private $_currentPage, $_searchQuery;

    public function initialize() {
        parent::initialize();
        \Phalcon\Tag::appendTitle('Customers');
        $this->_config = array(
            "host"  => $this->config['db']['host'],
            "user"  => $this->config['db']['username'],
            "pass"  => $this->config['db']['password'],
            "db"    => $this->config['db']['dbname']
        );
        $this->assets->collection('headers')
                ->addCss('admin/css/pages/user.css');
        $this->assets->collection('headers')->addCss(
                'admin/vendor/datatables-bootstrap/dataTables.bootstrap.css')
                ->addCss('admin/vendor/datatables-fixedheader/dataTables.fixedHeader.css')
                ->addCss('admin/vendor/datatables-responsive/dataTables.responsive.css');
        $this->assets->collection('footers')->addJs(
                'admin/vendor/datatables/jquery.dataTables.min.js')
                ->addJs('admin/vendor/datatables-fixedheader/dataTables.fixedHeader.js')
                ->addJs('admin/vendor/datatables-bootstrap/dataTables.bootstrap.js')
                ->addJs('admin/vendor/datatables-responsive/dataTables.responsive.js')
                ->addJs('admin/vendor/datatables-tabletools/dataTables.tableTools.js')
                ->addJs('admin/js/customapp.js');
        $this->_currentPage = $this->request->getQuery('p', 'int');
    }
    
    public function indexAction(){
        if(!$this->_currentPage){
            $this->_currentPage = 1;
        }
        $this->_searchQuery = $this->request->getQuery('q','string');
        $builder            = $this->modelsManager->createBuilder();
        
        $queryBuilt = $builder->from('Register')
                ->orderBy('Register.register_id')
                ->limit(self::LIMIT, ($this->_currentPage - 1) * self::LIMIT);
        
        $paginator  = new QueryBuilder(array(
            'builder'   => $queryBuilt, 
            'limit'     => self::LIMIT, 
            'page'      => $this->_currentPage));
        $this->view->setVars(array(
            "search_query"  => $this->_searchQuery,
            "paginator"     => $paginator->getPaginate(), 
            "customers"     => $queryBuilt->getQuery()->execute(),
            "offset"    => ($this->_currentPage - 1) * self::LIMIT
        ));
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function registerAction(){
        if($this->request->isPost()){
            $register   = new Register();
            if($register->create($this->request->getPost())){
                $this->flash->success('Registration done succesfully');
                $this->view->setRenderLevel(Phalcon\Mvc\View::LEVEL_NO_RENDER);
                $this->response->redirect('customer/register?task=success');
            }
        }$this->view->setRenderLevel(Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function getCustomerAction(){
        $this->view->setVar('customers',            $this->getPayers());
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    
    public function getCustomersAction(){
        $config     = $this->_config;
        $response   = new \Phalcon\Http\Response();
        $primaryKey = 'order_id'; $table = 'order';
        
        $columns    = array(
            array('db' => 'firstname', 'dt' => 0),
            array('db' => 'lastname', 'dt' => 1),
            array('db' => 'email', 'dt' => 2),
            array('db' => 'phonenumber', 'dt' => 3),
            array('db' => 'register_id', 'dt' => 4),
        );
        $w      = 'vendor_id="' . 
                $this->session->get('auth')['vendor_id'].'"';
        $gfix   = " GROUP BY phonenumber";

        $response->setJsonContent(
                \Multiple\Backend\Plugins\SspPlugin::complex(
                $_GET, $config, $table, $primaryKey, $columns, $w));
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        $response->setHeader('Content-Type', 'application/json');
        $response->sendHeaders(); $response->send();
        exit(); return;
    }
    
    public function getPayers(){
        $response   = new \Phalcon\Http\Response();
        $builder    = $this->modelsManager->createBuilder();
        $tasking    = $builder->from(array(
            'r'=>'\Multiple\Backend\Models\Order'))
                ->where('r.vendor_id='.$this->session->get('auth')['vendor_id'])
                ->groupBy('r.phonenumber')->getQuery()->execute();
        return $tasking;
    }
    
    public function showAction(){
        $config = $this->_config;
        $response   = new \Phalcon\Http\Response();
        $primaryKey = 'register_id'; $table = 'register';
        if($this->request->isGet() && $this->request->isAjax()){
            $columns    = array(
                array('db' => 'firstname', 'dt' => 0),
                array('db' => 'lastname', 'dt' => 1),
                array('db' => 'email', 'dt' => 2),
                array('db' => 'phonenumber', 'dt' => 3),
                array('db' => 'address', 'dt' => 4),
                array('db' => 'register_id', 'dt' => 4),
            );
            $response->setHeader('Content-Type', 'application/json');
            $response->setJsonContent(
                    SspPlugin::simple($_GET, $config, $table, $primaryKey, $columns));
            $this->view->setRenderLevel(Phalcon\Mvc\View::LEVEL_NO_RENDER);
            $response->send();
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
}
