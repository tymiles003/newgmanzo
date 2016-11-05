<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of BaseController
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Backend\Controllers;

class BaseController extends \Phalcon\Mvc\Controller{
    //put your code here
    public function initialize(){
        \Phalcon\Tag::prependTitle('Sales Application');
        \Phalcon\Tag::setTitleSeparator(' | ');
        $this->assets->collection('headers')
                ->addCss('admin/css/bootstrap.min.css')
                ->addCss('admin/css/bootstrap-extend.min.css')
                ->addCss('admin/css/site.min.css')
                ->addCss('admin/vendor/animsition/animsition.css')
                ->addCss('admin/vendor/asscrollable/asScrollable.css')
                ->addCss('admin/vendor/switchery/switchery.css')
                ->addCss('admin/vendor/intro-js/introjs.css')
                ->addCss('admin/vendor/slidepanel/slidePanel.css')
                ->addCss('admin/vendor/flag-icon-css/flag-icon.css')
                ->addCss('admin/vendor/select2/select2.css')
                ->addCss('admin/vendor/bootstrap-tokenfield/bootstrap-tokenfield.css')
                ->addCss('admin/vendor/bootstrap-tagsinput/bootstrap-tagsinput.css')
                ->addCss('admin/vendor/bootstrap-select/bootstrap-select.css')
                ->addCss('admin/fonts/web-icons/web-icons.min.css')
                ->addCss('admin/fonts/brand-icons/brand-icons.min.css')
                ->addCss('http://fonts.googleapis.com/css?family=Roboto:300,400,500,300italic', true);
        
        //Create | add the javascript script link
        $this->assets->collection('jsHeaders')
                ->addJs('admin/vendor/modernizr/modernizr.js')
                ->addJs('admin/vendor/breakpoints/breakpoints.js');
        
        //Create | add the javascript script link
        $this->assets->collection('footers')
                ->addJs('admin/vendor/jquery/jquery.js')
                ->addJs('admin/vendor/bootstrap/bootstrap.js')
                ->addJs('admin/vendor/animsition/jquery.animsition.js')
                ->addJs('admin/vendor/asscroll/jquery-asScroll.js')
                ->addJs('admin/vendor/mousewheel/jquery.mousewheel.js')
                ->addJs('admin/vendor/asscrollable/jquery.asScrollable.all.js')
                ->addJs('admin/vendor/ashoverscroll/jquery-asHoverScroll.js')
                ->addJs('admin/vendor/switchery/switchery.min.js')
                ->addJs('admin/vendor/intro-js/intro.js')
                ->addJs('admin/vendor/screenfull/screenfull.js')
                ->addJs('admin/vendor/slidepanel/jquery-slidePanel.js')
                ->addJs("admin/vendor/select2/select2.min.js")
                ->addJs('admin/vendor/bootstrap-tokenfield/bootstrap-tokenfield.min.js')
                ->addJs('admin/vendor/bootstrap-tagsinput/bootstrap-tagsinput.min.js')
                ->addJs('admin/vendor/bootstrap-select/bootstrap-select.js')
                ->addJs('admin/js/core.js')
                ->addJs('admin/js/site.js')
                ->addJs('admin/js/sections/menu.js')
                ->addJs('admin/js/sections/menubar.js')
                ->addJs('admin/js/sections/sidebar.js')
                ->addJs('admin/js/configs/config-colors.js')
                ->addJs('admin/js/configs/config-tour.js')
                ->addJs('admin/js/components/asscrollable.js')
                ->addJs('admin/js/components/animsition.js')
                ->addJs('admin/js/components/slidepanel.js')
                ->addJs('admin/js/components/switchery.js');
    }
    
    public function __dataTableJsCss(){
        $this->assets->collection('footers')
                ->addJs('admin/js/datatables/jquery.dataTables.js')
                ->addJs('admin/js/bootbox.js');
    }
    
    protected function __crossOriginPolicy(){
        $response   = new Phalcon\Http\Response();
        $response->setHeader('Access-Control-Allow-Origin', '*');
        $response->setHeader('Access-Control-Allow-Headers', 'X-Requested-With');
        $response->setHeader('Access-Control-Allow-Headers', 'Authorization');
        $response->setHeader('Access-Control-Allow-Methods', 'GET, POST');
        $response->sendHeaders();
    }


    protected function __dataTableFlow($builder){
        if($this->request->isAjax()){
            $dataTables = new \DataTables\DataTable();
            return $dataTables->fromBuilder($builder)->sendResponse();
        }
    }
    
    protected function __dataTable($builder){
        if($this->request->isGet() || $this->request->isPost()){
            $dataTables = new \DataTables\DataTable();
            return $dataTables->fromBuilder($builder)->sendResponse();
        }
    }
    
    protected function __dataTableArray($builder){
        if($this->request->isAjax()){
            $dataTables = new \DataTables\DataTable();
            return $dataTables->fromArray($builder)->sendResponse();
        }
    }
    
    //Get Array Conditions to replace post or get Query
    //Note that the index 0 returned is array and 1 is strings
    //Use like this $getWhatever = $this->__getArrayCon($array);
    protected function __getArrayCon(array $array){
        $strings = '';
        $results = array();
        foreach($array as $key => $value){
            $results[$key] = $value;
            $strings .= $key.' = :'.$key.': AND ';
        }
        return array(
            $results, substr($strings,0,-4)
        );
    }
    
    //Remove empty getPost() | getQuery() request
    protected function __getPostRemoveEmpty(){
        if($this->request->isPost()){
            foreach($this->request->getPost() as $key => $value){
                if(empty($value) || is_null($value)){
                    unset($_POST[$key]);
                }
            }
        }
        else{
            foreach($this->request->getQuery() as $key => $value){
                if(empty($value) || is_null($value)){
                    unset($_GET[$key]);
                }
            }
        }
    }
    
    //This method create a binding value based
    //Empty post remooved from the getPost() returned
    protected function __bindAfterRemoveEmpty($type='post'){
        $results = array();
        switch ($type) {
            case 'post':
                foreach($this->request->getPost() as $key => $value){
                    $results[$key] = $value;
                }
                return $results;
                break;
                
            case 'get':
                foreach($this->request->getQuery() as $key => $value){
                    if($key !== '_url'){
                        $results[$key] = $value;
                    }
                }
                return $results;
                break;
        }
    }
    
    //This method creates queries of values for binding
    protected function __conditionsRemoveEmpty($type='post'){
        $strings = '';
        switch ($type) {
            case 'post':
                foreach($this->request->getPost() as $key => $value){
                    $strings .= $key.' = :'.$key.': AND ';
                }
                return substr($strings,0,-4);
                break;
                
            case 'get':
                foreach($this->request->getQuery() as $key => $value){
                    if($key !== '_url'){
                        $strings .= $key.' = :'.$key.': AND ';
                    }
                }
                return substr($strings,0,-4);
                break;
        }
    }
}
