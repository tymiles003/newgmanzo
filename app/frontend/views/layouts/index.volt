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
            <div class="product-thumb clearfix" id="item{{keys+1}}">
              <div class="image">
                <a href="{{url('store/details/'~values['product_id'])}}"><img  src="{{url('assets/uploads/'~values['front_image'])}}" class="img-responsive" /></a>
              </div>
              <div class="caption">
                <h4><a href="{{url('store/details/'~values['product_id'])}}"><a href="detail.html" style="color:#333;">{{values['title'] | capitalize}}</a></a></h4>
                <p class="price"> ${{values['sale_price']}} </p>
                <div class="rating">By {{convert(values['added_by'],'display_name')}} | {{address(values['added_by'],'address1') | capitalize}}</div>
                <input type="hidden" id="item{{keys+1}}_name" value="{{values['title'] | capitalize}}">
                <input type="hidden" id="item{{keys+1}}_price" value="{{values['sale_price']}}">
                <input type="hidden" id="item{{keys+1}}_pro_id" value="{{values['product_id']}}">
              </div>
              <div class="button-group">
                <button class="btn-primary addToCart" id="item{{keys+1}}" type="button" onClick=""><span>Add to Cart</span></button>
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
              {% for keys, values in available %}
                <li><a href="#tab-cat{{keys+1}}">{{values['category_name'] | capitalize}}</a></li>
              {% endfor %}
              </ul>
              <div id="tab-cat1" class="tab_content">
                <div class="owl-carousel latest_category_tabs">
                {% for keys,values in tab_cat1 %}
                  <div class="product-thumb" id="item{{keys+1}}">
                    <div class="image">
                        <a href="{{url('store/details/'~values['product_id'])}}"><img  src="{{url('assets/uploads/'~values['front_image'])}}" class="img-responsive" alt="{{values['title'] | capitalize}}"></a>
                    </div>
                    <div class="caption">
                      <h4><a href="{{url('store/details/'~values['product_id'])}}">{{values['title'] | capitalize}}</a></h4>
                      <p class="price"> <span class="price-new">${{values['sale_price']}}</span> <span class="price-old">$0</span> <span class="saving">0%</span> 
                        <input type="hidden" id="item{{keys+1}}_name" value="{{values['title'] | capitalize}}">
                        <input type="hidden" id="item{{keys+1}}_price" value="{{values['sale_price']}}">
                        <input type="hidden" id="item{{keys+1}}_pro_id" value="{{values['product_id']}}">
                      </p>
                      <div class="rating">By {{convert(values['added_by'],'display_name')}} | {{address(values['added_by'],'address1') | capitalize}}</div>
                    </div>
                    <div class="button-group">
                      <button class="btn-primary addToCart" id="item{{keys+1}}" type="button" onClick=""><span>Add to Cart</span></button>
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
                  <div class="product-thumb" id="item{{keys+1}}">
                    <div class="image">
                        <a href="{{url('store/details/'~values['product_id'])}}"><img  src="{{url('assets/uploads/'~values['front_image'])}}" class="img-responsive" alt="{{values['title'] | capitalize}}"></a>
                    </div>
                    <div class="caption">
                      <h4><a href="{{url('store/details/'~values['product_id'])}}">{{values['title'] | capitalize}}</a></h4>
                      <p class="price"> <span class="price-new">${{values['sale_price']}}</span> <span class="price-old">$0</span> <span class="saving">0%</span> 
                        <input type="hidden" id="item{{keys+1}}_name" value="{{values['title'] | capitalize}}">
                        <input type="hidden" id="item{{keys+1}}_price" value="{{values['sale_price']}}">
                        <input type="hidden" id="item{{keys+1}}_pro_id" value="{{values['product_id']}}">
                      </p>
                      <div class="rating">By {{convert(values['added_by'],'display_name')}} | {{address(values['added_by'],'address1') | capitalize}}</div>
                    </div>
                    <div class="button-group">
                      <button class="btn-primary addToCart" id="item{{keys+1}}" type="button" onClick=""><span>Add to Cart</span></button>
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
                  <div class="product-thumb" id="item{{keys+1}}">
                    <div class="image">
                        <a href="{{url('store/details/'~values['product_id'])}}"><img  src="{{url('assets/uploads/'~values['front_image'])}}" class="img-responsive" alt="{{values['title'] | capitalize}}"></a>
                    </div>
                    <div class="caption">
                      <h4><a href="{{url('store/details/'~values['product_id'])}}">{{values['title'] | capitalize}}</a></h4>
                      <p class="price"> <span class="price-new">${{values['sale_price']}}</span> <span class="price-old">$0</span> <span class="saving">0%</span> 
                        <input type="hidden" id="item{{keys+1}}_name" value="{{values['title'] | capitalize}}">
                        <input type="hidden" id="item{{keys+1}}_price" value="{{values['sale_price']}}">
                        <input type="hidden" id="item{{keys+1}}_pro_id" value="{{values['product_id']}}">
                      </p>
                      <div class="rating">By {{convert(values['added_by'],'display_name')}} | {{address(values['added_by'],'address1') | capitalize}}</div>
                    </div>
                    <div class="button-group">
                      <button class="btn-primary addToCart" id="item{{keys+1}}" type="button" onClick=""><span>Add to Cart</span></button>
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
                  <div class="product-thumb" id="item{{keys+1}}">
                    <div class="image">
                        <a href="{{url('store/details/'~values['product_id'])}}"><img  src="{{url('assets/uploads/'~values['front_image'])}}" class="img-responsive" alt="{{values['title'] | capitalize}}"></a>
                    </div>
                    <div class="caption">
                      <h4><a href="{{url('store/details/'~values['product_id'])}}">{{values['title'] | capitalize}}</a></h4>
                      <p class="price"> <span class="price-new">${{values['sale_price']}}</span> <span class="price-old">$0</span> <span class="saving">0%</span> 
                        <input type="hidden" id="item{{keys+1}}_name" value="{{values['title'] | capitalize}}">
                        <input type="hidden" id="item{{keys+1}}_price" value="{{values['sale_price']}}">
                        <input type="hidden" id="item{{keys+1}}_pro_id" value="{{values['product_id']}}">
                      </p>
                      <div class="rating">By {{convert(values['added_by'],'display_name')}} | {{address(values['added_by'],'address1') | capitalize}}</div>
                    </div>
                    <div class="button-group">
                      <button class="btn-primary addToCart" id="item{{keys+1}}" type="button" onClick=""><span>Add to Cart</span></button>
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
                  <div class="product-thumb" id="item{{keys+1}}">
                    <div class="image">
                        <a href="{{url('store/details/'~values['product_id'])}}"><img  src="{{url('assets/uploads/'~values['front_image'])}}" class="img-responsive" alt="{{values['title'] | capitalize}}"></a>
                    </div>
                    <div class="caption">
                      <h4><a href="{{url('store/details/'~values['product_id'])}}">{{values['title'] | capitalize}}</a></h4>
                      <p class="price"> <span class="price-new">${{values['sale_price']}}</span> <span class="price-old">$0</span> <span class="saving">0%</span> 
                        <input type="hidden" id="item{{keys+1}}_name" value="{{values['title'] | capitalize}}">
                        <input type="hidden" id="item{{keys+1}}_price" value="{{values['sale_price']}}">
                        <input type="hidden" id="item{{keys+1}}_pro_id" value="{{values['product_id']}}">
                      </p>
                      <div class="rating">By {{convert(values['added_by'],'display_name')}} | {{address(values['added_by'],'address1') | capitalize}}</div>
                    </div>
                    <div class="button-group">
                      <button class="btn-primary addToCart" id="item{{keys+1}}" type="button" onClick=""><span>Add to Cart</span></button>
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
                  <div class="product-thumb" id="item{{keys+1}}">
                    <div class="image">
                        <a href="{{url('store/details/'~values['product_id'])}}"><img  src="{{url('assets/uploads/'~values['front_image'])}}" class="img-responsive" alt="{{values['title'] | capitalize}}"></a>
                    </div>
                    <div class="caption">
                      <h4><a href="{{url('store/details/'~values['product_id'])}}">{{values['title'] | capitalize}}</a></h4>
                      <p class="price"> <span class="price-new">${{values['sale_price']}}</span> <span class="price-old">$0</span> <span class="saving">0%</span> 
                        <input type="hidden" id="item{{keys+1}}_name" value="{{values['title'] | capitalize}}">
                        <input type="hidden" id="item{{keys+1}}_price" value="{{values['sale_price']}}">
                        <input type="hidden" id="item{{keys+1}}_pro_id" value="{{values['product_id']}}">
                      </p>
                      <div class="rating">By {{convert(values['added_by'],'display_name')}} | {{address(values['added_by'],'address1') | capitalize}}</div>
                    </div>
                    <div class="button-group">
                      <button class="btn-primary addToCart" id="item{{keys+1}}" type="button" onClick=""><span>Add to Cart</span></button>
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
          
          <!-- Brand Logo Carousel Start-->
          <div id="carousel" class="owl-carousel nxt">
            <div class="item text-center"> <a href="#"><img src="image/product/apple_logo-100x100.jpg" alt="Palm" class="img-responsive" /></a> </div>
            <div class="item text-center"> <a href="#"><img src="image/product/canon_logo-100x100.jpg" alt="Sony" class="img-responsive" /></a> </div>
            <div class="item text-center"> <a href="#"><img src="image/product/apple_logo-100x100.jpg" alt="Canon" class="img-responsive" /></a> </div>
            <div class="item text-center"> <a href="#"><img src="image/product/canon_logo-100x100.jpg" alt="Apple" class="img-responsive" /></a> </div>
            <div class="item text-center"> <a href="#"><img src="image/product/apple_logo-100x100.jpg" alt="HTC" class="img-responsive" /></a> </div>
            <div class="item text-center"> <a href="#"><img src="image/product/canon_logo-100x100.jpg" alt="Hewlett-Packard" class="img-responsive" /></a> </div>
            <div class="item text-center"> <a href="#"><img src="image/product/apple_logo-100x100.jpg" alt="brand" class="img-responsive" /></a> </div>
            <div class="item text-center"> <a href="#"><img src="image/product/canon_logo-100x100.jpg" alt="brand1" class="img-responsive" /></a> </div>
          </div>
          <!-- Brand Logo Carousel End -->
        </div>
        <!--Middle Part End-->
{% endblock %}