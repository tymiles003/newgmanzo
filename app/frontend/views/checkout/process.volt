{% extends "templates/base.volt" %}

{% block head %}
{% endblock %}
{% block content %}
<div class="body-content outer-top-xs">
	<div class="container">
		
        <div class="sign-in-page inner-bottom-sm">
			<div class="row">
				<!-- Sign-in -->			
<div class="col-md-6 col-sm-6 sign-in">
	<h4 class="">sign in</h4>
	<p class="">Hello, Welcome!.</p>
	<div class="social-sign-in outer-top-xs">
		<a href="#" class="facebook-sign-in"><i class="fa fa-facebook"></i> Sign In with Facebook</a>
	</div>
	<form class="register-form outer-top-xs" role="form" method="post" action="{{url('login/')}}">
		<div class="form-group">
		    <label class="info-title" for="exampleInputEmail1">Email Address <span>*</span></label>
		    <input type="email" name="email" class="form-control unicase-form-control text-input" id="exampleInputEmail1" >
		</div>
	  	<div class="form-group">
		    <label class="info-title" for="exampleInputPassword1">Password <span>*</span></label>
		    <input type="password" name="password" class="form-control unicase-form-control text-input" id="exampleInputPassword1" >
		</div>
		<div class="radio outer-xs">
		  	<button type="submit" class="btn-upper btn-lg btn btn-primary checkout-page-button">Login To Place Order(s)</button>
		  	<a href="#" class="forgot-password pull-right">Forgot your Password?</a>
		</div>
	  	
	</form>					
</div>
<!-- Sign-in -->

<!-- create a new account -->
<div class="col-md-6 col-sm-6 create-new-account">
	<h4 class="checkout-subtitle">or create an account</h4>
	<p class="text title-tag-line">Create your own GMANZO account.</p>
        {{flash.output()}}
	<form class="register-form outer-top-xs" role="form" action="{{url('registration/')}}" method="post">
		<div class="form-group">
	    	<label class="info-title" for="exampleInputEmail2">First Name <span>*</span></label>
	    	<input type="text" name="firstname" class="form-control unicase-form-control text-input" id="exampleInputEmail2" >
	  	</div>
		<div class="form-group">
	    	<label class="info-title" for="exampleInputEmail2">Last Name <span>*</span></label>
	    	<input type="text" name="lastname" class="form-control unicase-form-control text-input" id="exampleInputEmail2" >
	  	</div>
		<div class="form-group">
	    	<label class="info-title" for="exampleInputEmail2">Email Address <span>*</span></label>
	    	<input type="email" name="email" class="form-control unicase-form-control text-input" id="exampleInputEmail2" >
	  	</div>
		<div class="form-group">
                
                        <label class="info-title" for="exampleInputEmail2">Show Password &nbsp; &nbsp;<span><input type="checkbox" id="speed" value="option1"> *</span></label>
                        <input type="password" name="password" placeholder="Type your password" class="form-control unicase-form-control text-input input-lg" id="exampleInputEmail2" >
	  	</div>
		<div class="form-group">
	    	<label class="info-title" for="exampleInputEmail2">Phone Number <span>*</span></label>
	    	<input type="number" name="phonenumber" class="form-control unicase-form-control text-input" id="exampleInputEmail2" >
	  	</div>
		<div class="form-group">
	    	<label class="info-title" for="exampleInputEmail2">Home Address <span>*</span></label>
	    	<textarea name="address" class="form-control unicase-form-control text-input" id="exampleInputEmail2"></textarea>
	  	</div>
	  	<button type="submit" class="btn-upper btn btn-primary checkout-page-button">Sign Up</button>
	</form>
	
</div>	
<!-- create a new account -->			</div><!-- /.row -->
		</div><!-- /.sigin-in-->

    </div><!-- /.container -->
</div>
{% endblock %}


