{% extends "templates/base.volt" %}

{% block head %}
{% endblock %}
{% block content %}
<style>
table {
    font-family: 'Opensans' !important;
}
</style>
<div class="body-content outer-top-xs">
	<div class="container">
		<div class="row inner-bottom-sm">
			<div class="shopping-cart">
                        
				<div class="col-md-12 col-sm-12 shopping-cart-table">
                                {% if session.has('cart_item') %}
                                
                                <div class="alert alert-success hide" id="show-updated">CART UPDATED</div>
	<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
				<tr>
					<td class="cart-romove item"></td>
					<td class="cart-description item"></td>
					<td class="cart-product-name item">PRODUCT NAME</td>
					
					<td class="cart-qty item">QUANTITY</td>
					<td class="cart-qty item">PRICE (₦)</td>
					<th class="cart-total last-item">Total (₦)</th>
				</tr>
			</thead><!-- /thead -->
			<tfoot>
				<tr>
					<td colspan="7">
						<div class="shopping-cart-btn">
							<span class="">
								<a href="{{url('stores/?strLocation='~strLocation)}}" class="btn btn-upper btn-primary outer-left-xs">Continue Shopping</a>
								<a href="#" class="btn btn-upper btn-primary pull-right outer-right-xs" id="updateShoppingCart">Update shopping cart</a>
							</span>
						</div><!-- /.shopping-cart-btn -->
					</td>
				</tr>
			</tfoot>
			<tbody>
                            {% for keys, values in cart_item %}
				<tr>
					<td class="romove-item"><a href="#" title="cancel" class="icon cancel" id="{{values['id']}}"><i class="fa fa-times"></i></a></td>
					<td class="cart-image">
						<a class="entry-thumbnail" href="javascript:void()">
						    <img src="{{values['image']}}" class="img-responsive" style="width:40%" alt="">
						</a>
					</td>
					<td class="cart-product-name-info">
						<h4 class="cart-product-description">{{values['name']}} ({{values['price']}})</h4>
						<!--<div class="cart-product-info">-->
							<span class="product-imel">Sold By - {{values['addedby']}}</span>
							<h5>{{values['location'] | upper}}</h5>
						<!--</div>-->
					</td>
					
					<td class="cart-product-quantity">
						<div class="quant-input">
				                <div class="arrows">
				                  <div class="arrow plus gradient"><span class="ir"><i class="icon fa fa-sort-asc"></i></span></div>
				                  <div class="arrow minus gradient"><span class="ir"><i class="icon fa fa-sort-desc"></i></span></div>
				                </div>
				                <input value="{{values['qty']}}" class="qty_pack" type="text">
			              </div>
		            </td>
					<td class="cart-product-sub-total"><span class="cart-sub-total-price">{{values['price']}}</span></td>
					<td class="cart-product-grand-total"><span class="cart-grand-total-price">{{values['price']*values['qty']}}</span></td>
				</tr>
				{% endfor %}
			</tbody><!-- /tbody -->
		</table><!-- /table -->
	</div>
</div><!-- /.shopping-cart-table -->				<div class="col-md-4 col-sm-12 estimate-ship-tax">
	
</div><!-- /.estimate-ship-tax -->

<div class="col-md-4 col-sm-12 estimate-ship-tax">

</div><!-- /.estimate-ship-tax -->

<div class="col-md-4 col-sm-12 cart-shopping-total">
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>
					<div class="cart-sub-total">
						Total<span class="inner-left-md">₦<span="total_grande">{{grandTotal}}</span>.00</span>
					</div>
				</th>
			</tr>
		</thead><!-- /thead -->
		<tbody>
				<tr>
					<td>
						<div class="cart-checkout-btn pull-right">
							<a href="{{url('order/?token=')}}<?php echo uniqid(); ?>" class="btn btn-danger">PROCEED TO CHEKOUT</a>
						</div>
					</td>
				</tr>
		</tbody><!-- /tbody -->
	</table><!-- /table -->
{% else %}
<div class="alert alert-warning"><strong>Cart is empty(0). Go Shopping Now.</strong></div>
{% endif %}

</div><!-- /.cart-shopping-total -->			

</div><!-- /.shopping-cart -->
		</div> <!-- /.row -->
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
<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->	</div><!-- /.container -->
</div>
{% endblock %}


