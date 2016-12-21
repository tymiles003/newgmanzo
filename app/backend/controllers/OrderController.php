<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of OrderController
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Backend\Controllers;

class OrderController extends BaseController{
    //put your code here
    public $_config;
    
    public function initialize() {
        parent::initialize();
        \Phalcon\Tag::appendTitle('Order');
        $this->_config = array(
            "host"  => $this->config['db']['host'],
            "user"  => $this->config['db']['username'],
            "pass"  => $this->config['db']['password'],
            "db"    => $this->config['db']['dbname']
        );
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
                ->addJs('admin/js/components/bootbox.min.js')
                ->addJs('admin/js/customapp.js');
    }
    
    public function indexAction() {
        $config = $this->_config;
        $response   = new \Phalcon\Http\Response();
        $primaryKey = 'order_id'; $table = 'order';
        if($this->request->isGet() && $this->request->isAjax()){
            $columns    = array(
                array('db' => 'firstname', 'dt' => 0),
                array('db' => 'lastname', 'dt' => 1),
                array('db' => 'email', 'dt' => 2),
                array('db' => 'phonenumber', 'dt' => 3),
                array('db' => 'address', 'dt' => 4),
                array('db' => 'trans_id', 'dt' => 5),
                array('db' => 'date_of_order', 'dt' => 6),
                array('db' => 'order_id', 'dt' => 7),
            );
            $response->setHeader('Content-Type', 'application/json');
            $response->setJsonContent(
                    \Multiple\Backend\Plugins\SspPlugin::simple(
                            $_GET, $config, $table, $primaryKey, $columns));
            $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
            $response->send();
            exit();
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function showAction(){
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function viewAction($trans=''){
        if($this->request->isPost() && $this->request->isAjax()){
            $trans  = $this->request->getPost('trans');
            if(!empty($trans) || !is_null($trans)){
                $salesShow  = \Multiple\Backend\Models\Sales::find(
                                    'trans_id="'.$trans.'"')->getLast();
                if($salesShow){
                    $itemsShow  = json_decode($salesShow->item_sold);

                    $tableFlow  = '<div class="example table-responsive">
                          <table class="table table-hover">
                            <thead>
                              <tr>
                                <th>#</th>
                                <th>Products x (qty)</th>
                                <th>Price</th>
                                <th>Total</th>
                              </tr>
                            </thead>
                            <tbody>';
                    $counter = 1; $costStack = array();
                    foreach ($itemsShow as $key => $value) {
                        $costStack[]    = (int) $value->qty * $value->price;
                        $tableFlow .= '<tr>
                            <td>'.$counter.'</td>
                            <td>'.ucwords($value->name).' x ('.$value->qty.')</td>
                            <td>
                              <span data-plugin="peityLine">'.$value->price.'</span>
                            </td>
                            <td>
                              <span class="text-danger text-semibold">'.
                                number_format($value->qty * $value->price, 2).'</span>
                            </td>
                          </tr>';
                        $counter++;
                    }

                    $tableFlow  .= '</tbody>
                            <tfoot>
                                <tr>
                                <th></th>
                                <th></th>
                                <th>Total</th>
                                <th>'. number_format(array_sum($costStack),2).'</th>
                              </tr>
                            </tfoot>
                              </table>
                        </div>';
                    echo $tableFlow;
                    $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                    return;
                }
                else{
                    echo 'Sorry! Seems sales transaction not found.';
                    $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                    return;
                }
            }
            else{
                $salesShow  = \Multiple\Backend\Models\Sales::find()->getLast();
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                return;
            }
        }
        $this->view->disable();
        exit();
    }
    
    public function tableShowAction(){
        $config = $this->_config;
        //var_dump($config); exit;
        $response   = new \Phalcon\Http\Response();
        $table  = 'products'; $primaryKey  = 'product_id';
        $columns    = array(
            array('db' => 'title', 'dt' => 0),
            array('db' => 'sub_category', 'dt' => 1, 
                'formatter' => function($d, $row){
                    $category = \Multiple\Backend\Models\Subcategory::find('sub_category_id='.$d)
                            ->getFirst(); return $category->sub_category_name;
                }),
                        
            array('db' => 'added_by', 'dt' => 2, 
                'formatter' => function($string, $row){
                    return \Multiple\Backend\Models\Products::__convert($string, 'display_name');
                }),
                        
            array('db' => 'added_by', 'dt' => 3, 
                'formatter' => function($string, $row){
                    return \Multiple\Backend\Models\Products::__convert($string, 'address1');
                }),
            array('db' => 'sale_price', 'dt' => 4),
            array('db' => 'front_image', 'dt' => 5),
        );
        if($this->request->isGet() && $this->request->isAjax()){
            $response->setJsonContent(
                    \Multiple\Backend\Plugins\SspPlugin::simple(
                    $_GET, $config, $table, $primaryKey, $columns));
            $response->setHeader('Content-Type', 'application/json');
            $this->view->disable(); $response->send();
        }
        $this->view->disable();
        return;
    }
}
