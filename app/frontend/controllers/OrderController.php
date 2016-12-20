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
namespace Multiple\Frontend\Controllers;

use Multiple\Frontend\Models\Category;
use Multiple\Frontend\Models\Order;
use Multiple\Frontend\Models\Sales;
use Phalcon\Mvc\Model\Transaction\Manager;
use Phalcon\Mvc\Model\Transaction\Failed;

class OrderController extends BaseController{
    //put your code here
    private $_track;
    //const ACESS_TOKEN = 'e824c4f685bca92ed63ffd522a855f52';
    //const ACESS_TOKEN = 'df6bb34d1342938032946e88cce350dcce17d58c2267a0c74474b933be45823a';
    //This Key Belongs to GMANZO Company not to be used anytime by another company
    const ACESS_TOKEN = '29f741c22519903ae0428adaef01b0de23d2e0307626d82470ccf74fccb6d05b';
    const PARAMETER_MISSING = 100, ACTION_COMPLETE = 200, SHOW_ERROR_MESSAGE = 201;
    const INVALID_ACCESS_TOKEN = 101, ERROR_IN_EXECUTION = 404;
    private $_vendor = array();
    
    public function initialize() {
        parent::initialize();
        \Phalcon\Tag::appendTitle('Order Now');
        $this->view->setVar('totalPrice', $this->__getSubTotal());
        $this->view->setVar('category', Category::find()->toArray());
        $this->_track   = $this->component->helper->makeRandomInts(10);
        $this->_vendor  = json_decode(key($this->__getShopsTask('vendor_id')));
        $this->session->set('vendor_id', $this->_vendor->id);
        $this->view->setVar('track_id', $this->_track);
        //var_dump($this->__checkTotalAmount()); exit;
        if($this->__checkTotalAmount() < 5000){
            $this->response->redirect('index?task=request&r=sm');
            $this->flash->warning('You need to make a cart worth 5000 at least');
            $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
            return;
        }
        if(!$this->session->has('strLocation')){
            $this->flash->warning('You need to select a location.');
            $this->response->redirect('index?task=request&r=location');
            $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
            return;
        }
    }
    
