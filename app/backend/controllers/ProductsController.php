<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ProductsController
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Backend\Controllers;

use Phalcon\Paginator\Adapter\QueryBuilder;
use Multiple\Backend\Models\Products;
use Multiple\Backend\Models\Category;
use Multiple\Backend\Models\Subcategory;
use Multiple\Backend\Plugins\SspPlugin;

class ProductsController extends BaseController{
    //put your code here
    const LIMIT = 20;
    private $_currentPage;
    private $_role, $_vendor_id;
    private $_config;
    
    public function initialize() {
        parent::initialize();
        \Phalcon\Tag::appendTitle("Products | Category");
        $this->_currentPage = (int) $this->request->getQuery();
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
                ->addJs('admin/js/bootbox.js')
                ->addJs('admin/js/customapp.js');
        $this->_vendor_id   = $this->session->get('auth')['vendor_id'];
        $this->_role        = $this->session->get('auth')['role'];
        
        $this->_config = array(
            "host"  => $this->config['db']['host'],
            "user"  => $this->config['db']['username'],
            "pass"  => $this->config['db']['password'],
            "db"    => $this->config['db']['dbname']
        );
    }
    
    public function indexAction(){
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }

    public function categoryAction(){
        if($this->request->isPost()){
            $category   = new Category();
            if($category->create($this->request->getPost())){
                $this->flash->success('Category created successfully');
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                $this->response->redirect('backend/products/category'
                        . '?task=manager&flow=st');
                return;
            }
        }
        $this->view->setVar('categories',Category::find(array(
            'order' => 'category_id DESC'
        ))->toArray());
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function subcategoryAction(){
        if($this->request->isPost()){
            $subcategory    = new Subcategory();
            if($subcategory->create($this->request->getPost())){
                $this->flash->success('Subcategory(ies) created successfully');
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                $this->response->redirect('backend/products/subcategory?task=manage');
                return;
            }
        }
        $this->view->setVar('categories', Category::find()->toArray());
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        $this->view->setVar('subcategory', Subcategory::find(array(
            'order' => 'sub_category_id DESC'
        )));
        return;
    }
    
    /**
     * This is used with the datatatble format
     * build with the specification of the dataTable Design
     * @return type
     */
    public function tableProductAction(){
        $config = $this->_config;
        //var_dump($config); exit;
        $response   = new \Phalcon\Http\Response();
        $table  = 'products'; $primaryKey  = 'product_id';
        $columns    = array(
            array('db' => 'title', 'dt' => 0),
            array('db' => 'sub_category', 'dt' => 1, 
                'formatter' => function($d, $row){
                    $category = Subcategory::find('sub_category_id='.$d)->getFirst();
                    return $category->sub_category_name;
                }),
                        
            array('db' => 'added_by', 'dt' => 2, 
                'formatter' => function($string, $row){
                    return Products::__convert($string, 'display_name');
                }),
                        
            array('db' => 'sale_price', 'dt' => 3),
            array('db' => 'front_image', 'dt' => 4),
            array('db' => 'product_id', 'dt' => 5),
        );
        
        if($this->request->isGet()){
            $result = SspPlugin::complex(
                    $_GET, $config, $table, $primaryKey, 
                    $columns, "vendor_id=".$this->_vendor_id);
            $response->setJsonContent($result);
        }
        
        $response->setHeader('Content-Type', 'application/json');
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        $response->send();
        return;
    }
    
    public function showAction(){
        $this->view->setVars(array('subcarts' => Subcategory::find()));
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function addAction(){
        $time    = time();
        if($this->request->hasFiles() == true){
            $products       = new Products();
            $file           = $this->request->getUploadedFiles();
            $getRealType    = $file[0]->getRealType();
            
            $gdAdapter      = new \Phalcon\Image\Adapter\Gd($file[0]->getTempName());
            $resultAdpater  = $gdAdapter->resize(200, 200);
            //$gdAdapter->save('../public/assets/uploads/'.$file[0]->getName());

            if($getRealType != 'image/png' && $getRealType != 'image/jpeg'){
                $this->flash->error("Attention! Your  upload is not an Image.");
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
                return;
            }
            if($gdAdapter->save('../public/assets/uploads/'.$time.'_'.$file[0]->getName())){
                $addedBy    = array('type' => 'vendor', 
                    'id' => $this->session->get('auth')['vendor_id']);
                
                $category   = Subcategory::findFirstBySub_category_id(
                                $this->request->getPost('sub_category'));
                
                if($category != FALSE){
                    $uploads    = array(
                        'added_by'      => json_encode($addedBy),
                        'front_image'   => $time.'_'.$file[0]->getName(),
                        'category'      => (int) $category->category_id
                    );
                    $mergeArr   = array_merge($uploads, $this->request->getPost());
                    if($products->create($mergeArr)){
                        $this->flash->success('Product addded succesfully');
                        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                        $this->response->redirect('backend/products/show?task=load&view=null');
                        return;
                    }
                    else{
                        $this->component->helper->getErrorMsgs($products, 'products');
                    }
                }
            }
            elseif(number_format($file[0]->getSize()/1048576, 2) > 1){
                $this->flash->error("File size is bigger than 1MB");
                $this->response->redirect('backend/products/show?task=size_error');
                return;
            }
            else{
                $this->flash->error("Image Errors! ".$file[0]->getError());
                $this->response->redirect('backend/products/show?task=image_error');
                return;
            }
        }
        $this->view->setRenderLevel(Phalcon\Mvc\View::LEVEL_NO_RENDER);
        $this->response->redirect('backend/products/show?task=load');
        return;
    }
    
    public function getflow($string){
        switch ($string){
            case "category":
                return $this->__getCategory();
                break;
            case "products":
                return $this->__getProducts();
                break;
            default:
                break;
        }
    }
    
    private function __getProducts(){
        $builder    = $this->modelsManager->createBuilder();
        $vendorBy   = json_encode(array('type'=>'vendor', 'id'=>$this->_vendor_id));
        $builderMg  = $builder->from('Multiple\Backend\Models\Products')->orderBy('title');
        return $builderMg;
    }
    
    private function __getCategory(){
        $builder    = $this->modelsManager->createBuilder();
        $builderMg  = $builder->from('Multiple\Backend\Models\Category')->orderBy('category_title');
        return $builderMg;
    }
}
