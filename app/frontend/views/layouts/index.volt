{% extends "templates/base.volt" %}

{% block head %}

{% endblock %}
{% block content %}
    <!--Middle Part Start-->
        <div id="content" class="col-xs-12">
          <div class="row">
            <div class="col-sm-8">
              <!-- Slideshow Start-->
              <div class="slideshow single-slider owl-carousel">
                <div class="item"> <a href="#"><img class="img-responsive" src="{{url('assets/image/slider/banner-1-750x400.jpg')}}" alt="banner 1" /></a></div>
                <div class="item"> <a href="#"><img class="img-responsive" src="{{url('assets/image/slider/banner-2-750x400.jpg')}}" alt="banner 2" /></a></div>
                <div class="item"> <a href="#"><img class="img-responsive" src="{{url('assets/image/slider/banner-3-750x400.jpg')}}" alt="banner 3" /></a></div>
              </div>
              <!-- Slideshow End-->
            </div>
            <div class="col-sm-4 pull-right flip">
              <div class="marketshop-banner">
                <div class="row">
                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> <a href="#"><img title="sample-banner1" alt="sample-banner1" src="{{url('assets/image/banner/sp-small-banner-360x185.jpg')}}"></a></div>
                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> <a href="#"><img title="sample-banner" alt="sample-banner" src="{{url('assets/image/banner/sp-small-banner1-360x185.jpg')}}"></a></div>
                </div>
              </div>
            </div>
          </div>
          <!-- Bestsellers Product Start-->
          <h3 class="subtitle">Selling</h3>
          <div class="owl-carousel product_carousel">
          {% for keys,values in products %}
            <div class="product-thumb clearfix" id="item{{values['product_id']}}">
              <div class="image">
                <a href="{{url('store/details/'~values['product_id'])}}"><img  src="{{url('assets/uploads/'~values['front_image'])}}" class="img-responsive" /></a>
              </div>
              <div class="caption">
                <h4><a href="{{url('store/details/'~values['product_id'])}}"><a href="detail.html" style="color:#333;">{{values['title'] | capitalize}}</a></a></h4>
                <p class="price"> &#8358;{{values['sale_price']}} </p>
                <div class="rating">By {{convert(values['added_by'],'display_name')}} | {{address(values['added_by'],'address1') | capitalize}}</div>
                <input type="hidden" id="item{{values['product_id']}}_name" value="{{values['title'] | capitalize}}">
                <input type="hidden" id="item{{values['product_id']}}_price" value="{{values['sale_price']}}">
                <input type="hidden" id="item{{values['product_id']}}_pro_id" value="{{values['product_id']}}">
              </div>
              <div class="button-group">
                <button class="btn-primary addToCart" id="item{{values['product_id']}}" type="button" onClick=""><span>Add to Cart</span></button>
                <div class="add-to-links">
                  <button type="button" data-toggle="tooltip" title="Add to Wish List" onClick=""><i class="fa fa-heart"></i></button>
                </div>
              </div>
            </div>
            {% endfor %}
            
          </div>
          <!-- Featured Product End/ Selling-->
          
          <!-- Categories Product Slider Start-->
          <div class="category-module" id="latest_category">
            <h3 class="subtitle">Categories - <a class="viewall" href="category.tpl">view all</a></h3>
            <div class="category-module-content">
              <ul id="sub-cat" class="tabs">
              <?php $counter = 1; ?>
              {% for keys, values in available %}
                <li><a href="#tab-cat<?php echo $counter; ?>">{{values['category_name'] | capitalize}}</a></li>
                <?php $counter++; ?>
              {% endfor %}
              </ul>
              <div id="tab-cat1" class="tab_content">
                <div class="owl-carousel latest_category_tabs">
                {% for keys,values in tab_cat1 %}
                  <div class="product-thumb" id="item{{values['product_id']}}">
                    <div class="image">
                        <a href="{{url('store/details/'~values['product_id'])}}"><img  src="{{url('assets/uploads/'~values['front_image'])}}" class="img-responsive" alt="{{values['title'] | capitalize}}"></a>
                    </div>
                    <div class="caption">
                      <h4><a href="{{url('store/details/'~values['product_id'])}}">{{values['title'] | capitalize}}</a></h4>
                      <p class="price"> <span class="price-new">&#8358;{{values['sale_price']}}</span> <span class="price-old">&#8358;0</span> <span class="saving">0%</span> 
                        <input type="hidden" id="item{{values['product_id']}}_name" value="{{values['title'] | capitalize}}">
                        <input type="hidden" id="item{{values['product_id']}}_price" value="{{values['sale_price']}}">
                        <input type="hidden" id="item{{values['product_id']}}_pro_id" value="{{values['product_id']}}">
                      </p>
                      <div class="rating">By {{convert(values['added_by'],'display_name')}} | {{address(values['added_by'],'address1') | capitalize}}</div>
                    </div>
                    <div class="button-group">
                      <button class="btn-primary addToCart" id="item{{values['product_id']}}" type="button" onClick=""><span>Add to Cart</span></button>
                      <div class="add-to-links">
                        <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                      </div>
                    </div>
                  </div>
                  {% endfor %}
                </div>
              </div>
              <div id="tab-cat2" class="tab_content">
                <div class="owl-carousel latest_category_tabs">
                  {% for keys,values in tab_cat2 %}
                  <div class="product-thumb" id="item{{values['product_id']}}">
                    <div class="image">
                        <a href="{{url('store/details/'~values['product_id'])}}"><img  src="{{url('assets/uploads/'~values['front_image'])}}" class="img-responsive" alt="{{values['title'] | capitalize}}"></a>
                    </div>
                    <div class="caption">
                      <h4><a href="{{url('store/details/'~values['product_id'])}}">{{values['title'] | capitalize}}</a></h4>
                      <p class="price"> <span class="price-new">&#8358;{{values['sale_price']}}</span> <span class="price-old">&#8358;0</span> <span class="saving">0%</span> 
                        <input type="hidden" id="item{{values['product_id']}}_name" value="{{values['title'] | capitalize}}">
                        <input type="hidden" id="item{{values['product_id']}}_price" value="{{values['sale_price']}}">
                        <input type="hidden" id="item{{values['product_id']}}_pro_id" value="{{values['product_id']}}">
                      </p>
                      <div class="rating">By {{convert(values['added_by'],'display_name')}} | {{address(values['added_by'],'address1') | capitalize}}</div>
                    </div>
                    <div class="button-group">
                      <button class="btn-primary addToCart" id="item{{values['product_id']}}" type="button" onClick=""><span>Add to Cart</span></button>
                      <div class="add-to-links">
                        <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                      </div>
                    </div>
                  </div>
                  {% endfor %}
                </div>
              </div>
              <div id="tab-cat3" class="tab_content">
                <div class="owl-carousel latest_category_tabs">
                  {% for keys,values in tab_cat3 %}
                  <div class="product-thumb" id="item{{values['product_id']}}">
                    <div class="image">
                        <a href="{{url('store/details/'~values['product_id'])}}"><img  src="{{url('assets/uploads/'~values['front_image'])}}" class="img-responsive" alt="{{values['title'] | capitalize}}"></a>
                    </div>
                    <div class="caption">
                      <h4><a href="{{url('store/details/'~values['product_id'])}}">{{values['title'] | capitalize}}</a></h4>
                      <p class="price"> <span class="price-new">&#8358;{{values['sale_price']}}</span> <span class="price-old">&#8358;0</span> <span class="saving">0%</span> 
                        <input type="hidden" id="item{{values['product_id']}}_name" value="{{values['title'] | capitalize}}">
                        <input type="hidden" id="item{{values['product_id']}}_price" value="{{values['sale_price']}}">
                        <input type="hidden" id="item{{values['product_id']}}_pro_id" value="{{values['product_id']}}">
                      </p>
                      <div class="rating">By {{convert(values['added_by'],'display_name')}} | {{address(values['added_by'],'address1') | capitalize}}</div>
                    </div>
                    <div class="button-group">
                      <button class="btn-primary addToCart" id="item{{values['product_id']}}" type="button" onClick=""><span>Add to Cart</span></button>
                      <div class="add-to-links">
                        <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                      </div>
                    </div>
                  </div>
                  {% endfor %}
                </div>
              </div>
              <div id="tab-cat4" class="tab_content">
                <div class="owl-carousel latest_category_tabs">
                  {% for keys,values in tab_cat4 %}
                  <div class="product-thumb" id="item{{values['product_id']}}">
                    <div class="image">
                        <a href="{{url('store/details/'~values['product_id'])}}"><img  src="{{url('assets/uploads/'~values['front_image'])}}" class="img-responsive" alt="{{values['title'] | capitalize}}"></a>
                    </div>
                    <div class="caption">
                      <h4><a href="{{url('store/details/'~values['product_id'])}}">{{values['title'] | capitalize}}</a></h4>
                      <p class="price"> <span class="price-new">&#8358;{{values['sale_price']}}</span> <span class="price-old">&#8358;0</span> <span class="saving">0%</span> 
                        <input type="hidden" id="item{{values['product_id']}}_name" value="{{values['title'] | capitalize}}">
                        <input type="hidden" id="item{{values['product_id']}}_price" value="{{values['sale_price']}}">
                        <input type="hidden" id="item{{values['product_id']}}_pro_id" value="{{values['product_id']}}">
                      </p>
                      <div class="rating">By {{convert(values['added_by'],'display_name')}} | {{address(values['added_by'],'address1') | capitalize}}</div>
                    </div>
                    <div class="button-group">
                      <button class="btn-primary addToCart" id="item{{values['product_id']}}" type="button" onClick=""><span>Add to Cart</span></button>
                      <div class="add-to-links">
                        <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                      </div>
                    </div>
                  </div>
                  {% endfor %}
                  
                </div>
              </div>
              <div id="tab-cat5" class="tab_content">
                <div class="owl-carousel latest_category_tabs">
                  {% for keys,values in tab_cat5 %}
                  <div class="product-thumb" id="item{{values['product_id']}}">
                    <div class="image">
                        <a href="{{url('store/details/'~values['product_id'])}}"><img  src="{{url('assets/uploads/'~values['front_image'])}}" class="img-responsive" alt="{{values['title'] | capitalize}}"></a>
                    </div>
                    <div class="caption">
                      <h4><a href="{{url('store/details/'~values['product_id'])}}">{{values['title'] | capitalize}}</a></h4>
                      <p class="price"> <span class="price-new">&#8358;{{values['sale_price']}}</span> <span class="price-old">&#8358;0</span> <span class="saving">0%</span> 
                        <input type="hidden" id="item{{values['product_id']}}_name" value="{{values['title'] | capitalize}}">
                        <input type="hidden" id="item{{values['product_id']}}_price" value="{{values['sale_price']}}">
                        <input type="hidden" id="item{{values['product_id']}}_pro_id" value="{{values['product_id']}}">
                      </p>
                      <div class="rating">By {{convert(values['added_by'],'display_name')}} | {{address(values['added_by'],'address1') | capitalize}}</div>
                    </div>
                    <div class="button-group">
                      <button class="btn-primary addToCart" id="item{{values['product_id']}}" type="button" onClick=""><span>Add to Cart</span></button>
                      <div class="add-to-links">
                        <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                      </div>
                    </div>
                  </div>
                  {% endfor %}
                  
                </div>
              </div>
              <div id="tab-cat6" class="tab_content">
                <div class="owl-carousel latest_category_tabs">
                  {% for keys,values in tab_cat6 %}
                  <div class="product-thumb" id="item{{values['product_id']}}">
                    <div class="image">
                        <a href="{{url('store/details/'~values['product_id'])}}"><img  src="{{url('assets/uploads/'~values['front_image'])}}" class="img-responsive" alt="{{values['title'] | capitalize}}"></a>
                    </div>
                    <div class="caption">
                      <h4><a href="{{url('store/details/'~values['product_id'])}}">{{values['title'] | capitalize}}</a></h4>
                      <p class="price"> <span class="price-new">&#8358;{{values['sale_price']}}</span> <span class="price-old">&#8358;0</span> <span class="saving">0%</span> 
                        <input type="hidden" id="item{{values['product_id']}}_name" value="{{values['title'] | capitalize}}">
                        <input type="hidden" id="item{{values['product_id']}}_price" value="{{values['sale_price']}}">
                        <input type="hidden" id="item{{values['product_id']}}_pro_id" value="{{values['product_id']}}">
                      </p>
                      <div class="rating">By {{convert(values['added_by'],'display_name')}} | {{address(values['added_by'],'address1') | capitalize}}</div>
                    </div>
                    <div class="button-group">
                      <button class="btn-primary addToCart" id="item{{values['product_id']}}" type="button" onClick=""><span>Add to Cart</span></button>
                      <div class="add-to-links">
                        <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                      </div>
                    </div>
                  </div>
                  {% endfor %}
                  
                </div>
              </div>
            </div>
          </div>
          <!-- Categories Product Slider End-->
        </div>
        <!--Middle Part End-->

<!-- MODAL -->
<div id="myModalState" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <img src="{{url('assets/image/logo.png')}}" alt="">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><strong>&nbsp;</strong></h4>
      </div>
      <div class="modal-body">
        <p>
        <input type="text" class="form-control input-lg" id="input-location" placeholder="Enter you location" name="location" />
        <!--<button type="button" class="btn btn-block btn-lg btn-primary"><strong><small>Display Shops</small></strong></button>-->
        </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="lnk btn" data-dismiss="modal">Close Window</button>
        <!--<button type="button" class="lnk btn btn-lg" style="background:white; border:1px solid #444; color:#444;"><strong>Display Shops</strong></button>-->
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

{% endblock %}