<?php
error_reporting(E_ALL);
session_name('gmanzomulti');
/**
 * Creating the Boostrapping Application
 * All Boostrapping Activities Starts here
 */
use Phalcon\Config\Adapter\Ini as ConfigIni;

use Phalcon\Loader, Phalcon\Mvc\Router, Phalcon\Mvc\View;
use Phalcon\Mvc\Application as BaseApplication;

try{
//    define('APP_PATH', realpath('..') . DIRECTORY_SEPARATOR);
    
    $view   = new View();
    //$config = new ConfigIni(APP_PATH . 'app/config/config.ini');
    //Starting the Autoloader
    $loader = new \Phalcon\Loader();
    $loader->registerDirs(array(
        
    ));
    
    $loader->registerNamespaces(array(
        'DataTables'    => __DIR__ . '/../vendor/m1ome/phalcon-datatables/src/'
    ));
    
    $loader->register();
    //Dependencies Injection
    $dependencyInjector = new \Phalcon\Di\FactoryDefault();
    $application        = new BaseApplication($dependencyInjector);
    
    //Registering a router
    $dependencyInjector->set('router', function () {
        $router = new Router();
        $router->setDefaultModule("frontend");
        //$router->setUriSource(
        //Router::URI_SOURCE_SERVER_REQUEST_URI);
        $router->removeExtraSlashes(true);
        
        $router->add('/:module/:controller/:action/:params', array(
            'module'        => 1,
            'controller'    => 2,
            'action'        => 3,
            'params'        => 4
        ));
        
        $router->add("/", array(
            'module'        => 'frontend',
            'controller'    => 'index',
            'action'        => 'index'
        ));
        
        $router->add("/backend", array(
            'module'        => 'backend',
            'controller'    => 'index',
            'action'        => 'index'
        ));
        
        $router->add('/backend/:controller', array(
            'module'        => "backend",
            'controller'    => 1,
            'action'        => "index"
        ));
        
        $router->add('/backend/:controller/:action/', array(
            'module'        => "backend",
            'controller'    => 1,
            'action'        => 2));
        
        $router->add('/backend/:controller/:action/:params', array(
            'module'        => "backend",
            'controller'    => 1,
            'action'        => 2,
            'params'        => 3));
        
        return $router;
    });
    
    $application->registerModules(array(
        'frontend'  => array(
            'className' => 'Multiple\Frontend\Module',
            'path'      => '../app/frontend/Module.php',
        ),
        'backend'   => array(
            'className' => 'Multiple\Backend\Module',
            'path'      => '../app/backend/Module.php'
        )
    ));
    
    header("Access-Control-Allow-Origin: *");
    
    //Handle and display appropriate request
    $response   = $application->handle()->getContent();
    echo ($response);
    
} catch (\Phalcon\Exception $ex) {
    echo $ex->getMessage();
}
?>