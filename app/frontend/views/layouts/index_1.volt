{% extends "templates/base.volt" %}

{% block head %}
<style type="text/css">
/**
 * Extra large button extensions. Extends `.btn`.
 */
.btn-block {
    padding: 18px 28px;
    /*font-size: 22px;*/
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

.select-style {
    border: 5px solid #f90 !important;
    border-radius: 3px !important;
    overflow: hidden !important;
    background: #fafafa url("data:image/png;base64,R0lGODlhDwAUAIABAAAAAP///yH5BAEAAAEALAAAAAAPABQAAAIXjI+py+0Po5wH2HsXzmw//lHiSJZmUAAAOw==") no-repeat 90% 50% !important;
}

.select-style select {
    padding: 15px 18px !important;
    width: 105% !important;
    height: 60px;
    border: none !important;
    box-shadow: none !important;
    background: transparent !important;
    background-image: none !important;
    -webkit-appearance: none !important;
}

.select-style select:focus {
    outline: none !important;
}
</style>
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
			
                            <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
				<!-- ========================================== SECTION – HERO ========================================= -->
			
<div id="hero" class="homepage-slider3">
	<div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
		<div class="full-width-slider">	
			<div class="item" style="background-image: url({{url('assets/images/sliders/fur1.jpg')}});">
				
			</div><!-- /.item -->
		</div><!-- /.full-width-slider -->
	    
	    <div class="full-width-slider">
			<div class="item full-width-slider" style="background-image: url({{url('assets/images/sliders/01.jpg')}});">
				
			</div><!-- /.item -->
		</div><!-- /.full-width-slider -->

	</div><!-- /.owl-carousel -->
</div>
			
<!-- ========================================= SECTION – HERO : END ========================================= -->	
					
        </div><!-- /.homebanner-holder -->

</div><!-- /.row -->

<!-- ============================================== BRANDS CAROUSEL ============================================== -->
<div id="brands-carousel" class="logo-slider wow fadeInUp">

		<h3 class="section-title">SHOPS | VENDORS</h3>
		<div class="logo-slider-inner">	
			<div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
				
                            {% for keys, values in vendors %}
				<div class="item">
					<a href="{{url('stores/browse?task='~values['vendor_id']~'&goto=1&display='~values['display_name'])}}" class="image">
						<img data-echo="{{url('assets/images/vendor/'~values['vendor_logo'])}}" src="{{url('assets/images/blank.gif')}}" alt="">
					</a>	
				</div><!--/.item-->
                            {% endfor %}
				
		    </div><!-- /.owl-carousel #logo-slider -->
		</div><!-- /.logo-slider-inner -->
	
</div><!-- /.logo-slider -->
<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->

		<!-- ============================================== SCROLL TABS ============================================== -->
		<div id="product-tabs-slider" class="scroll-tabs inner-bottom-vs  wow fadeInUp">
			<div class="more-info-tab clearfix ">
			   <h3 class="new-product-title pull-left">Products</h3>
				<ul class="nav nav-tabs nav-tab-line pull-right" id="new-products-1">
					<li class="active"><a href="#all" data-toggle="tab">All</a></li>
					{% for keys, values in available %}
                                        <li><a href="#{{keysflow[keys]}}" data-toggle="tab">{{values['category_name']}}</a></li>
					{% endfor %}
                                        
				</ul><!-- /.nav-tabs -->
			</div>

			<div class="tab-content outer-top-xs">
				<div class="tab-pane in active" id="all">			
					<div class="product-slider">
						<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="5">
						    	
	{% for keys,values in products %}			
		<div class="item item-carousel">
			<div class="products">
	<div class="product" id="item{{keys+1}}">		
		<div class="product-image">
			<div class="image">
				<a href="{{url('store/details/'~values['product_id'])}}"><img  src="{{url('assets/uploads/'~values['front_image'])}}" data-echo="{{url('assets/uploads/'~values['front_image'])}}" alt=""></a>
			</div><!-- /.image -->			

			                        		   
		</div><!-- /.product-image -->
			
		
		<div class="product-info text-left">
			<h5 class="name" style="color:#333;"><a href="detail.html" style="color:#333;">{{values['title'] | capitalize}}</a></h5>
			
			<span class="info">{{helper.wordLimit(values['description'],35) | capitalize}}</span>

			<div class="product-price">
                        <span><small>By {{convert(values['added_by'],'display_name')}}</small></span><br/>
                        <span><strong>{{address(values['added_by'],'address1') | upper}}</strong></span><br/>
				<span class="price">₦{{values['sale_price']}}.</span>
                                <span class="price-before-discount">₦0</span>
                                <input type="hidden" id="item{{keys+1}}_name" value="{{values['title'] | capitalize}}">
                                <input type="hidden" id="item{{keys+1}}_price" value="{{values['sale_price']}}">
                                <input type="hidden" id="item{{keys+1}}_pro_id" value="{{values['product_id']}}">
			</div><!-- /.product-price -->
			
		</div><!-- /.product-info -->
					<div class="action"><a href="#" class="lnk btn btn-success addToCart" id="item{{keys+1}}">Add to Cart</a></div>
			</div><!-- /.product -->
      
			</div><!-- /.products -->
		</div><!-- /.item -->
	{% endfor %}
        
        <div class="item item-carousel">
		<div class="products">			
                    <div class="product">		
                        <div class="product-info text-left">
                            <h1 class="name"><a href="detail.html">VIEW ALL</a></h1>
                        </div><!-- /.product-info -->
                    </div><!-- /.product -->
                </div><!-- /.products -->
	</div><!-- /.item -->
	

								</div><!-- /.home-owl-carousel -->
					</div><!-- /.product-slider -->
				</div><!-- /.tab-pane -->

<!-- NEXT TAB STARTS -->
				<div class="tab-pane" id="electronics">
					<div class="product-slider">
						<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="5">
						    	
		{% for keys,values in electronics %}			
		<div class="item item-carousel">
			<div class="products">
	<div class="product">		
		<div class="product-image">
			<div class="image">
				<a href="detail.html"><img  src="{{url('assets/uploads/'~values['front_image'])}}" data-echo="{{url('assets/uploads/'~values['front_image'])}}" alt=""></a>
			</div><!-- /.image -->			

			                        		   
		</div><!-- /.product-image -->
			
		
		<div class="product-info text-left">
			<h6 class="name" style="color:#333;"><a href="detail.html" style="color:#333;">{{values['title'] | capitalize}}</a></h6>
			<span class="info">{{helper.wordLimit(values['description'],35) | capitalize}}</span>

			<div class="product-price">
                        <span>By {{convert(values['added_by'],'display_name')}}</span><br/>
                        <span><strong>{{address(values['added_by'],'address1') | upper}}</strong></span><br/>
				<span class="price">₦{{values['sale_price']}}.</span>
                                <span class="price-before-discount">₦0</span>
                                <input type="hidden" id="item{{keys+1}}_name" value="{{values['title'] | capitalize}}">
                                <input type="hidden" id="item{{keys+1}}_price" value="{{values['sale_price']}}">
                                <input type="hidden" id="item{{keys+1}}_pro_id" value="{{values['product_id']}}">
			</div><!-- /.product-price -->
			
		</div><!-- /.product-info -->
					<div class="action"><a href="#" class="lnk btn btn-success">Add to Cart</a></div>
			</div><!-- /.product -->
      
			</div><!-- /.products -->
		</div><!-- /.item -->
	{% endfor %}
        <div class="item item-carousel">
		<div class="products">			
                    <div class="product">		
                        <div class="product-info text-left">
                            <h1 class="name"><a href="detail.html">VIEW ALL</a></h1>
                        </div><!-- /.product-info -->
                    </div><!-- /.product -->
                </div><!-- /.products -->
	</div><!-- /.item -->
								</div><!-- /.home-owl-carousel -->
					</div><!-- /.product-slider -->
				</div><!-- /.tab-pane -->

				<div class="tab-pane" id="automobile">
					<div class="product-slider">
						<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="5">
						    	
		{% for keys,values in automobile %}			
		<div class="item item-carousel">
			<div class="products">
	<div class="product">		
		<div class="product-image">
			<div class="image">
				<a href="detail.html"><img  src="{{url('assets/uploads/'~values['front_image'])}}" data-echo="{{url('assets/uploads/'~values['front_image'])}}" alt=""></a>
			</div><!-- /.image -->			

			                        		   
		</div><!-- /.product-image -->
			
		
		<div class="product-info text-left">
			<h6 class="name" style="color:#333;"><a href="detail.html" style="color:#333;">{{values['title'] | capitalize}}</a></h6>
			
			<span class="info">{{helper.wordLimit(values['description'],35) | capitalize}}</span>

			<div class="product-price">	
                        <span>By {{convert(values['added_by'],'display_name')}}</span><br/>
				<span><strong>{{address(values['added_by'],'address1') | upper}}</strong></span><br/>
				<span class="price">₦{{values['sale_price']}}.</span>
                                <span class="price-before-discount">₦0</span>
                                <input type="hidden" id="item{{keys+1}}_name" value="{{values['title'] | capitalize}}">
                                <input type="hidden" id="item{{keys+1}}_price" value="{{values['sale_price']}}">
                                <input type="hidden" id="item{{keys+1}}_pro_id" value="{{values['product_id']}}">				
			</div><!-- /.product-price -->
			
		</div><!-- /.product-info -->
					<div class="action"><a href="#" class="lnk btn btn-success">Add to Cart</a></div>
			</div><!-- /.product -->
      
			</div><!-- /.products -->
		</div><!-- /.item -->
	{% endfor %}
        <div class="item item-carousel">
		<div class="products">			
                    <div class="product">		
                        <div class="product-info text-left">
                            <h1 class="name"><a href="detail.html">VIEW ALL</a></h1>
                        </div><!-- /.product-info -->
                    </div><!-- /.product -->
                </div><!-- /.products -->
	</div><!-- /.item -->
								</div><!-- /.home-owl-carousel -->
					</div><!-- /.product-slider -->
				</div><!-- /.tab-pane -->

				<div class="tab-pane" id="women">
					<div class="product-slider">
						<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="5">
						    	
		{% for keys,values in women %}			
		<div class="item item-carousel">
			<div class="products">
	<div class="product">		
		<div class="product-image">
			<div class="image">
				<a href="detail.html"><img  src="{{url('assets/uploads/'~values['front_image'])}}" data-echo="{{url('assets/uploads/'~values['front_image'])}}" alt=""></a>
			</div><!-- /.image -->			

			                        		   
		</div><!-- /.product-image -->
			
		
		<div class="product-info text-left">
			<h6 class="name" style="color:#333;"><a href="detail.html" style="color:#333;">{{values['title'] | capitalize}}</a></h6>
			
			<span class="info">{{helper.wordLimit(values['description'],35) | capitalize}}</span>

			<div class="product-price">	
                        <span>By {{convert(values['added_by'],'display_name')}}</span><br/>
				<span><strong>{{address(values['added_by'],'address1') | upper}}</strong></span><br/>
				<span class="price">₦{{values['sale_price']}}.</span>
                                <span class="price-before-discount">₦0</span>
                                <input type="hidden" id="item{{keys+1}}_name" value="{{values['title'] | capitalize}}">
                                <input type="hidden" id="item{{keys+1}}_price" value="{{values['sale_price']}}">
                                <input type="hidden" id="item{{keys+1}}_pro_id" value="{{values['product_id']}}">				
			</div><!-- /.product-price -->
			
		</div><!-- /.product-info -->
					<div class="action"><a href="#" class="lnk btn btn-success">Add to Cart</a></div>
			</div><!-- /.product -->
      
			</div><!-- /.products -->
		</div><!-- /.item -->
	{% endfor %}
        <div class="item item-carousel">
		<div class="products">			
                    <div class="product">		
                        <div class="product-info text-left">
                            <h1 class="name"><a href="detail.html">VIEW ALL</a></h1>
                        </div><!-- /.product-info -->
                    </div><!-- /.product -->
                </div><!-- /.products -->
	</div><!-- /.item -->
								</div><!-- /.home-owl-carousel -->
					</div><!-- /.product-slider -->
				</div><!-- /.tab-pane -->

				<div class="tab-pane" id="men">
					<div class="product-slider">
						<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="5">
						    	
		{% for keys,values in men %}			
		<div class="item item-carousel">
			<div class="products">
	<div class="product">		
		<div class="product-image">
			<div class="image">
				<a href="detail.html"><img  src="{{url('assets/uploads/'~values['front_image'])}}" data-echo="{{url('assets/uploads/'~values['front_image'])}}" alt=""></a>
			</div><!-- /.image -->			

			                        		   
		</div><!-- /.product-image -->
			
		
		<div class="product-info text-left">
			<h6 class="name" style="color:#333;"><a href="detail.html" style="color:#333;">{{values['title'] | capitalize}}</a></h6>
			
			<span class="info">{{helper.wordLimit(values['description'],35) | capitalize}}</span>

			<div class="product-price">
                        <span>By {{convert(values['added_by'],'display_name')}}</span><br/>
				<span><strong>{{address(values['added_by'],'address1') | upper}}</strong></span><br/>
				<span class="price">₦{{values['sale_price']}}.</span>
                                <span class="price-before-discount">₦0</span>
                                <input type="hidden" id="item{{keys+1}}_name" value="{{values['title'] | capitalize}}">
                                <input type="hidden" id="item{{keys+1}}_price" value="{{values['sale_price']}}">
                                <input type="hidden" id="item{{keys+1}}_pro_id" value="{{values['product_id']}}">				
			</div><!-- /.product-price -->
			
		</div><!-- /.product-info -->
					<div class="action"><a href="#" class="lnk btn btn-success">Add to Cart</a></div>
			</div><!-- /.product -->
      
			</div><!-- /.products -->
		</div><!-- /.item -->
	{% endfor %}
        <div class="item item-carousel">
		<div class="products">			
                    <div class="product">		
                        <div class="product-info text-left">
                            <h1 class="name"><a href="detail.html">VIEW ALL</a></h1>
                        </div><!-- /.product-info -->
                    </div><!-- /.product -->
                </div><!-- /.products -->
	</div><!-- /.item -->
								</div><!-- /.home-owl-carousel -->
					</div><!-- /.product-slider -->
				</div><!-- /.tab-pane -->

				<div class="tab-pane" id="men">
					<div class="product-slider">
						<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="5">
						    	
		{% for keys,values in men %}			
		<div class="item item-carousel">
			<div class="products">
	<div class="product">		
		<div class="product-image">
			<div class="image">
				<a href="detail.html"><img  src="{{url('assets/uploads/'~values['front_image'])}}" data-echo="{{url('assets/uploads/'~values['front_image'])}}" alt=""></a>
			</div><!-- /.image -->			

			                        		   
		</div><!-- /.product-image -->
			
		
		<div class="product-info text-left">
			<h6 class="name" style="color:#333;"><a href="detail.html" style="color:#333;">{{values['title'] | capitalize}}</a></h6>
			
			<span class="info">{{helper.wordLimit(values['description'],35) | capitalize}}</span>

			<div class="product-price">
                        <span>By {{convert(values['added_by'],'display_name')}}</span><br/>
				<span><strong>{{address(values['added_by'],'address1') | upper}}</strong></span><br/>
				<span class="price">₦{{values['sale_price']}}.</span>
                                <span class="price-before-discount">₦0</span>
                                <input type="hidden" id="item{{keys+1}}_name" value="{{values['title'] | capitalize}}">
                                <input type="hidden" id="item{{keys+1}}_price" value="{{values['sale_price']}}">
                                <input type="hidden" id="item{{keys+1}}_pro_id" value="{{values['product_id']}}">		
			</div><!-- /.product-price -->
			
		</div><!-- /.product-info -->
					<div class="action"><a href="#" class="lnk btn btn-success">Add to Cart</a></div>
			</div><!-- /.product -->
      
			</div><!-- /.products -->
		</div><!-- /.item -->
	{% endfor %}
        <div class="item item-carousel">
		<div class="products">			
                    <div class="product">		
                        <div class="product-info text-left">
                            <h1 class="name"><a href="detail.html">VIEW ALL</a></h1>
                        </div><!-- /.product-info -->
                    </div><!-- /.product -->
                </div><!-- /.products -->
	</div><!-- /.item -->
								</div><!-- /.home-owl-carousel -->
					</div><!-- /.product-slider -->
				</div><!-- /.tab-pane -->

				<div class="tab-pane" id="kids">
					<div class="product-slider">
						<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="5">
						    	
		{% for keys,values in kids %}			
		<div class="item item-carousel">
			<div class="products">
	<div class="product">		
		<div class="product-image">
			<div class="image">
				<a href="detail.html"><img  src="{{url('assets/uploads/'~values['front_image'])}}" data-echo="{{url('assets/uploads/'~values['front_image'])}}" alt=""></a>
			</div><!-- /.image -->			

			                        		   
		</div><!-- /.product-image -->
			
		
		<div class="product-info text-left">
			<h6 class="name" style="color:#333;"><a href="detail.html" style="color:#333;">{{values['title'] | capitalize}}</a></h6>
			
			<span class="info">{{helper.wordLimit(values['description'],35) | capitalize}}</span>

			<div class="product-price">	
                        <span>By {{convert(values['added_by'],'display_name')}}</span><br/>
				<span><strong>{{address(values['added_by'],'address1') | upper}}</strong></span><br/>
				<span class="price">₦{{values['sale_price']}}.</span>
                                <span class="price-before-discount">₦0</span>
                                <input type="hidden" id="item{{keys+1}}_name" value="{{values['title'] | capitalize}}">
                                <input type="hidden" id="item{{keys+1}}_price" value="{{values['sale_price']}}">
                                <input type="hidden" id="item{{keys+1}}_pro_id" value="{{values['product_id']}}">
			</div><!-- /.product-price -->
			
		</div><!-- /.product-info -->
					<div class="action"><a href="#" class="lnk btn btn-success">Add to Cart</a></div>
			</div><!-- /.product -->
      
			</div><!-- /.products -->
		</div><!-- /.item -->
	{% endfor %}
        <div class="item item-carousel">
		<div class="products">			
                    <div class="product">		
                        <div class="product-info text-left">
                            <h1 class="name"><a href="detail.html">VIEW ALL</a></h1>
                        </div><!-- /.product-info -->
                    </div><!-- /.product -->
                </div><!-- /.products -->
	</div><!-- /.item -->
								</div><!-- /.home-owl-carousel -->
					</div><!-- /.product-slider -->
				</div><!-- /.tab-pane -->

			</div><!-- /.tab-content -->
		</div><!-- /.scroll-tabs -->
	    <!-- ============================================== SCROLL TABS : END ============================================== -->

         <!-- ============================================== WIDE BANNERS ============================================== -->
		    <div class="wide-banners">
				<div class="row">

					<div class="col-md-5">
						<div class="wide-banner cnt-strip">
							<div class="image">
								<img alt="" src="{{url('assets/images/pickup.jpg')}}" height="146" width="470">
							</div>	
							
						</div><!-- /.wide-banner -->
					</div><!-- /.col -->

					<div class="col-md-7">
						<div class="wide-banner cnt-strip">
							<div class="image">
								<img alt="" src="{{url('assets/images/clearout.jpg')}}" height="146" width="670">
							</div>	
							
						</div><!-- /.wide-banner -->
					</div><!-- /.col -->

				</div><!-- /.row -->
			</div>
		 <!-- ============================================== WIDE BANNERS : END ============================================== -->
           
			<!-- ============================================== BRANDS CAROUSEL ============================================== -->
<div id="brands-carousel" class="logo-slider wow fadeInUp">

		<h3 class="section-title">SHOPS | VENDORS</h3>
		<div class="logo-slider-inner">	
			<div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
				
                            {% for keys, values in vendors %}
				<div class="item">
					<a href="{{url('stores/browse?task='~values['vendor_id']~'&goto=1&display='~values['display_name'])}}" class="image">
						<img data-echo="{{url('assets/images/vendor/'~values['vendor_logo'])}}" src="{{url('assets/images/blank.gif')}}" alt="">
					</a>	
				</div><!--/.item-->
                            {% endfor %}
				
		    </div><!-- /.owl-carousel #logo-slider -->
		</div><!-- /.logo-slider-inner -->
	
</div><!-- /.logo-slider -->
<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
		</div><!-- /.furniture-container -->
	</div><!-- /.container -->
</div><!-- /#top-banner-and-menu -->

<!-- MODAL -->
<div id="myModal" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <img src="{{url('assets/images/logo.png')}}" alt="">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><strong>&nbsp;</strong></h4>
      </div>
      <div class="modal-body">
        <p>
        <div class="dropdown">
            <button class="btn btn-default btn-primary btn-lg btn-block dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
              Search For Shops In Your Location
              <span class="caret"></span>
            </button>
            <ul class="dropdown-menu col-xs-12" aria-labelledby="dropdownMenu1" id="state-packages">
              <li class="dropdown-header">Dropdown header</li>
              <li role="separator" class="divider"></li>
              <li><a href="Abuja FCT">Abuja FCT</a></li>
              <li><a href="Abia">Abia</a></li>
              <li><a href="#">Adamawa</a></li>
              <li><a href="Adamawa">Adamawa</a></li>
              <li><a href="Akwa Ibom">Akwa Ibom</a></li>
              <li><a href="Anambra">Anambra</a></li>
              <li><a href="Bauchi">Bauchi</a></li>
              <li><a href="Bayelsa">Bayelsa</a></li>
              <li><a href="Benue">Benue</a></li>
              <li><a href="Borno">Borno</a></li>

              <li role="separator" class="divider"></li>
              <li class="dropdown-header">Dropdown header</li>
              <li role="separator" class="divider"></li>
              <li><a href="Cross River">Cross River</a></li>
              <li><a href="Delta">Delta</a></li>
              <li><a href="Ebonyi">Ebonyi</a></li>
              <li><a href="Edo">Edo</a></li>
              <li><a href="Ekiti">Ekiti</a></li>
              <li><a href="Enugu">Enugu</a></li>
              <li><a href="Gombe">Gombe</a></li>
              <li><a href="Imo">Imo</a></li>

              <li role="separator" class="divider"></li>
              <li class="dropdown-header">Dropdown header</li>
              <li role="separator" class="divider"></li>
              <li><a href="Jigawa">Jigawa</a></li>
              <li><a href="Kaduna">Kaduna</a></li>
              <li><a href="Kano">Kano</a></li>
              <li><a href="Katsina">Katsina</a></li>
              <li><a href="Kebbi">Kebbi</a></li>
              <li><a href="Kogi">Kogi</a></li>
              <li><a href="Kwara">Kwara</a></li>
              <li><a href="Lagos">Lagos</a></li>

              <li role="separator" class="divider"></li>
              <li class="dropdown-header">Dropdown header</li>
              <li role="separator" class="divider"></li>
              <li><a href="Nassarawa">Nassarawa</a></li>
              <li><a href="Niger">Niger</a></li>
              <li><a href="Ogun">Ogun</a></li>
              <li><a href="Ondo">Ondo</a></li>
              <li><a href="Osun">Osun</a></li>
              <li><a href="Oyo">Oyo</a></li>

              <li role="separator" class="divider"></li>
              <li class="dropdown-header">Dropdown header</li>
              <li role="separator" class="divider"></li>
              <li><a href="Plateau">Plateau</a></li>
              <li><a href="Rivers">Rivers</a></li>
              <li><a href="Sokoto">Sokoto</a></li>
              <li><a href="Taraba">Taraba</a></li>
              <li><a href="Yobe">Yobe</a></li>
              <li><a href="Zamfara">Zamfara</a></li>
            </ul>
        </div>
        </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="lnk btn" data-dismiss="modal" style="background:none;">Close Window</button>
        <!--<button type="button" class="lnk btn btn-lg" style="background:white; border:1px solid #444; color:#444;"><strong>Display Shops</strong></button>-->
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

{% endblock %}