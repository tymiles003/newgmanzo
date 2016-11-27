<!DOCTYPE html>
<html lang="en">

<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="GMANZO, Template, eCommerce">
	    <meta name="robots" content="all">

	    <title>GMANZO</title>
            {{ this.assets.outputCss('headers') }}
            <link href="https://fonts.googleapis.com/css?family=Droid+Sans|Open+Sans" rel="stylesheet" /> 
            {% block head %} {% endblock %}
	    
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="assets/images/favicon.ico">

		<!-- HTML5 elements and media queries Support for IE8 : HTML5 shim and Respond.js -->
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->

    <style type="text/css">
/**
 * Extra large button extensions. Extends `.btn`.
 */
.btn-block {
    padding: 18px 28px;
    /*font-size: 22px;*/
    line-height: normal;
    
    margin-top:10px !important;
}

#myModalState, #pickUpModal {
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
	</head>

<body class="cnt-home">
<body>
<div class="wrapper-wide">
  <div id="header">
    <!-- Top Bar Start-->
    <nav id="top" class="htop">
      <div class="container">
        <div class="row"> <span class="drop-icon visible-sm visible-xs"><i class="fa fa-align-justify"></i></span>
          <div class="pull-left flip left-top">
            <div class="links">
              <ul>
                <li class="mobile"><i class="fa fa-phone"></i>+91 9898777656</li>
                <li class="email"><a href="mailto:sales@gmanzo.com"><i class="fa fa-envelope"></i>sales@gmanzo.com</a></li>
                <li><a href="#">Wish List (0)</a></li>
                <li><a href="{{url('checkout/')}}">Checkout</a></li>
              </ul>
            </div>
            
          <div id="top-links" class="nav pull-right flip">
            <ul>
              <li>
                <?php if($this->session->has('auth')){ ?>
                <a href="{{url('login/logout')}}">Sign Out</a></li>
                <?php }else{ ?>
                <a href="{{url('checkout/process')}}">Sign In</a></li>
                <?php } ?>
              <li><a href="{{url('checkout/process')}}">Register</a></li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
    <!-- Top Bar End-->
<!-- Header Start-->
    <header class="header-row">
      <div class="container">
        <div class="table-container">
          <!-- Logo Start -->
          <div class="col-table-cell col-lg-4 col-md-4 col-sm-12 col-xs-12 inner">
            <div id="logo"><a href="{{url('index?task=home')}}"><img class="img-responsive" src="{{url('assets/image/logo.png')}}" title="GMANZO" alt="GMANZO" /></a></div>
          </div>
          <!-- Logo End -->
          <!-- Search Start-->
          <div class="col-table-cell col-lg-5 col-md-5 col-md-push-0 col-sm-6 col-sm-push-6 col-xs-12">
            <div id="search" class="input-group">
              <input id="filter_name" type="text" name="search" value="" placeholder="Search" class="form-control input-lg" />
              <button type="button" class="button-search"><i class="fa fa-search"></i></button>
            </div>
          </div>
          <!-- Search End-->
          <!-- Mini Cart Start-->
          <div class="col-table-cell col-lg-3 col-md-3 col-md-pull-0 col-sm-6 col-sm-pull-6 col-xs-12 inner">
            <div id="cart">
              <button type="button" id="basketMouth" data-toggle="dropdown" data-loading-text="Loading..." class="heading dropdown-toggle"> <span class="cart-icon pull-left flip"></span> <span id="cart-total"><span id="total_items">0</span> item(s) - $<span class="value">0.00</span></span></button>
              <ul class="dropdown-menu">
                <li id="mycart">
                  
                </li>
              </ul>
            </div>
          </div>
          <!-- Mini Cart End-->
        </div>
      </div>
    </header>
    <!-- Header End-->
    <!-- Main Menu Start-->
    <nav id="menu" class="navbar">
      <div class="container">
        <div class="navbar-header"> <span class="visible-xs visible-sm"> Menu <b></b></span></div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav">
            <li><a class="home_link" title="Home" href="{{url('index?task=home')}}"><span>Home</span></a></li>
            <li class="dropdown"><a>Shop by Categories</a>
              <div class="dropdown-menu">
                <ul>
                {% for keys,values in category %}
                  <li> <a href="{{url('category/?cat='~values['category_id'])}}">{{values['category_name'] | capitalize}}</a></li>
                {% endfor %}
                  
                </ul>
              </div>
            </li>
            <li class="menu_brands dropdown"><a href="{{url('stores')}}">Shops &amp; Stores</a>
            </li>
            <li class="custom-link"><a href="{{url('checkout')}}">Cart</a></li>
            
            <li>
                <?php if($this->session->has('auth')){ ?>
                <a href="{{url('login/logout')}}">Sign Out</a>
                <?php }else{ ?>
                <a href="{{url('checkout/process')}}">Sign In</a>
                <?php } ?>
              </li>
            <li class="custom-link-right"><a href="#" id="pickUps"><strong>Pick Ups &amp; Delivery</strong></a></li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Main Menu End-->
  </div>
