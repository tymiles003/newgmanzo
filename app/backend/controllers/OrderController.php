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
    
    public function initialize() {
        parent::initialize();
        Phalcon\Tag::appendTitle('Order');
        $this->assets->collection('headers')->addCss(
                'assets/vendor/datatables-bootstrap/dataTables.bootstrap.css')
                ->addCss('assets/vendor/datatables-fixedheader/dataTables.fixedHeader.css')
                ->addCss('assets/vendor/datatables-responsive/dataTables.responsive.css');
        $this->assets->collection('footers')->addJs(
                'assets/vendor/datatables/jquery.dataTables.min.js')
                ->addJs('assets/vendor/datatables-fixedheader/dataTables.fixedHeader.js')
                ->addJs('assets/vendor/datatables-bootstrap/dataTables.bootstrap.js')
                ->addJs('assets/vendor/datatables-responsive/dataTables.responsive.js')
                ->addJs('assets/vendor/datatables-tabletools/dataTables.tableTools.js')
                ->addJs('assets/js/components/bootbox.min.js')
                ->addJs('assets/js/customapp.js');
    }
    
    public function indexAction() {
        $config = array(
            "host"  => "localhost",
            "user"  => "root",
            "pass"  => "",
            "db"    => "bucketmanager"
        );
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
                    SspPlugin::simple($_GET, $config, $table, $primaryKey, $columns));
            $this->view->setRenderLevel(Phalcon\Mvc\View::LEVEL_NO_RENDER);
            $response->send();
            exit();
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function showAction(){
        $this->view->setRenderLevel(Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function viewAction($trans=''){
        if($this->request->isPost() && $this->request->isAjax()){
            $trans  = $this->request->getPost('trans');
            if(!empty($trans) || !is_null($trans)){
                $salesShow  = Sales::find('trans_id="'.$trans.'"')->getLast();
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
                $salesShow  = Sales::find()->getLast();
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                return;
            }
        }
        $this->view->disable();
        exit();
    }
    
    public function tableShowAction(){
        $config = array(
            "host"  => "localhost",
            "user"  => "root",
            "pass"  => "",
            "db"    => "bucketmanager"
        );
        //var_dump($config); exit;
        $response   = new \Phalcon\Http\Response();
        $table  = 'products'; $primaryKey  = 'product_id';
        $columns    = array(
            array('db' => 'title', 'dt' => 0),
            array('db' => 'sub_category', 'dt' => 1, 
                'formatter' => function($d, $row){
                    $category = Subcategory::find('sub_category_id='.$d)
                            ->getFirst(); return $category->sub_category_name;
                }),
                        
            array('db' => 'added_by', 'dt' => 2, 
                'formatter' => function($string, $row){
                    return Products::__convert($string, 'display_name');
                }),
                        
            array('db' => 'added_by', 'dt' => 3, 
                'formatter' => function($string, $row){
                    return Products::__convert($string, 'address1');
                }),
            array('db' => 'sale_price', 'dt' => 4),
            array('db' => 'front_image', 'dt' => 5),
        );
        if($this->request->isGet() && $this->request->isAjax()){
            $response->setJsonContent(
                    SspPlugin::simple(
                    $_GET, $config, $table, $primaryKey, $columns));
            $response->setHeader('Content-Type', 'application/json');
            $this->view->disable(); $response->send();
        }
        $this->view->disable();
        return;
    }
}
