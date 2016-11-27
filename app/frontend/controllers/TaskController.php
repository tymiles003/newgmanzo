<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Multiple\Frontend\Controllers;

/**
 * Description of TaskController
 *
 * @author ENNY
 */
class TaskController extends BaseController{
    //put your code here
    private $_track_id;
    //const ACESS_TOKEN = 'e824c4f685bca92ed63ffd522a855f52';
    const ACESS_TOKEN = 'df6bb34d1342938032946e88cce350dcce17d58c2267a0c74474b933be45823a';
    const PARAMETER_MISSING = 100, ACTION_COMPLETE = 200, SHOW_ERROR_MESSAGE = 201;
    const INVALID_ACCESS_TOKEN = 101, ERROR_IN_EXECUTION = 404;
    
    public function indexAction(){
        if($this->request->isPost() && $this->request->isAjax()){
            $query  = $this->request->getPost();
            $typeRespo  = new \Phalcon\Http\Response();
            $team_id    = $this->__getFleetTeam($query['state']);
            $hourLater  = strtotime(date('m/d/Y H:i:s')) + 60 * 60;
            $jsonString = "{
                \"api_key\": \"".self::ACESS_TOKEN."\",
                \"order_id\": \"".$this->_track_id."\",
                \"team_id\": \"".$team_id."\",
                \"auto_assignment\": \"0\",
                \"job_description\": \"".$query['pickup_description']."\",
                \"job_pickup_phone\": \"".$query['pickup_phone']."\",
                \"job_pickup_name\": \"".$query['pickup_fullname']."\",
                \"job_pickup_email\": \"\",
                \"job_pickup_address\": \"".$query['pickup_address']."\",
                \"job_pickup_datetime\": \"".date('m/d/Y H:i:s')."\",
                \"customer_email\": \"\",
                \"customer_username\": \"".$query['delivery_fullname']."\",
                \"customer_phone\": \"".$query['delivery_phone']."\",
                \"customer_address\": \"".$query['delivery_address']."\",
                \"job_delivery_datetime\": \"".date('m/d/Y H:i:s', $hourLater)."\",
                \"has_pickup\": \"1\",
                \"has_delivery\": \"1\",
                \"layout_type\": \"0\",
                \"tracking_link\": 1,
                \"timezone\": \"+1\",
                \"custom_field_template\": \"Template 1\",
                \"meta_data\": [
                    {
                      \"label\": \"Price\",
                      \"data\": \"100\"
                    },
                    {
                      \"label\": \"Price\",
                      \"data\": \"100\"
                    }
                ],
                \"pickup_custom_field_template\": \"Template 2\",
                \"pickup_meta_data\": [
                    {
                      \"label\": \"Price\",
                      \"data\": \"100\"
                    },
                    {
                      \"label\": \"Price\",
                      \"data\": \"100\"
                    }
                ],
                \"fleet_id\": \"17769\",
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
            $pickup_delivery    = new \Multiple\Frontend\Models\Pickupdelivery();
            if($pickup_delivery != false){
                $response       = $this->__curlRequestTask(
                        "https://api.tookanapp.com/v2/create_task", $jsonString);
                $stringRespo    = json_decode($response);
                if($stringRespo->status == self::ACTION_COMPLETE){
                    $typeRespo->setJsonContent(array('task' => 'OK',
                        'tookan'    => $stringRespo->data));
                }
                else{
                    $typeRespo->setJsonContent(array(
                        'task' => 'ERROR','tookan' => $stringRespo->data));
                }
            }
            else{
                $typeRespo->setJsonContent(array(
                    'task' => $pickup_delivery->getMessages()));
            }
        }
        $this->view->setRenderLevel(\Phalcon\Mvc\View::LEVEL_NO_RENDER);
        $typeRespo->setHeader('Content-Type', 'application/json');
        $typeRespo->send(); exit();
        return;
    }
    
    /**
     * $string here must be location
     * @param type $string
     * @return type
     */
    private function __getFleetTeam($string=''){
        $location = $string;
        if(empty($string) || is_null($string)){
            $location = strtolower(
                    $this->session->get('strLocation'));
        }
        $fleets = $this->__getAvailableFleets($location);
        return $fleets['team_id'];
    }
    
    /**
     * @return json
     */
    private function __getAvailableFleets($key = NULL){
        $jsonString = "{
            \"api_key\": \"".self::ACESS_TOKEN."\"
        }";
        $team       = array(); $status = false;
        $response   = $this->__curlRequestTask(
                "https://api.tookanapp.com/v2/view_teams", $jsonString);
        $getTeam    = json_decode($response);
        if(!empty($key) || !is_null($key)){
            foreach($getTeam->data as $keyTeam => $keyVal){
                if(strtolower($keyVal->team_name) == $key){
                    $team[$keyVal->team_name] = array(
                        'fleets'    => $keyVal->fleets,
                        'team_id'   => $keyVal->team_id);
                    return $team[$keyVal->team_name];
                }
            }
        }
        else{
            return $getTeam;
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
}