<div id="container">
    <div class="container">
      <div class="row">
<!-- ============================================== BODY CONTENT STARTS ============================================== -->

{% block content %}{% endblock %}

        </div>
    </div>
  </div>
<!-- ============================================== BODY CONTENT ENDS ============================================== -->


<!-- ============================================================= FOOTER ============================================================= -->
<!--Footer Start-->
  <footer id="footer">
    <div class="fpart-first">
      <div class="container">
        <div class="row">
          <div class="contact col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <h5>Contact Details</h5>
            <ul>
              <li class="address"><i class="fa fa-map-marker"></i>Central Square, 22 Hoi Wing Road, New Delhi, India</li>
              <li class="mobile"><i class="fa fa-phone"></i>+91 9898777656</li>
              <li class="email"><i class="fa fa-envelope"></i>Send email via our <a href="mailto:sales@gmanzo.com">Contact Us</a>
            </ul>
          </div>
          <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
            <h5>Information</h5>
            <ul>
              <li><a href="{{url('aboutus/deliveryInfo')}}">Delivery Information</a></li>
              <li><a href="{{url('aboutus/privacyPolicy')}}">Privacy Policy</a></li>
              <li><a href="{{url('aboutus/termsCon')}}">Terms &amp; Conditions</a></li>
            </ul>
          </div>
          <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
            <h5>Customer Service</h5>
            <ul>
              <li><a href="">Dispatchers</a></li>
              <li><a href="#">Shopping Cart</a></li>
              <li><a href="#">Sign In</a></li>
            </ul>
          </div>
          <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
            <h5>Extras</h5>
            <ul>
              <li><a href="#">Shops | Stores</a></li>
              <li><a href="#">About Us</a></li>
              <li><a href="#">Contact</a></li>
              
            </ul>
          </div>
          <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
            <h5>My Account</h5>
            <ul>
              <li><a href="#">My Account</a></li>
              <li><a href="#">Order History</a></li>
              <li><a href="#">Wish List</a></li>
              
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="fpart-second">
      <div class="container">
        <div id="powered" class="clearfix">
          <div class="powered_text pull-left flip">
            <p>Gmanzo Ecommerce © 2016 | Powered By <a href="#" target="_blank">CreativeMeshKernel</a></p>
          </div>
          <div class="social pull-right flip"> <a href="#" target="_blank"> <img data-toggle="tooltip" src="{{url('assets/image/socialicons/facebook.png')}}" alt="Facebook" title="Facebook"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="{{url('assets/image/socialicons/twitter.png')}}" alt="Twitter" title="Twitter"> </a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="{{url('assets/image/socialicons/google_plus.png')}}" alt="Google+" title="Google+"> </a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="{{url('assets/image/socialicons/pinterest.png')}}" alt="Pinterest" title="Pinterest"> </a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="{{url('assets/image/socialicons/rss.png')}}" alt="RSS" title="RSS"> </a> </div>
        </div>
        <div class="bottom-row">
          <div class="custom-text text-center"> <img alt="" src="{{url('assets/image/logo-small.png')}}">
            <p>GMANZO! Making your favorites accessible and available in time.</p>
          </div>
          <div class="payments_types"> <a href="#" target="_blank"> <img data-toggle="tooltip" src="{{url('assets/image/payment/payment_paypal.png')}}" alt="paypal" title="PayPal"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="{{url('assets/image/payment/payment_american.png')}}" alt="american-express" title="American Express"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="{{url('assets/image/payment/payment_2checkout.png')}}" alt="2checkout" title="2checkout"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="{{url('assets/image/payment/payment_maestro.png')}}" alt="maestro" title="Maestro"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="{{url('assets/image/payment/payment_discover.png')}}" alt="discover" title="Discover"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="{{url('assets/image/payment/payment_mastercard.png')}}" alt="mastercard" title="MasterCard"></a> </div>
        </div>
      </div>
    </div>
    <div id="back-top"><a data-toggle="tooltip" title="Back to Top" href="javascript:void(0)" class="backtotop"><i class="fa fa-chevron-up"></i></a></div>
  </footer>
  <!--Footer End-->
  
