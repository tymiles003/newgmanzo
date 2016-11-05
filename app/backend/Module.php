<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Module
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Backend;

use Phalcon\Loader;
use Phalcon\Config\Adapter\Ini as ConfigIni;
use Phalcon\DiInterface;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Mvc\ModuleDefinitionInterface;

class Module implements ModuleDefinitionInterface{
    
    public function registerAutoloaders(DiInterface $di = null) {
        $loader = new Loader();
        $loader->registerNamespaces(array(
            'Multiple\Backend\Controllers'  => '../app/backend/controllers/',
            'Multiple\Backend\Models'       => '../app/backend/models/',
            'Multiple\Backend\Plugins'      => '../app/backend/plugins/',
            'Multiple\Backend\Config'       => '../app/backend/config/',
            'Multiple\Backend\Component'    => '../app/backend/components/',
        ));
        $loader->register();
    }

    public function registerServices(DiInterface $di) {
        define('APP_PATH', realpath('..') . DIRECTORY_SEPARATOR);
        $config = new ConfigIni(APP_PATH . 'app/backend/config/config.ini');

        //Return API config
        $di->setShared('config', function() use ($config){
            return $config;
        });

        //Database connection Dependencies
        $di->set('db', function() use ($di){
            $dbConfig = $di->get('config')->get('db')->toArray();
            //Use the database configure in the config file 
            $db = new \Phalcon\Db\Adapter\Pdo\Mysql($dbConfig);
            return $db;
        });

        //Establish the security level
        $di->set('security', function(){
            $security = new \Phalcon\Security();
            //$security->setWorkFactor(12);
            return $security;
        }, true);

        //Set the view directories
        
        $di->set('view', function() use($config){
            $view = new \Phalcon\Mvc\View();
            $eventsManager = new \Phalcon\Events\Manager();
            $eventsManager->attach("view", function($eventType, $view){
                //echo $eventType->getType(), '-', $view->getActiveRenderPath(), PHP_EOL;
            });
            //$view->setViewsDir('../app/views');
            $view->setViewsDir(APP_PATH . $config->application->viewsDir);
            $view->registerEngines(array(".volt" => 'volt'));
            //updated view function
            $view->setEventsManager($eventsManager);
            return $view;
        });

        //Setting up the volt cache engine
        $di->set('volt', function($view, $di){
            $volt = new \Phalcon\Mvc\View\Engine\Volt($view, $di);
            $volt->setOptions(array('compiledPath' => APP_PATH . 'cache/volt/'));
            $compiler = $volt->getCompiler();
            return $volt;
        }, true);

        //Set session
        $di->setShared('session', function(){
            $session = new \Phalcon\Session\Adapter\Files();
            $session->start();
            return $session;
        });

        //Return custom components
        $di->setShared('component', function(){
            $obj = new \stdClass();
            $obj->helper            = new Component\Helper();
            //$Obj->grFingerService   = new GrFingerService();
            return $obj;
        });

        //Set up GrFingerService for Biometrics
        $di->setShared('grFingerService', function(){
            $grFingerService    = new GrFingerService();
            return $grFingerService;
        });

        //Flash Data(Temporary Data)
        $di->set('flash', function(){
            $flash = new \Phalcon\Flash\Session(array(
                'error' => 'alert alert-danger',
                'success' => 'alert alert-success',
                'notice' => 'alert alert-info',
                'warning' => 'alert alert-warning'
            ));
            return $flash;
        });

        //Model Event Manager
        $di->set('modelsManager', function(){
            return new \Phalcon\Mvc\Model\Manager();
        });

        //Meta-data
        $di['modesMetadata'] = function(){
            $metaData = new \Phalcon\Mvc\Model\MetaData\Apc(array(
                "lifetime"=>84600,
                "prefix"=>"metaData"
            ));
            return $metaData;
        };

        //Setup a base URI so that all generated URIs include the tutorial folder
        $di->set('url', function(){
            $url = new \Phalcon\Mvc\Url();
            $url->setBaseUri("/gmanzomulti/");
            return $url;
        });

        $di->setShared('dataTables', function($options){
            return new DataTables\DataTable($options);
        });

        //Custom Dispatcher (Overides the Default)
        $di->set('dispatcher', function() use ($di){
            $eventsManager = $di->getShared('eventsManager');
            //Custom ACL Class
            $permission = new Config\Permission();
            //Listen for events from the permission class
            $eventsManager->attach('dispatch', $permission);
            $eventsManager->attach('dispatch', Plugins\LoggersPlugin::getLoggerInst());
            $eventsManager->attach('dispatch', Plugins\ExceptionsPlugin::getExceptionInst());

            $dispatcher = new \Phalcon\Mvc\Dispatcher();
            $dispatcher->setDefaultNamespace("Multiple\Backend\Controllers\\");
            $dispatcher->setEventsManager($eventsManager);
            return $dispatcher;
        });
    }

//put your code here
}
