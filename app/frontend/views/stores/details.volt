{% extends "templates/base.volt" %}

{% block head %}
{% endblock %}
{% block content %}
    <div class="body-content outer-top-xs">
	<div class="container">
		<div class="row single-product outer-bottom-sm ">
			<div class="col-md-3 sidebar">
				<div class="sidebar-module-container">
					<!-- ==============================================CATEGORY============================================== -->
<div class="sidebar-widget hot-deals outer-bottom-xs wow fadeInUp animated" style="visibility: visible; animation-name: fadeInUp;">
	<h3>&nbsp;</h3>
	<div class="owl-carousel sidebar-carousel custom-carousel owl-theme outer-top-xs">
		
														<div class="item">
					<div class="products">
						<div class="hot-deal-wrapper">
							<div class="image">
								<img src="{{url('assets/images/hot-deals/1.jpg')}}" alt="">
							</div>
							<div class="sale-offer-tag"><span>35%<br>off</span></div>
							<div class="timing-wrapper">
								<div class="box-wrapper">
									<div class="date box">
										<span class="key">120</span>
										<span class="value">Days</span>
									</div>
								</div>
				                
				                <div class="box-wrapper">
									<div class="hour box">
										<span class="key">20</span>
										<span class="value">HRS</span>
									</div>
								</div>

				                <div class="box-wrapper">
									<div class="minutes box">
										<span class="key">36</span>
										<span class="value">MINS</span>
									</div>
								</div>

				                <div class="box-wrapper hidden-md">
									<div class="seconds box">
										<span class="key">60</span>
										<span class="value">SEC</span>
									</div>
								</div>
							</div>
						</div><!-- /.hot-deal-wrapper -->

						<div class="product-info text-left m-t-20">
							<h3 class="name"><a href="detail.html">Address / Location</a></h3>
							
						</div><!-- /.product-info -->

					</div>	
							        
													
					</div>		 </div>
</div><!-- /.sidebar-widget -->
	<!-- ============================================== CATEGORY : END ============================================== -->

				</div>
			</div><!-- /.sidebar -->
			<div class="col-md-9">
                            <div class="row  wow fadeInUp">
                            <div class="col-xs-12">
                            {% include "partials/categoryslide.volt" %}
                            <a href="{{url('stores/browse/?task='~request.getQuery('task')~'&goto=1&display='~request.getQuery('display'))}}"><h1><strong>{{request.getQuery('display') | upper}}</strong></h1></a>
                            </div>
					     <div class="col-xs-12 col-sm-6 col-md-5 gallery-holder">
    <div class="product-item-holder size-big single-product-gallery small-gallery">

        <div id="owl-single-product">
            <div class="single-product-gallery-item" id="slide1">
                <a data-lightbox="image-1" data-title="Gallery" href="{{url('assets/images/single-product/')}}{{details.main_image}}">
                    <img class="img-responsive" id="item0_img" src="assets/images/blank.gif" data-echo="{{url('assets/images/single-product/')}}{{details.main_image}}" />
                </a>
            </div><!-- /.single-product-gallery-item -->

        </div><!-- /.single-product-slider -->


       
    </div><!-- /.single-product-gallery -->
</div><!-- /.gallery-holder -->        		

                            <div class='col-sm-6 col-md-7 product-info-block'>
						<div class="product-info">
							<h1 class="name">{{details.title | capitalize}}</h1>
							
							
									<hr/>
								

							<div class="stock-container info-container m-t-10">
								<div class="row">
									<div class="col-sm-3">
										<div class="stock-box">
											<span class="label">Availability :</span>
										</div>	
									</div>
									<div class="col-sm-9">
										<div class="stock-box">
											<span class="value">In Stock</span>
										</div>		
									</div>
								</div><!-- /.row -->	
							</div><!-- /.stock-container -->

							<div class="description-container m-t-20">
								Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Susp endisse posuere arcu diam, id accumsan eros pharetra ac. 
							</div><!-- /.description-container -->

							<div class="price-container info-container m-t-20">
								<div class="row">
									

									<div class="col-sm-6">
										<div class="price-box">
											<span class="price">₦<span id="price-detail">{{details.sale_price}}</span></span>
											<span class="price-strike">₦0.00</span>
										</div>
									</div>

									<div class="col-sm-6">
										<div class="favorite-button m-t-10">
											<a class="btn btn-primary" data-toggle="tooltip" data-placement="right" href="#">
											    <i class="fa fa-facebook"></i>
											</a>
											<a class="btn btn-primary" data-toggle="tooltip" data-placement="right" href="#">
											   <i class="fa fa-twitter"></i>
											</a>
											<a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="E-mail" href="#">
											    <i class="fa fa-envelope"></i>
											</a>
										</div>
									</div>

								</div><!-- /.row -->
							</div><!-- /.price-container -->

							<div class="quantity-container info-container">
								<div class="row">
                                                                    <input type="hidden" id="item0_name" value="{{details.title | capitalize}}">
                                                                    <input type="hidden" id="item0_price" value="{{details.sale_price}}">
                                                                    <input type="hidden" id="item0_pro_id" value="{{details.product_id}}">
									
									<div class="col-sm-2">
										<span class="label">Qty :</span>
									</div>
									
									<div class="col-sm-2">
										<div class="cart-quantity">
											<div class="quant-input">
								                <div class="arrows singleToCart">
								                  <div class="arrow plus gradient"><span class="ir"><i class="icon fa fa-sort-asc"></i></span></div>
								                  <div class="arrow minus gradient"><span class="ir"><i class="icon fa fa-sort-desc"></i></span></div>
								                </div>
								                <input type="text" value="1" class="qty-num">
							              </div>
							            </div>
									</div>

									<div class="col-sm-7">
										<a href="#" class="btn btn-primary" id="singleAddToCart"><i class="fa fa-shopping-cart inner-right-vs"></i> ADD TO CART</a>
									</div>

									
								</div><!-- /.row -->
							</div><!-- /.quantity-container -->

							<div class="product-social-link m-t-20 text-right">
								
							</div>

							

							
						</div><!-- /.product-info -->
					</div><!-- /.col-sm-7 -->
			</div><!-- /.col -->
			<div class="clearfix"></div>
		</div><!-- /.row -->
		</div><!-- /.container -->
</div>
{% endblock %}