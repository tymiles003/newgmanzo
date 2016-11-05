{% extends "templates/base.volt" %}

{% block head %}
<style type="text/css">
/**
 * Extra large button extensions. Extends `.btn`.
 */
.btn-block {
    padding: 18px 28px;
    line-height: normal;
    -webkit-border-radius: 0px;
       -moz-border-radius: 0px;
            border-radius: 0px;
    box-shadow:#ccc 0 3px 3px 0;
}

#myModal {
   /**background: #3498db !important;**/
   background: #fafafa !important;
   /**opacity: .80;
   filter: Alpha(Opacity=80);**/
}

.modal-header, .modal-footer {
  text-align: center;
  padding: 20px !important;
  border: none !important;
}

.modal-title {
    /**color: white !important;**/
}   

.modal-content {
    background: none !important;
    box-shadow: none !important;
    border: none !important;
}
.scrollable-menu {
    height: auto;
    max-height: 400px;
    overflow-x: hidden;
}
</style>
{% endblock %}
{% block content %}
<div class="body-content outer-top-xs" id="top-banner-and-menu" style="padding-bottom:50px;">
    <div class="container">
        {% include "partials/categoryslide.volt" %}
        
        <div class="row outer-bottom-sm">
			
			<div class="col-md-12">
					<!-- ========================================== SECTION – HERO ========================================= -->

	<div id="category" class="category-carousel hidden-xs">
            <div class="col col-md-9">
		<div class="item" style="margin-left:-20px;">	
			<div class="image">
				<img src="{{url('assets/images/grocery.jpg')}}" alt="" class="img-responsive">
			</div>
			<div class="container-fluid">
				<div class="caption vertical-top text-left">
					
					
				</div><!-- /.caption -->
			</div><!-- /.container-fluid -->
                    </div>
               </div>
               <div class="col col-md-2">
                <h2><strong>{{this.request.getQuery('display') | upper}}</strong></h2>
               </div>
</div>

		

			
<!-- ========================================= SECTION – HERO : END ========================================= -->
				<div class="clearfix filters-container m-t-10"></div>
                                
				<div class="search-result-container">
					
							<div class="category-product  inner-top-vs">
								<div class="row">
                {% if products is defined %}
		{% for keys,values in products %}								
		<div class="col-sm-3 col-md-3 wow fadeInUp animated" style="visibility: visible; animation-name: fadeInUp;">
			<div class="products">
				
	<div class="product" id="item{{keys+1}}">		
		<div class="product-image">
			<div class="image">
				<a href="{{url('stores/details/'~values['product_id'])}}?display={{request.getQuery('display')}}&task={{request.getQuery('task')}}"><img src="{{url('assets/uploads/'~values['front_image'])}}" alt=""></a>
			</div><!-- /.image -->			

			<!--<div class="tag new"><span>new</span></div>                        		   -->
		</div><!-- /.product-image -->
			
		
		<div class="product-info text-left">
			<h3 class="name"><a href="{{url('stores/details/'~values['product_id'])}}?display={{request.getQuery('display')}}&task={{request.getQuery('task')}}">{{values['title'] | capitalize}}</a></h3>
			<div class="info">{{helper.wordLimit(values['description'], 40)}}</div>
			<div class="product-price">	
				<span class="price"> ₦{{values['sale_price']}} </span>
                                <!--<span class="price-before-discount">₦ 800</span>-->
                                <div class="action">
					<ul class="list-unstyled">
						<li class="add-cart-button btn-group">
							<button class="btn btn-success icon" data-toggle="dropdown" type="button">
								<i class="fa fa-shopping-cart"></i>													
							</button>
                                                        <input type="hidden" id="item{{keys+1}}_name" value="{{values['title'] | capitalize}}">
                                                        <input type="hidden" id="item{{keys+1}}_price" value="{{values['sale_price']}}">
                                                        <input type="hidden" id="item{{keys+1}}_pro_id" value="{{values['product_id']}}">
							<button class="btn btn-success addToCart" type="button" id="item{{keys+1}}">Add to cart</button>
													
						</li>
					</ul>
				</div><!-- /.action -->
			</div><!-- /.product-price -->
			
		</div><!-- /.product-info -->
					<div class="cart clearfix animate-effect">
				<!-- <div class="action">
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
				</div> action -->
			</div><!-- /.cart -->
			</div><!-- /.product -->
      
			</div><!-- /.products -->
		</div><!-- /.item -->
	{% endfor %}
        {% else %}
        <div class="col-sm-9 wow fadeInUp animated" style="visibility: visible; animation-name: fadeInUp;">
        <div class="alert alert-danger"><strong> Product Not Available For Now In Our Store</strong></div>
        </div>
        {% endif %}
		
                                                </div><!-- /.row -->
                        </div><!-- /.category-product -->

                
                </div><!-- /.search-result-container -->

			</div><!-- /.col -->
		</div>
{% include "partials/relatedshop.volt" %}
    </div>        
</div>
{% endblock %}


