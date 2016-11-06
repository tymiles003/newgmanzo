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
            <link href="https://fonts.googleapis.com/css?family=Droid+Sans|Open+Sans" rel="stylesheet"> 
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

#myModalState {
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
                <li class="email"><a href="mailto:info@marketshop.com"><i class="fa fa-envelope"></i>info@marketshop.com</a></li>
                <li class="wrap_custom_block hidden-sm hidden-xs"><a>Custom Block<b></b></a>
                  <div class="dropdown-menu custom_block">
                    <ul>
                      <li>
                        <table>
                          <tbody>
                            <tr>
                              <td><img alt="" src="image/banner/cms-block.jpg"></td>
                              <td><img alt="" src="image/banner/responsive.jpg"></td>
                            </tr>
                            <tr>
                              <td><h4>CMS Blocks</h4></td>
                              <td><h4>Responsive Template</h4></td>
                            </tr>
                            <tr>
                              <td>This is a CMS block. You can insert any content (HTML, Text, Images) Here.</td>
                              <td>This is a CMS block. You can insert any content (HTML, Text, Images) Here.</td>
                            </tr>
                            <tr>
                              <td><strong><a class="btn btn-default btn-sm" href="#">Read More</a></strong></td>
                              <td><strong><a class="btn btn-default btn-sm" href="#">Read More</a></strong></td>
                            </tr>
                          </tbody>
                        </table>
                      </li>
                    </ul>
                  </div>
                </li>
                <li><a href="#">Wish List (0)</a></li>
                <li><a href="checkout.html">Checkout</a></li>
              </ul>
            </div>
            <div id="language" class="btn-group">
              <button class="btn-link dropdown-toggle" data-toggle="dropdown"> <span> <img src="image/flags/gb.png" alt="English" title="English">English <i class="fa fa-caret-down"></i></span></button>
              <ul class="dropdown-menu">
                <li>
                  <button class="btn btn-link btn-block language-select" type="button" name="GB"><img src="image/flags/gb.png" alt="English" title="English" /> English</button>
                </li>
                <li>
                  <button class="btn btn-link btn-block language-select" type="button" name="GB"><img src="image/flags/ar.png" alt="Arabic" title="Arabic" /> Arabic</button>
                </li>
              </ul>
            </div>
            <div id="currency" class="btn-group">
              <button class="btn-link dropdown-toggle" data-toggle="dropdown"> <span> $ USD <i class="fa fa-caret-down"></i></span></button>
              <ul class="dropdown-menu">
                <li>
                  <button class="currency-select btn btn-link btn-block" type="button" name="EUR">€ Euro</button>
                </li>
                <li>
                  <button class="currency-select btn btn-link btn-block" type="button" name="GBP">£ Pound Sterling</button>
                </li>
                <li>
                  <button class="currency-select btn btn-link btn-block" type="button" name="USD">$ US Dollar</button>
                </li>
              </ul>
            </div>
          </div>
          <div id="top-links" class="nav pull-right flip">
            <ul>
              <li><a href="login.html">Login</a></li>
              <li><a href="register.html">Register</a></li>
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
            <div id="logo"><a href="index.html"><img class="img-responsive" src="{{url('assets/image/logo.png')}}" title="GMANZO" alt="GMANZO" /></a></div>
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
              <button type="button" data-toggle="dropdown" data-loading-text="Loading..." class="heading dropdown-toggle"> <span class="cart-icon pull-left flip"></span> <span id="cart-total">2 item(s) - $1,132.00</span></button>
              <ul class="dropdown-menu">
                <li>
                  <table class="table">
                    <tbody>
                      <tr>
                        <td class="text-center"><a href="product.html"><img class="img-thumbnail" title="Xitefun Causal Wear Fancy Shoes" alt="Xitefun Causal Wear Fancy Shoes" src="image/product/sony_vaio_1-50x50.jpg"></a></td>
                        <td class="text-left"><a href="product.html">Xitefun Causal Wear Fancy Shoes</a></td>
                        <td class="text-right">x 1</td>
                        <td class="text-right">$902.00</td>
                        <td class="text-center"><button class="btn btn-danger btn-xs remove" title="Remove" onClick="" type="button"><i class="fa fa-times"></i></button></td>
                      </tr>
                      <tr>
                        <td class="text-center"><a href="product.html"><img class="img-thumbnail" title="Aspire Ultrabook Laptop" alt="Aspire Ultrabook Laptop" src="image/product/samsung_tab_1-50x50.jpg"></a></td>
                        <td class="text-left"><a href="product.html">Aspire Ultrabook Laptop</a></td>
                        <td class="text-right">x 1</td>
                        <td class="text-right">$230.00</td>
                        <td class="text-center"><button class="btn btn-danger btn-xs remove" title="Remove" onClick="" type="button"><i class="fa fa-times"></i></button></td>
                      </tr>
                    </tbody>
                  </table>
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
            <li><a class="home_link" title="Home" href="index.html"><span>Home</span></a></li>
            <li class="dropdown"><a>Shop by Categories</a>
              <div class="dropdown-menu">
                <ul>
                {% for keys,values in category %}
                  <li> <a href="{{url('category/?cat='~values['category_id'])}}">{{values['category_name'] | capitalize}}</a></li>
                {% endfor %}
                  
                </ul>
              </div>
            </li>
            <li class="menu_brands dropdown"><a href="#">Shops &amp; Stores</a>
            </li>
            <li class="custom-link"><a href="#">Cart</a></li>
            
            <li class="dropdown information-link"><a href="#">Login</a>
            </li>
            <li class="custom-link-right"><a href="#" target="_blank"><strong>Pick Ups &amp; Delivery</strong></a></li>
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
              <li class="email"><i class="fa fa-envelope"></i>Send email via our <a href="contact-us.html">Contact Us</a>
            </ul>
          </div>
          <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
            <h5>Information</h5>
            <ul>
              <li><a href="about-us.html">About Us</a></li>
              <li><a href="about-us.html">Delivery Information</a></li>
              <li><a href="about-us.html">Privacy Policy</a></li>
              <li><a href="about-us.html">Terms &amp; Conditions</a></li>
            </ul>
          </div>
          <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
            <h5>Customer Service</h5>
            <ul>
              <li><a href="contact-us.html">Contact Us</a></li>
              <li><a href="#">Returns</a></li>
              <li><a href="sitemap.html">Site Map</a></li>
            </ul>
          </div>
          <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
            <h5>Extras</h5>
            <ul>
              <li><a href="#">Brands</a></li>
              <li><a href="#">Gift Vouchers</a></li>
              <li><a href="#">Affiliates</a></li>
              <li><a href="#">Specials</a></li>
            </ul>
          </div>
          <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
            <h5>My Account</h5>
            <ul>
              <li><a href="#">My Account</a></li>
              <li><a href="#">Order History</a></li>
              <li><a href="#">Wish List</a></li>
              <li><a href="#">Newsletter</a></li>
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
            <p>This is a CMS block. You can insert any content (HTML, Text, Images) Here. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
          </div>
          <div class="payments_types"> <a href="#" target="_blank"> <img data-toggle="tooltip" src="{{url('assets/image/payment/payment_paypal.png')}}" alt="paypal" title="PayPal"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="{{url('assets/image/payment/payment_american.png')}}" alt="american-express" title="American Express"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="{{url('assets/image/payment/payment_2checkout.png')}}" alt="2checkout" title="2checkout"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="{{url('assets/image/payment/payment_maestro.png')}}" alt="maestro" title="Maestro"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="{{url('assets/image/payment/payment_discover.png')}}" alt="discover" title="Discover"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="{{url('assets/image/payment/payment_mastercard.png')}}" alt="mastercard" title="MasterCard"></a> </div>
        </div>
      </div>
    </div>
    <div id="back-top"><a data-toggle="tooltip" title="Back to Top" href="javascript:void(0)" class="backtotop"><i class="fa fa-chevron-up"></i></a></div>
  </footer>
  <!--Footer End-->
  
<!-- ============================================================= FOOTER : END============================================================= -->



{{ this.assets.outputJs('footers') }}
<script type="text/javascript">
    $(window).load(function(){
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

    $(document).ready(function(){
        $('#stateModal').click(function(evt){
            evt.preventDefault();
            $('#myModalState').modal('show');
        })
    })
</script>
</body>
</html>