<!-- ============================================================= FOOTER : END============================================================= -->


<!-- MODAL -->
<div id="pickUpModal" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <img src="{{url('assets/image/logo.png')}}" alt="">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><strong>&nbsp;</strong></h4>
      </div>
      <div class="modal-body" style="background:none !important;">
        <p>
        {% if session.has('auth') %}
        <h4>Pick Up &amp; Delivery Task</h4>
        <form class="register-form outer-top-xs" id="pickUpDeliver" role="form" action="{{url('task/')}}" method="post">
		<div class="form-group">
                    <label class="info-title" for="pickup_fullname">Pick Up Customer's Full Name <span>*</span></label>
                    <input type="text" name="pickup_fullname" placeholder="Pick Up Customer's Full Name" class="form-control unicase-form-control text-input" id="pickup_fullname" >
	  	</div>
		<div class="form-group">
                    <label class="info-title" for="pickup_phone">Pick Up Customer's Phone Number <span>*</span></label>
                    <input type="number" name="pickup_phone" placeholder="Pick Up Customer's Phone Number" class="form-control unicase-form-control text-input" id="pickup_phone" >
	  	</div>
		<div class="form-group">
                    <label class="info-title" for="pickup_address">Pick Up Address <span>*</span></label>
                    <input type="text" name="pickup_address" placeholder="Pick Up Address or Location" class="form-control unicase-form-control text-input" id="pickup_address" >
	  	</div>
		<div class="form-group">
                    <label class="info-title" for="state">State of Task <span>*</span></label>
                    <input type="text" name="state" placeholder="Type the state for the task" class="form-control unicase-form-control text-input" id="state" >
	  	</div>
		<div class="form-group">
                    <label class="info-title" for="pickup_description">Pick Up Job Description <span>*</span></label>
                    <textarea name="pickup_description" placeholder="Type the Job Description for the Pick Up Task" class="form-control unicase-form-control text-input" id="pickup_description"></textarea>
	  	</div>
                <h4>Delivery Task</h4>
                <div class="form-group">
	    	<label class="info-title" for="exampleInputEmail2">Delivery Customer Full Name <span>*</span></label>
	    	<input type="text" name="delivery_fullname" placeholder="Delivery Customer Full Name" class="form-control unicase-form-control text-input" id="exampleInputEmail2" >
	  	</div>
		<div class="form-group">
	    	<label class="info-title" for="exampleInputEmail2">Delivery Customer's Phone Number <span>*</span></label>
	    	<input type="number" name="delivery_phone" placeholder="Delivery Customer's Phone Number" class="form-control unicase-form-control text-input" id="exampleInputEmail2" >
	  	</div>
		<div class="form-group">
	    	<label class="info-title" for="exampleInputEmail2">Delivery Address <span>*</span></label>
	    	<input type="text" name="delivery_address" placeholder="Delivery Address" class="form-control unicase-form-control text-input" id="exampleInputEmail2" >
	  	</div>
		<div class="form-group">
	    	<label class="info-title" for="exampleInputEmail2">Delivery Message <span>*</span></label>
	    	<textarea name="delivery_message" placeholder="Delivery Message" class="form-control unicase-form-control text-input" id="exampleInputEmail2"></textarea>
	  	</div>
	  	<button type="button" class="btn-upper btn btn-primary checkout-page-button" id="createTask">Create Task</button>
	</form>
        {% else %}
        <form class="register-form outer-top-xs" id="picklogin" role="form" method="post">
		<div class="form-group">
		    <label class="info-title" for="email">Email Address <span>*</span></label>
		    <input type="email" placeholder="Enter your email address" name="email" class="form-control unicase-form-control text-input" id="email" >
		</div>
	  	<div class="form-group">
		    <label class="info-title" for="password">Password <span>*</span></label>
		    <input type="password" placeholder="Enter your email address" name="password" class="form-control unicase-form-control text-input" id="password" >
		</div>
		<div class="radio outer-xs">
		  	<button type="button" id="loginToProceed" class="btn-upper btn-lg btn btn-primary checkout-page-button">Login to Proceed</button>
		  	<a href="#" class="forgot-password pull-right">Forgot your Password?</a>
		</div>
	  	
            </form>
        {% endif %}
        </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="lnk btn" data-dismiss="modal" style="background:none;">Close Window</button>
        <!--<button type="button" class="lnk btn btn-lg" style="background:white; border:1px solid #444; color:#444;"><strong>Display Shops</strong></button>-->
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


