{% extends "templates/base.volt" %}

{% block head %}
{% endblock %}
{% block content %}
{% if stripper is not defined %}
    <!--Left Part Start -->
        <aside id="column-left" class="col-sm-3 hidden-xs">
          <h3 class="subtitle">Categories</h3>
          <div class="box-category">
            <ul id="cat_accordion">
            {% for keys,values in category %}
              <li><a href="{{url('category/?cat='~values['category_id'])}}">{{values['category_name']}}</a></li>
            {% endfor %}
            </ul>
          </div>
          <h3 class="subtitle">Best Selling</h3>
          <div class="side-item">
            <div class="product-thumb clearfix">
              <div class="image"><a href="#"><img src="image/product/apple_cinema_30-50x50.jpg" alt="Stack Honey" title="Stack Honey" class="img-responsive" /></a></div>
              <div class="caption">
                <h4><a href="#">Stack Honey</a></h4>
                <p class="price"><span class="price-new">&#8358;110.00</span> <span class="price-old">&#8358;122.00</span> <span class="saving">-10%</span></p>
              </div>
            </div>
            
          </div>
          
          <div class="banner owl-carousel">
            <div class="item"> <a href="#"><img src="image/banner/small-banner1-265x350.jpg" alt="small banner" class="img-responsive" /></a> </div>
            <div class="item"> <a href="#"><img src="image/banner/small-banner-265x350.jpg" alt="small banner1" class="img-responsive" /></a> </div>
          </div>
        </aside>
        <!--Left Part End -->
        
        <!--Middle Part Start-->
        <div id="content" class="col-sm-9">
        <p>&nbsp;</p>
          <h1 class="title">{{cat.category_name | capitalize}}</h1>
          
          <div class="product-filter">
            <div class="row">
              <div class="col-md-4 col-sm-5">
                <div class="btn-group">
                  <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="List"><i class="fa fa-th-list"></i></button>
                  <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="Grid"><i class="fa fa-th"></i></button>
                </div>
                <a href="javascript:void(0);" id="compare-total">Product (0)</a> </div>
              
              <div class="col-sm-5 text-right">
                <label class="control-label" for="input-limit">Show:</label>
              </div>
              <div class="col-sm-2 text-right">
                <select id="input-limit" class="form-control">
                  <option value="" selected="selected">20</option>
                  <option value="">25</option>
                  <option value="">50</option>
                  <option value="">75</option>
                  <option value="">100</option>
                </select>
              </div>
            </div>
          </div>
          <br />
          <div class="row products-category">
          {% for keys,values in pager.getPaginate().items %}
            <div class="product-layout product-list col-xs-12">
              <div class="product-thumb" id="item{{values.product_id}}">
                    <div class="image">
                        <a href="#">
                            <img alt="{{values.title | capitalize}}" id="item{{values.product_id}}_img" src="{{url('assets/uploads/'~values.front_image)}}" class="img-responsive" />
                        </a>
                        
                        <input type="hidden" id="item{{values.product_id}}_name" value="{{values.title | capitalize}}">
                        <input type="hidden" id="item{{values.product_id}}_price" value="{{values.sale_price}}">
                        <input type="hidden" id="item{{values.product_id}}_pro_id" value="{{values.product_id}}">
                    </div>
                <div>
                  <div class="caption">
                    <h4><a href="#"> {{values.title | capitalize}} </a></h4>
                    <p class="description"> {{values.description | capitalize}}</p>
                    <div class="rating"><small>By {{convert(values.added_by,'display_name')}} | {{address(values.added_by,'address1') | capitalize}}</small></div>
                    <p class="price"> <span class="price-new">&#8358;{{values.sale_price}}</span> <span class="price-old">&#8358;0</span> <span class="saving">0%</span> <span class="price-tax"></span> </p>
                  </div>
                  <div class="button-group">
                    <button class="btn-primary addToCart" id="item{{values.product_id}}" type="button" onClick=""><span>Add to Cart</span></button>
                    <div class="add-to-links">
                      <button type="button" data-toggle="tooltip" title="Add to Wish List" onClick=""><i class="fa fa-heart"></i> <span>Add to Wish List</span></button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            {% endfor %}
          </div>
          <div class="row">
            {{ partial('partials/pagination', [
                'page': pager.getPaginate(),
                'limit': pager.getLimit()
              ])
            }}
          </div>
        </div>
        <!--Middle Part End -->
{% else %}

{% endif %}
{% endblock %}
