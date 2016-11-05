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
    -webkit-border-radius: 0px;
       -moz-border-radius: 0px;
            border-radius: 0px;
    box-shadow:#ccc 0 3px 3px 0;
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
            <div id="logo"><a href="index.html"><img class="img-responsive" src="image/logo.png" title="MarketShop" alt="MarketShop" /></a></div>
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
                <li>
                  <div>
                    <table class="table table-bordered">
                      <tbody>
                        <tr>
                          <td class="text-right"><strong>Sub-Total</strong></td>
                          <td class="text-right">$940.00</td>
                        </tr>
                        <tr>
                          <td class="text-right"><strong>Eco Tax (-2.00)</strong></td>
                          <td class="text-right">$4.00</td>
                        </tr>
                        <tr>
                          <td class="text-right"><strong>VAT (20%)</strong></td>
                          <td class="text-right">$188.00</td>
                        </tr>
                        <tr>
                          <td class="text-right"><strong>Total</strong></td>
                          <td class="text-right">$1,132.00</td>
                        </tr>
                      </tbody>
                    </table>
                    <p class="checkout"><a href="cart.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> View Cart</a>&nbsp;&nbsp;&nbsp;<a href="checkout.html" class="btn btn-primary"><i class="fa fa-share"></i> Checkout</a></p>
                  </div>
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
                  <li> <a href="category.html">Clothing<span>&rsaquo;</span></a>
                    <div class="dropdown-menu">
                      <ul>
                        <li><a href="category.html">Men <span>&rsaquo;</span></a>
                          <div class="dropdown-menu">
                            <ul>
                              <li><a href="category.html">Sub Categories</a></li>
                              <li><a href="category.html">Sub Categories</a></li>
                              <li><a href="category.html">Sub Categories</a></li>
                              <li><a href="category.html">Sub Categories</a></li>
                              <li><a href="category.html">Sub Categories New</a></li>
                            </ul>
                          </div>
                        </li>
                        <li><a href="category.html" >Women</a> </li>
                        <li><a href="category.html">Girls<span>&rsaquo;</span></a>
                          <div class="dropdown-menu">
                            <ul>
                              <li><a href="category.html">Sub Categories </a></li>
                              <li><a href="category.html">Sub Categories New</a></li>
                              <li><a href="category.html">Sub Categories New</a></li>
                            </ul>
                          </div>
                        </li>
                        <li><a href="category.html">Boys</a></li>
                        <li><a href="category.html">Baby</a></li>
                        <li><a href="category.html">Accessories <span>&rsaquo;</span></a>
                          <div class="dropdown-menu">
                            <ul>
                              <li><a href="category.html">New Sub Categories</a></li>
                            </ul>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </li>
                  <li> <a href="category.html">Electronics<span>&rsaquo;</span></a>
                    <div class="dropdown-menu">
                      <ul>
                        <li> <a href="category.html">Laptops <span>&rsaquo;</span></a>
                          <div class="dropdown-menu">
                            <ul>
                              <li> <a href="category.html">New Sub Categories </a> </li>
                              <li> <a href="category.html">New Sub Categories </a> </li>
                              <li> <a href="category.html">Sub Categories New </a> </li>
                            </ul>
                          </div>
                        </li>
                        <li> <a href="category.html">Desktops <span>&rsaquo;</span></a>
                          <div class="dropdown-menu">
                            <ul>
                              <li> <a href="category.html">New Sub Categories </a> </li>
                              <li> <a href="category.html">Sub Categories New </a> </li>
                              <li> <a href="category.html">Sub Categories New </a> </li>
                            </ul>
                          </div>
                        </li>
                        <li> <a href="category.html">Cameras <span>&rsaquo;</span></a>
                          <div class="dropdown-menu">
                            <ul>
                              <li> <a href="category.html">New Sub Categories</a></li>
                            </ul>
                          </div>
                        </li>
                        <li><a href="category.html">Mobile Phones <span>&rsaquo;</span></a>
                          <div class="dropdown-menu">
                            <ul>
                              <li><a href="category.html">New Sub Categories</a></li>
                              <li><a href="category.html">New Sub Categories</a></li>
                            </ul>
                          </div>
                        </li>
                        <li><a href="category.html">TV &amp; Home Audio <span>&rsaquo;</span></a>
                          <div class="dropdown-menu">
                            <ul>
                              <li><a href="category.html">New Sub Categories </a> </li>
                              <li><a href="category.html">Sub Categories New </a> </li>
                            </ul>
                          </div>
                        </li>
                        <li><a href="category.html">MP3 Players</a> </li>
                      </ul>
                    </div>
                  </li>
                  <li><a href="category.html">Shoes<span>&rsaquo;</span></a>
                    <div class="dropdown-menu">
                      <ul>
                        <li><a href="category.html">Men</a> </li>
                        <li><a href="category.html">Women <span>&rsaquo;</span></a>
                          <div class="dropdown-menu">
                            <ul>
                              <li><a href="category.html">New Sub Categories </a> </li>
                              <li><a href="category.html">Sub Categories </a> </li>
                            </ul>
                          </div>
                        </li>
                        <li><a href="category.html">Girls</a> </li>
                        <li><a href="category.html">Boys</a> </li>
                        <li><a href="category.html">Baby</a> </li>
                        <li><a href="category.html">Accessories <span>&rsaquo;</span></a>
                          <div class="dropdown-menu">
                            <ul>
                              <li><a href="category.html">New Sub Categories</a></li>
                              <li><a href="category.html">New Sub Categories</a></li>
                              <li><a href="category.html">Sub Categories</a></li>
                            </ul>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </li>
                  <li> <a href="category.html">Watches<span>&rsaquo;</span></a>
                    <div class="dropdown-menu">
                      <ul>
                        <li> <a href="category.html">Men's Watches</a></li>
                        <li> <a href="category.html">Women's Watches</a></li>
                        <li> <a href="category.html">Kids' Watches</a></li>
                        <li> <a href="category.html">Accessories</a></li>
                      </ul>
                    </div>
                  </li>
                  <li> <a href="category.html">Jewellery<span>&rsaquo;</span></a>
                    <div class="dropdown-menu">
                      <ul>
                        <li> <a href="category.html">Silver <span>&rsaquo;</span></a>
                          <div class="dropdown-menu">
                            <ul>
                              <li> <a href="category.html">New Sub Categories</a></li>
                              <li> <a href="category.html">New Sub Categories</a></li>
                            </ul>
                          </div>
                        </li>
                        <li><a href="category.html">Gold <span>&rsaquo;</span></a>
                          <div class="dropdown-menu">
                            <ul>
                              <li><a href="category.html">test 1</a></li>
                              <li><a href="category.html">test 2</a></li>
                            </ul>
                          </div>
                        </li>
                        <li><a href="category.html">Diamond</a></li>
                        <li><a href="category.html">Pearl <span>&rsaquo;</span></a>
                          <div class="dropdown-menu">
                            <ul>
                              <li><a href="category.html">New Sub Categories</a></li>
                            </ul>
                          </div>
                        </li>
                        <li><a href="category.html">Men's Jewellery</a></li>
                        <li><a href="category.html">Children's Jewellery <span>&rsaquo;</span></a>
                          <div class="dropdown-menu">
                            <ul>
                              <li><a href="category.html">New Sub Categories </a> </li>
                            </ul>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </li>
                  <li><a href="category.html">Health &amp; Beauty<span>&rsaquo;</span></a>
                    <div class="dropdown-menu">
                      <ul>
                        <li> <a href="category.html">Perfumes</a></li>
                        <li> <a href="category.html">Makeup</a></li>
                        <li> <a href="category.html">Sun Care</a></li>
                        <li> <a href="category.html">Skin Care</a></li>
                        <li> <a href="category.html">Eye Care</a></li>
                        <li> <a href="category.html">Hair Care</a></li>
                      </ul>
                    </div>
                  </li>
                  <li> <a href="category.html">Kids &amp; Babies<span>&rsaquo;</span></a>
                    <div class="dropdown-menu">
                      <ul>
                        <li><a href="category.html">Toys</a></li>
                        <li><a href="category.html">Games <span>&rsaquo;</span></a>
                          <div class="dropdown-menu">
                            <ul>
                              <li><a href="category.html">test 25</a></li>
                            </ul>
                          </div>
                        </li>
                        <li><a href="category.html">Puzzles</a></li>
                        <li><a href="category.html">Hobbies</a></li>
                        <li><a href="category.html">Strollers</a></li>
                        <li><a href="category.html">Health &amp; Safety</a></li>
                      </ul>
                    </div>
                  </li>
                  <li> <a href="category.html">Sports<span>&rsaquo;</span></a>
                    <div class="dropdown-menu">
                      <ul>
                        <li><a href="category.html">Cycling</a></li>
                        <li><a href="category.html">Running</a></li>
                        <li><a href="category.html">Swimming</a></li>
                        <li><a href="category.html">Football</a></li>
                        <li><a href="category.html">Golf</a></li>
                        <li><a href="category.html">Windsurfing</a></li>
                      </ul>
                    </div>
                  </li>
                  <li> <a href="category.html">Home &amp; Garden<span>&rsaquo;</span></a>
                    <div class="dropdown-menu">
                      <ul>
                        <li><a href="category.html">Bedding</a></li>
                        <li><a href="category.html">Food</a></li>
                        <li><a href="category.html">Furniture</a></li>
                        <li><a href="category.html">Kitchen</a></li>
                        <li><a href="category.html">Lighting</a></li>
                        <li><a href="category.html">Tools</a></li>
                      </ul>
                    </div>
                  </li>
                  <li> <a href="category.html">Wines &amp; Spirits<span>&rsaquo;</span></a>
                    <div class="dropdown-menu">
                      <ul>
                        <li><a href="category.html">Wine</a></li>
                        <li><a href="category.html">Whiskey</a></li>
                        <li><a href="category.html">Vodka</a></li>
                        <li><a href="category.html">Liqueurs</a></li>
                        <li><a href="category.html">Beer</a></li>
                      </ul>
                    </div>
                  </li>
                </ul>
              </div>
            </li>
            <li class="menu_brands dropdown"><a href="#">Brands</a>
              <div class="dropdown-menu">
                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/apple_logo-60x60.jpg" title="Apple" alt="Apple" /></a><a href="#">Apple</a></div>
                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/canon_logo-60x60.jpg" title="Canon" alt="Canon" /></a><a href="#">Canon</a></div>
                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"> <a href="#"><img src="image/product/hp_logo-60x60.jpg" title="Hewlett-Packard" alt="Hewlett-Packard" /></a><a href="#">Hewlett-Packard</a></div>
                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/htc_logo-60x60.jpg" title="HTC" alt="HTC" /></a><a href="#">HTC</a></div>
                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/palm_logo-60x60.jpg" title="Palm" alt="Palm" /></a><a href="#">Palm</a></div>
                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/sony_logo-60x60.jpg" title="Sony" alt="Sony" /></a><a href="#">Sony</a> </div>
                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/canon_logo-60x60.jpg" title="test" alt="test" /></a><a href="#">test</a> </div>
                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/apple_logo-60x60.jpg" title="test 3" alt="test 3" /></a><a href="#">test 3</a></div>
                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/canon_logo-60x60.jpg" title="test 5" alt="test 5" /></a><a href="#">test 5</a> </div>
                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/canon_logo-60x60.jpg" title="test 6" alt="test 6" /></a><a href="#">test 6</a></div>
                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/apple_logo-60x60.jpg" title="test 7" alt="test 7" /></a><a href="#">test 7</a> </div>
                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/canon_logo-60x60.jpg" title="test1" alt="test1" /></a><a href="#">test1</a></div>
                <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6"><a href="#"><img src="image/product/apple_logo-60x60.jpg" title="test2" alt="test2" /></a><a href="#">test2</a></div>
              </div>
            </li>
            <li class="custom-link"><a href="#">Custom Links</a></li>
            <li class="dropdown wrap_custom_block hidden-sm hidden-xs"><a>Custom Block</a>
              <div class="dropdown-menu custom_block">
                <ul>
                  <li>
                    <table>
                      <tbody>
                        <tr>
                          <td><img alt="" src="image/banner/cms-block.jpg"></td>
                          <td><img alt="" src="image/banner/responsive.jpg"></td>
                          <td><img alt="" src="image/banner/cms-block.jpg"></td>
                        </tr>
                        <tr>
                          <td><h4>CMS Blocks</h4></td>
                          <td><h4>Responsive Template</h4></td>
                          <td><h4>Dedicated Support</h4></td>
                        </tr>
                        <tr>
                          <td>This is a CMS block. You can insert any content (HTML, Text, Images) Here.</td>
                          <td>This is a CMS block. You can insert any content (HTML, Text, Images) Here.</td>
                          <td>This is a CMS block. You can insert any content (HTML, Text, Images) Here.</td>
                        </tr>
                        <tr>
                          <td><strong><a class="btn btn-primary btn-sm" href="#">Read More</a></strong></td>
                          <td><strong><a class="btn btn-primary btn-sm" href="#">Read More</a></strong></td>
                          <td><strong><a class="btn btn-primary btn-sm" href="#">Read More</a></strong></td>
                        </tr>
                      </tbody>
                    </table>
                  </li>
                </ul>
              </div>
            </li>
            <li class="dropdown information-link"><a>Pages</a>
              <div class="dropdown-menu">
                <ul>
                  <li><a href="login.html">Login</a></li>
                  <li><a href="register.html">Register</a></li>
                  <li><a href="category.html">Category (Grid/List)</a></li>
                  <li><a href="product.html">Product</a></li>
                  <li><a href="cart.html">Shopping Cart</a></li>
                  <li><a href="checkout.html">Checkout</a></li>
                  <li><a href="compare.html">Compare</a></li>
                  <li><a href="wishlist.html">Wishlist</a></li>
                  <li><a href="search.html">Search</a></li>
                </ul>
                <ul>
                  <li><a href="about-us.html">About Us</a></li>
                  <li><a href="404.html">404</a></li>
                  <li><a href="elements.html">Elements</a></li>
                  <li><a href="faq.html">Faq</a></li>
                  <li><a href="sitemap.html">Sitemap</a></li>
                  <li><a href="contact-us.html">Contact Us</a></li>
                </ul>
              </div>
            </li>
            <li class="contact-link"><a href="contact-us.html">Contact Us</a></li>
            <li class="custom-link-right"><a href="#" target="_blank">Special Offers</a></li>
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
            <p>Marketshop Ecommerce Template © 2016 | Template By <a href="http://harnishdesign.net" target="_blank">Harnish Design</a></p>
          </div>
          <div class="social pull-right flip"> <a href="#" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/facebook.png" alt="Facebook" title="Facebook"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/twitter.png" alt="Twitter" title="Twitter"> </a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/google_plus.png" alt="Google+" title="Google+"> </a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/pinterest.png" alt="Pinterest" title="Pinterest"> </a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="image/socialicons/rss.png" alt="RSS" title="RSS"> </a> </div>
        </div>
        <div class="bottom-row">
          <div class="custom-text text-center"> <img alt="" src="image/logo-small.png">
            <p>This is a CMS block. You can insert any content (HTML, Text, Images) Here. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
          </div>
          <div class="payments_types"> <a href="#" target="_blank"> <img data-toggle="tooltip" src="image/payment/payment_paypal.png" alt="paypal" title="PayPal"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="image/payment/payment_american.png" alt="american-express" title="American Express"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="image/payment/payment_2checkout.png" alt="2checkout" title="2checkout"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="image/payment/payment_maestro.png" alt="maestro" title="Maestro"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="image/payment/payment_discover.png" alt="discover" title="Discover"></a> <a href="#" target="_blank"> <img data-toggle="tooltip" src="image/payment/payment_mastercard.png" alt="mastercard" title="MasterCard"></a> </div>
        </div>
      </div>
    </div>
    <div id="back-top"><a data-toggle="tooltip" title="Back to Top" href="javascript:void(0)" class="backtotop"><i class="fa fa-chevron-up"></i></a></div>
  </footer>
  <!--Footer End-->
  <!-- Facebook Side Block Start -->
  <div id="facebook" class="fb-left sort-order-1">
    <div class="facebook_icon"><i class="fa fa-facebook"></i></div>
    <div class="fb-page" data-href="https://www.facebook.com/harnishdesign/" data-small-header="true" data-adapt-container-width="true" data-hide-cover="true" data-show-facepile="true" data-show-posts="false">
      <div class="fb-xfbml-parse-ignore">
        <blockquote cite="https://www.facebook.com/harnishdesign/"><a href="https://www.facebook.com/harnishdesign/">Harnish Design</a></blockquote>
      </div>
    </div>
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
  </div>
  <!-- Facebook Side Block End -->
  <!-- Twitter Side Block Start -->
  <div id="twitter_footer" class="twit-left sort-order-2">
    <div class="twitter_icon"><i class="fa fa-twitter"></i></div>
    <a class="twitter-timeline" href="https://twitter.com/" data-chrome="nofooter noscrollbar transparent" data-theme="light" data-tweet-limit="2" data-related="twitterapi,twitter" data-aria-polite="assertive" data-widget-id="347621595801608192">Tweets by @</a>
    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
  </div>
  <!-- Twitter Side Block End -->
  <!-- Video Side Block Start -->
  <div id="video_box" class="vb-right sort-order-1">
    <div id="video_box_icon"><i class="fa fa-play"></i></div>
    <p>
      <iframe allowfullscreen="" src="//www.youtube.com/embed/SZEflIVnhH8" height="315" width="560"></iframe>
    </p>
  </div>
  <!-- Video Side Block End -->
  <!-- Custom Side Block Start -->
  <div id="custom_side_block" class="custom_side_block_right sort-order-2">
    <div class="custom_side_block_icon"> <i class="fa fa-chevron-right"></i> </div>
    <table>
      <tbody>
        <tr>
          <td><h2>CMS Blocks</h2></td>
        </tr>
        <tr>
          <td><img alt="" src="image/banner/cms-block.jpg"></td>
        </tr>
        <tr>
          <td>You can add any HTML content to this block or turn it off in Theme Admin panel!</td>
        </tr>
        <tr>
          <td><strong><a href="#">Read More</a></strong></td>
        </tr>
      </tbody>
    </table>
  </div>
  <!-- Custom Side Block End -->
</div>
<!-- ============================================================= FOOTER : END============================================================= -->

<!-- MODAL -->
<div id="myModalState" class="modal fade" tabindex="-1" role="dialog">
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

{{ this.assets.outputJs('footers') }}
<script type="text/javascript">
    $(window).load(function(){
        $('#myModal').modal('show');
        $('.dropdown-toggle').dropdown();
        
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