{{ this.assets.outputJs('footers') }}
<script type="text/javascript">
    $(window).load(function(){
        var stringPath  = window.location.pathname;
        var splitString = stringPath.split('/');
        if(splitString[2] !== 'stores'){
            $('#myModalState').modal('show');
            $('.dropdown-toggle').dropdown();
            $('#myModalState').on('shown.bs.modal', function () {
                $('#input-location').focus();
                $('#input-location').autocomplete({
                    source: [function(q, add){
                        $.getJSON('http://localhost/newgmanzo/index/getStringStates?s='+encodeURIComponent(q),function(data){
                            add(data);
                        });
                    }
                ]}).on('selected.xdsoft', function(e, datum){
                    var selectedState   = datum.split(' ');
                    $.post('http://localhost/newgmanzo/setlocal',{state:selectedState[0]}, function(data){
                        var stringJSON  = $.parseJSON(JSON.stringify(data));
                        if(stringJSON.status == 'OK'){
                            window.location.href = 'http://localhost/newgmanzo/stores/?state='+selectedState[0];
                        }
                    })
                });
            })
        }
    });

    $(document).ready(function(){
        $('button#location').click(function(){
            $('#myModalState').modal('show');
            $('.dropdown-toggle').dropdown();
            $('#myModalState').on('shown.bs.modal', function () {
                $('#input-location').focus();
                $('#input-location').autocomplete({
                    source: [function(q, add){
                        $.getJSON('http://localhost/newgmanzo/index/getStringStates?s='+encodeURIComponent(q),function(data){
                            add(data);
                        });
                    }
                ]}).on('selected.xdsoft', function(e, datum){
                    var selectedState   = datum.split(' ');
                    $.post('http://localhost/newgmanzo/setlocal',{state:selectedState[0]}, function(data){
                        var stringJSON  = $.parseJSON(JSON.stringify(data));
                        if(stringJSON.status == 'OK'){
                            window.location.href = 'http://localhost/newgmanzo/stores/?state='+selectedState[0];
                        }
                    })
                });
            })
        });
        
        $('a#pickUps').click(function(e){
            e.preventDefault();
            $('#pickUpModal').modal('show');
        })
    })
</script>
</body>
</html>