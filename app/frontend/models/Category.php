<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Category
 *
 * @author Theophilus Alamu <theophilus.alamu at gmail.com>
 */
namespace Multiple\Frontend\Models;

class Category extends BaseModel{
    //put your code here
    
    public function initialize() {
        $this->belongsTo(
                "product_id", 
                "Products", 
                "product_id",
                array('reusable' => true));
    }
}
