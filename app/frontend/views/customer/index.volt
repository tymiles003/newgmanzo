{% extends "templates/base.volt" %}

{% block head %}
<style type="text/css">
/**
 * Extra large button extensions. Extends `.btn`.
 */

.bootbox {
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

</style>
{% endblock %}

{% block content %}
<style>
#billing-form input[type=text], input[type=email], input[type=number]{
    font-size:13px;
}
</style>
<div class="body-content outer-top-xs" id="top-banner-and-menu">
	<div class="container">
            {% include "partials/breadcrumbs.volt" %}
            <div id="grid-container">
								<div class="contact-page">
									<div class="row">
                            
                            <div class="col-md-8 col-sm-8 create-new-account">
                            <p>&nbsp;</p>
	<h4 class="checkout-subtitle"><strong>ACCOUNT DETAILS</strong></h4>
	<p class="text title-tag-line">All fields with <strong>*</strong> are required.</p>
        {{flash.output()}}
	<form class="register-form outer-top-xs" id="billing-form" role="form" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                        <label class="info-title" for="exampleInputEmail2">First Name <span>*</span></label>
                        <input type="text" name="firstname" value="<?php echo $_SESSION['auth']['firstname']; ?>" required class="form-control unicase-form-control text-input" id="exampleInputEmail2" >
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                        <label class="info-title" for="exampleInputEmail2">Last Name <span>*</span></label>
                        <input type="text" name="lastname" value="<?php echo $_SESSION['auth']['lastname']; ?>" required class="form-control unicase-form-control text-input" id="exampleInputEmail2" >
                        </div>
                    </div>
                </div>
		
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                        <label class="info-title" for="exampleInputEmail2">Email Address <span>*</span></label>
                        <input type="email" name="email" value="<?php echo $_SESSION['auth']['email']; ?>" required class="form-control unicase-form-control text-input" id="exampleInputEmail2" >
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                        <label class="info-title" for="exampleInputEmail2">Phone Number <span>*</span></label>
                        <input type="text" name="phonenumber" value="<?php echo $_SESSION['auth']['phonenumber']; ?>" required class="form-control unicase-form-control text-input" id="exampleInputEmail2" >
                        </div>
                    </div>
                </div>
		<div class="form-group">
	    	<label class="info-title" for="exampleInputEmail2">Password <span>*</span></label>
	    	<input type="text" name="address" required class="form-control unicase-form-control text-input" id="exampleInputEmail2" placeholder="Street Address" >
	  	</div>
		
	  	<button type="submit" class="btn-upper btn btn-primary checkout-page-button btn-lg">UPDATE NOW</button>
	</form>
	
	<div class="checkbox">
	  	
	</div>
        
</div>	
<!-- create a new account -->	
<style>
.table tr td{
    padding-bottom:8px !important;
    padding-top:8px !important;
}
</style>                            
<div class="col-md-4 col-sm-4">
        <p>&nbsp;</p>
	<h4 class="text-center">YOUR ORDER</h4>
	<p class="text-center"><strong>{{session.get('auth')['fullname'] | capitalize}}!</strong> Shopping Basket</p>
        {% if session.has('cart_item') %}
	<table class="table table-bordered">
        <tr>
            <td><strong>PRODUCT</strong></td>
            <td><strong>TOTAL</strong></td>
        </tr>
        {% for keys,values in session.get('cart_item') %}
        <tr>
            <td><strong>{{values['name'] | capitalize}}</strong> (Sold By {{values['addedby']}}) <strong>x {{values['qty']}}</strong></td>
            <td>₦{{values['qty'] * values['price']}}</td>
        </tr>
        {% endfor %}
        <tr style="border-top:1px solid #bbb;">
            <td><strong>CART TOTAL</strong></td>
            <td><strong>₦{{totalPrice}}</strong></td>
        </tr>
        </table>
        
        {% else %}<hr/>
        <strong>EMPTY CART(0)</strong>
        {% endif %}
        
        <p>&nbsp;</p>
</div>
<div class="col-md-4 contact-info contact-form">
	<div class="contact-title">
		<!--<h4>AGENTS AVAILABLE</h4>-->
	</div>
        <div id="list_agents"></div>
	
</div>	
                        <p>&nbsp;</p>
                        </div>
                    </div>
                </div>
        </div>
</div>
{% endblock %}


