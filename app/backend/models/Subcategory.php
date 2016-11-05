<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Subcategory
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Backend\Models;

class Subcategory extends BaseModel{
    //put your code here
    public function initialize(){
        $this->belongsTo(
                "category_id", 
                "Multiple\Backend\Models\Category", 
                "category_id",
                array('reusable' => true));
        
        $this->setSource('sub_category');
    }
    
    //A fix for the namespacing attributes
    public function getCategory(){
        return $this->getRelated('Multiple\Backend\Models\Category');
    }
}