    public function indexAction(){
        $this->view->setVar('totalPrice', $this->__getSubTotal());
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_ACTION_VIEW);
        return;
    }
    
    public function startAction(){
        $dbError    = '';
        $tracker    = TRUE;
        $response   = new \Phalcon\Http\Response();
        //var_dump($this->__getShopsTask('addedby')); exit;
        $track_id   = $this->request->getPost('trans_id');
        //var_dump($this->request->getPost());        exit();
        
        if($this->request->isPost() && $this->request->isAjax()){
            if($this->session->has('cart_item') && !empty($_SESSION['cart_item'])){
                try {
                    $transMangager  = new Manager();
                    $transaction    = $transMangager->get();
                    $order          = new Order();
                    $order->setTransaction($transaction);
                    $default        = date('Y-m-d');
                    $this->__buildRequest(array(
                        'register_id'   => $this->session->get('auth')['register_id'],
                        'vendor_id'     => $this->session->get('vendor_id')));
                    
                    //Setup the order insert which is the post field
                    if($order->save($this->request->getPost()) == FALSE){
                        $tracker    = FALSE;
                        $transaction->rollback("Order(s) cannot be placed");
                        $dbError    = $transaction->getMessages();
                    }
                    
                    //Setup the sales insert which is session.get(cart_item);
                    $sales          = new Sales();
                    $sales->setTransaction($transaction);
                    $this->__taskSessionAdd($track_id);
                    $vendorSales    = json_encode($this->session->get('cart_item'));
                    //$hourLater      = strtotime($_POST['delivery_time']) + 60 * 60; 
                    $newDate        = $this->request->getPost('delivery_time');
                    $startSales     = array(
                        'trans_id'      => $track_id,
                        'date_of_order' => date('Y-m-d H:i:s', strtotime('+1 hour')),
                        'item_sold'     => json_encode($this->session->get('cart_item')),
                        'status'        => 'pending',
                        'agent'         => '',
                        'delivery_time' => $this->__quickDateFormat($newDate),
                        'register_id'   => $this->session->get('auth')['register_id'],
                        'vendor_id'     => $this->session->get('vendor_id'),
                    );
                    
                    if($sales->save($startSales) == FALSE){
                        $tracker    = FALSE;
                        $transaction->rollback("Sale(s) cannot be created");
                        $dbError    = $transaction->getMessages();
                    }
                    $transaction->commit();
                } catch (Failed $exc) {
                    $this->flash->error('error: '. $exc->getMessage());
                    $response->setJsonContent(array(
                        'status'    => $tracker,
                        'message'   => $exc->getMessage(),
                        'dbaseerr'  => $transaction->getMessages()));
                    
                    //var_dump($order->getMessages());
                    $exc->getTraceAsString();
                }
            }
        }
        if($tracker){
            $customer   = $this->request->getPost();
            $taskRespo  = json_decode($this->createTask($customer));
            if($taskRespo->status == self::ACTION_COMPLETE){
                $response->setJsonContent(array(
                    'status'    => $tracker,
                    'tookan'    => $taskRespo,
                    'data'      => $this->request->getPost()
                ));
            }
            else{
                $response->setJsonContent(array(
                    'status' => false,'tookan' => $taskRespo
                ));
            }
        }
        $response->setHeader('Content-Type', 'application/json');
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        $response->send(); exit();
    }
    
    /**
     * This can be placed into factory settings
     * CreateTask using this of the API fixtures
     * @return type
     */
    public function createTask($customer, $json_decode = false){
        $typeRespo  = new \Phalcon\Http\Response();
        //parse_str($this->request->getPost('data'), $customer);
        $getTeam    = json_decode($this->__getAvailableFleets());
        //$hourLater  = strtotime($customer['delivery_time']) + 60 * 60; 
        
        foreach($getTeam->data as $keys => $values){
            if(strtolower($values->team_name) == $_SESSION['strLocation']){
                $vendor     = \Multiple\Frontend\Models\Vendor::find(
                        'vendor_id='.$this->session->get('vendor_id'))->getLast();
                $jsonString = "{
                        \"api_key\": \"".self::ACESS_TOKEN."\",
                        \"order_id\": \"".$customer['trans_id']."\",
                        \"team_id\": \"".$values->team_id."\",
                        \"auto_assignment\": \"0\",
                        \"job_description\": \"Groceries Pick Up\",
                        \"job_pickup_phone\": \"".$vendor->phone."\",
                        \"job_pickup_name\": \"".$vendor->display_name."\",
                        \"job_pickup_email\": \"\",
                        \"job_pickup_address\": \"".$vendor->address2."\",
                        \"job_pickup_latitude\": \"\",
                        \"job_pickup_longitude\": \"\",
                        \"job_pickup_datetime\": \"".date('m/d/Y H:i:s', strtotime(('+1 hour')))."\",
                        \"customer_email\": \"".$customer['email']."\",
                        \"customer_username\": \"".$customer['lastname']." ".$customer['firstname']."\",
                        \"customer_phone\": \"".$customer['phonenumber']."\",
                        \"customer_address\": \"".$customer['address']."\",
                        \"latitude\": \"\",
                        \"longitude\": \"\",
                        \"job_delivery_datetime\": \"".$customer['delivery_time']." \",
                        \"has_pickup\": \"1\",
                        \"has_delivery\": \"1\",
                        \"layout_type\": \"0\",
                        \"tracking_link\": 1,
                        \"timezone\": \"+1\",
                        \"custom_field_template\": \"\",
                        \"meta_data\": [
                          {
                            \"label\": \"\",
                            \"data\": \"\"
                          }
                        ],
                        \"pickup_custom_field_template\": \"\",
                        \"pickup_meta_data\": [
                          {
                            \"label\": \"\",
                            \"data\": \"\"
                          }
                        ],
                        \"fleet_id\": \"22206\",
                        \"p_ref_images\": [
                          \"http://tookanapp.com/wp-content/uploads/2015/11/logo_dark.png\",
                          \"http://tookanapp.com/wp-content/uploads/2015/11/logo_dark.png\"
                        ],
                        \"ref_images\": [
                          \"http://tookanapp.com/wp-content/uploads/2015/11/logo_dark.png\",
                          \"http://tookanapp.com/wp-content/uploads/2015/11/logo_dark.png\"
                        ],
                        \"notify\": 1,
                        \"tags\": \"\",
                        \"geofence\": 0
                    }";
                $curlRespo  = $this->__curlRequestTask(
                        "https://api.tookanapp.com/v2/create_task", $jsonString);
                return $json_decode ? json_decode($curlRespo) : $curlRespo;
            }
        }
    }
    
    public function fixAssignTeamAction(){
        $ch         = curl_init();
        $typeRespo  = new \Phalcon\Http\Response();
        
        //$customer   = $this->request->getPost('data');
        parse_str($this->request->getPost('data'), $customer);
        
        $getTeam    = json_decode($this->__getAvailableFleets());
        $strArea    = array_keys($this->__getShopsTask('location'));
        
        //$hourLater  = strtotime($customer['delivery_time']) + 60 * 60; 
        
        curl_setopt($ch, CURLOPT_URL, "https://api.tookanapp.com/create_task");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_HEADER, FALSE);
        
        curl_setopt($ch, CURLOPT_POST, TRUE);
        foreach($getTeam->data as $keys => $values){
            //var_dump($this->session->get('strLocation')); exit;
            if(strtolower($values->team_name) == $_SESSION['strLocation']){
                foreach($this->__getShopsTask('addedby') as $keyStore => $keyValue){
                    curl_setopt($ch, CURLOPT_POSTFIELDS, "{
                        \"access_token\": \"".self::ACESS_TOKEN."\",
                        \"order_id\": \"".$customer['trans_id']."\",
                        \"team_id\": \"".$values->team_id."\",
                        \"auto_assignment\": \"1\",
                        \"job_description\": \"Groceries Delivery\",
                        \"job_pickup_phone\": \"\",
                        \"job_pickup_name\": \"".$keyStore."\",
                        \"job_pickup_email\": \"\",
                        \"job_pickup_address\": \"".$keyValue[0]['address']."\",
                        \"job_pickup_latitude\": \"\",
                        \"job_pickup_longitude\": \"\",
                        \"job_pickup_datetime\": \"".date('m/d/Y H:i:s')."\",
                        \"customer_email\": \"".$customer['email']."\",
                        \"customer_username\": \"".$customer['lastname']." ".$customer['firstname']."\",
                        \"customer_phone\": \"".$customer['phonenumber']."\",
                        \"customer_address\": \"".$customer['address']."\",
                        \"latitude\": \"\",
                        \"longitude\": \"\",
                        \"job_delivery_datetime\": \"".date('m/d/Y H:i:s', strtotime(('+1 hour')))." \",
                        \"has_pickup\": \"1\",
                        \"has_delivery\": \"1\",
                        \"layout_type\": \"0\",
                        \"tracking_link\": 1,
                        \"timezone\": \"+1\",
                        \"custom_field_template\": \"\",
                        \"meta_data\": [
                          {
                            \"label\": \"\",
                            \"data\": \"\"
                          }
                        ],
                        \"pickup_custom_field_template\": \"\",
                        \"pickup_meta_data\": [
                          {
                            \"label\": \"\",
                            \"data\": \"\"
                          }
                        ],
                        \"fleet_id\": \"\",
                        \"p_ref_images\": [
                          \"http://tookanapp.com/wp-content/uploads/2015/11/logo_dark.png\",
                          \"http://tookanapp.com/wp-content/uploads/2015/11/logo_dark.png\"
                        ],
                        \"ref_images\": [
                          \"http://tookanapp.com/wp-content/uploads/2015/11/logo_dark.png\",
                          \"http://tookanapp.com/wp-content/uploads/2015/11/logo_dark.png\"
                        ],
                        \"notify\": 1,
                        \"tags\": \"\",
                        \"geofence\": 0
                    }");
                    curl_setopt($ch, CURLOPT_HTTPHEADER, array(
                        "Content-Type: application/json"
                    ));
                    $response   = curl_exec($ch);
                    curl_close($ch);
                    $returned   = json_decode($response, TRUE);
                    if($returned['status'] == self::ACTION_COMPLETE){
                        $typeRespo->setHeader('Content-Type', 'application/json');
                        $typeRespo->setJsonContent(array('order_id' => $customer['trans_id'],
                            'data' => $returned));
                    }
                    else{
                        $typeRespo->setHeader('Content-Type', 'application/json');
                        $typeRespo->setJsonContent(array('data' => array(
                            'error' => $returned['message'])));
                    }
                }
                $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
                $typeRespo->send();
                exit();
            }
        }
    }
    
    public function getAgentsAction(){
        $team       = array(); $status  = false;
        $typeResp   = new \Phalcon\Http\Response();
        $location   = $this->session->get('strLocation');
        
        $getTeam    = json_decode($this->__getAvailableFleets());
        $strArea    = array_keys($this->__getShopsTask('location'));
        if(!is_null($location) || !empty($location)){
            $jsonString = "{
                \"access_token\": \"".self::ACESS_TOKEN."\"
            }";
            $response   = $this->__curlRequestTask(
                    "https://api.tookanapp.com/view_team", $jsonString);
            foreach($getTeam->data as $keyTeam => $keyVal){
                if(strtolower($keyVal->team_name) == $location){
                    $status = true;
                    $team[$keyVal->team_id] = array('fleets'=>$keyVal->fleets);
                }
            }
        }
        $typeResp->setHeader('Content-Type', 'application/json');
        $typeResp->setJsonContent(array('status' => $status, 'data' => $team));
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        $typeResp->send();
        exit();
    }
    
    public function assignAgentsAction(){
        if($returned['status'] == self::ACTION_COMPLETE){
            curl_setopt($ch, CURLOPT_URL, "https://api.tookanapp.com/assign_fleet_to_task");
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
            curl_setopt($ch, CURLOPT_HEADER, FALSE);

            curl_setopt($ch, CURLOPT_POST, TRUE);

            curl_setopt($ch, CURLOPT_POSTFIELDS, "{
              \"access_token\": \"".self::ACESS_TOKEN."\",
              \"job_id\": \"".$returned['data']['job_id']."\",
              \"fleet_id\": \"\",
              \"team_id\": \"".$values->team_id."\"
            }");

            curl_setopt($ch, CURLOPT_HTTPHEADER, array(
              "Content-Type: application/json"
            ));
            $response   = curl_exec($ch);
            curl_close($ch);
            $stackFlow  = json_decode($response, true);
            if($stackFlow['status'] == 200){
                $typeRespo->setHeader('Content-Type', 'application/json');
                $typeRespo->setJsonContent(array('data' => $returned));
            }
            else{
                $typeRespo->setHeader('Content-Type', 'application/json');
                $typeRespo->setJsonContent(array('data' => array(
                    'error' => $stackFlow['message'])));
            }
        }
    }
    
    /**
     * 
     * @param type $url
     * @param string $token
     * @param string $jsonString
     * @return string
     */
    private function __curlRequestTask($url, $jsonString){
        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_HEADER, FALSE);

        curl_setopt($ch, CURLOPT_POST, TRUE);

        curl_setopt($ch, CURLOPT_POSTFIELDS, $jsonString);

        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
          "Content-Type: application/json"
        ));

        $response = curl_exec($ch);
        curl_close($ch);
        return $response;
    }
    
    /**
     * @return string
     * Get the addresses of the shops
     */
    private function __getStringAddress(){
        return join('; ', array_keys($this->__getShopsTask('address')));
    }
    
    /**
     * @return json
     */
    private function __getAvailableFleets(){
        $ch = curl_init();
        //curl_setopt($ch, CURLOPT_URL, "https://api.tookanapp.com/view_team");
        curl_setopt($ch, CURLOPT_URL, "https://api.tookanapp.com/v2/view_teams");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_HEADER, FALSE);
        curl_setopt($ch, CURLOPT_POST, TRUE);
        
        curl_setopt($ch, CURLOPT_POSTFIELDS, "{
            \"api_key\": \"".self::ACESS_TOKEN."\"
        }");
        
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            "Content-Type: application/json"
        ));
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);
        $response = curl_exec($ch);
        if(curl_errno($ch)){
            var_dump(curl_error($ch));
        }
        curl_close($ch);
        return $response;
    }
    
    //comma separated shops owner's name
    private function __stringifyJobOwner(){
        $stringify  = array_keys($this->__getShopsTask('addedby'));
        return join(',', $stringify);
    }
    
    //comma separated shops owner's name
    private function __stringifyJobOwnerAddress(){
        $stringify  = array_keys($this->__getShopsTask('address2'));
        return join(',', $stringify);
    }
    
    private function __quickDateFormat($date){
        return date('Y-m-d h:i:s', strtotime($date));
    }
    
    /**
     * @param type $tracker
     * force trans_id into the session array
     */
    private function __taskSessionAdd($tracker){
        if($this->session->has('cart_item') || isset($_SESSION['cart_item'])){
            foreach($this->session->get('cart_item') as $keys=>$values){
                $_SESSION['cart_item'][$keys]['trans_id']   = $tracker;
            }
        }
    }
    
    /**
     * @param string $key
     * @return array
     * Group array with the same value together
     */
    private function __getShopsTask($key=''){
        $return = array();
        foreach($this->session->get('cart_item') as $keys=>$values){
            $return[$values[$key]][]   = $values;
        }
        return $return;
    }
    
    /**
     * Add up the total price of all the products
     * @return array
     */
    private function __checkTotalAmount(){
        $priceTotal = array();
        foreach($this->session->get('cart_item') as $key=>$value){
            $priceTotal[]   = $value['price'] * $value['qty'];
        }
        return array_sum($priceTotal);
    }
}
