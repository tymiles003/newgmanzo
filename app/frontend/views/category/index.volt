{% extends "templates/base.volt" %}

{% block head %}
{% endblock %}
{% block content %}
    <div class="body-content outer-top-xs" id="top-banner-and-menu">
	<div class="container">
		<div class="furniture-container homepage-container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-3 sidebar">
				<!-- ================================== TOP NAVIGATION ================================== -->
<div class="side-menu side-menu2 animate-dropdown outer-bottom-xs">
    <!-- <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> Categories</div>-->
    <nav class="yamm megamenu-horizontal" role="navigation">
        <ul class="nav">
        {% for keys, values in category %}
            <li class="menu-item">
                <a href="{{url('category/?cat='~values['category_id'])}}">{{values['category_name']}}</a>
            </li><!-- /.menu-item -->
        {% endfor %}
        </ul><!-- /.nav -->
    </nav><!-- /.megamenu-horizontal -->
</div><!-- /.side-menu -->
<!-- ================================== TOP NAVIGATION : END ================================== -->
			</div><!-- /.sidemenu-holder -->

                        <div class="col-xs-12 col-sm-12 col-md-9">
                            <div class="clearfix filters-container m-t-10"><h3><strong>{{categoryName.category_name | upper}}</strong></h3></div>
                                
				<div class="search-result-container">
					
							<div class="category-product  inner-top-vs">
								<div class="row">
                {% if products is defined %}
		{% for keys,values in products %}								
		<div class="col-sm-6 col-md-4 wow fadeInUp animated" style="visibility: visible; animation-name: fadeInUp;">
			<div class="products">
				
	<div class="product" id="item{{keys+1}}">		
		<div class="product-image">
			<div class="image">
				<a href="{{url('stores/details/'~values['product_id'])}}?display={{request.getQuery('display')}}&task={{request.getQuery('task')}}"><img src="{{url('assets/uploads/'~values['front_image'])}}" alt=""></a>
			</div><!-- /.image -->			

			<!--<div class="tag new"><span>new</span></div>                        		   -->
		</div><!-- /.product-image -->
			
		
		<div class="product-info text-left">
                        <!--<h4 style="color:#333;"><a href="detail.html" style="color:#333; font-weight:bold;">{{values['title'] | capitalize}}</a></h4>-->
			<h5 class="name" style="color:#333;"><a style="color:#333;" href="{{url('stores/details/'~values['product_id'])}}?display={{request.getQuery('display')}}&task={{request.getQuery('task')}}">{{values['title'] | capitalize}}</a></h5>
			<span class="info">{{helper.wordLimit(values['description'],40) | capitalize}}</span>
			<div class="product-price">	
				<span class="price"> (₦){{values['sale_price']}} </span><br/>
                                <span>By {{convert(values['added_by'],'display_name')}}</span><br/>
                                <span><strong>{{address(values['added_by'],'address1') | capitalize}}</strong></span>
                                <!--<span class="price-before-discount">(₦) 800</span>-->
			</div><!-- /.product-price -->
			
		</div><!-- /.product-info -->
					<div class="cart clearfix animate-effect">
				<div class="action">
					<ul class="list-unstyled">
						<li class="add-cart-button btn-group">
							<button class="btn btn-primary icon" data-toggle="dropdown" type="button">
								<i class="fa fa-shopping-cart"></i>													
							</button>
                                                        <input type="hidden" id="item{{keys+1}}_name" value="{{values['title'] | capitalize}}">
                                                        <input type="hidden" id="item{{keys+1}}_price" value="{{values['sale_price']}}">
                                                        <input type="hidden" id="item{{keys+1}}_pro_id" value="{{values['product_id']}}">
							<button class="btn btn-primary addToCart" type="button" id="item{{keys+1}}">Add to cart</button>
													
						</li>
	                   
					</ul>
				</div><!-- /.action -->
			</div><!-- /.cart -->
			</div><!-- /.product -->
      
			</div><!-- /.products -->
		</div><!-- /.item -->
	{% endfor %}
        {% else %}
        <div class="col-sm-12 wow fadeInUp animated" style="visibility: visible; animation-name: fadeInUp;">
        <div class="alert alert-danger"><h3><strong>No Products Available For Now In Our Store</strong></h3></div>
        </div>
        {% endif %}
		
                                                </div><!-- /.row -->
                        </div><!-- /.category-product -->

                
                </div><!-- /.search-result-container -->
                        </div>
                    </div>
                </div>
        </div>
    </div>
{% endblock %}
