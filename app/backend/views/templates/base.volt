<!DOCTYPE html>
<html lang="en" class="">
<head>
  <meta charset="utf-8">
  <meta content="IE=edge" http-equiv="X-UA-Compatible">
  <meta content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui" name="viewport">
  <meta content="bootstrap admin template" name="description">
  <meta content="" name="author">

  {{ get_title()}}

  {{ this.assets.outputCss('headers') }}
  {{ this.assets.outputJs('jsHeaders') }}
  
  {% block head %} {% endblock %}
  <script>
    Breakpoints();
  </script>
</head>

<body class="page-user">
  <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

  <nav role="navigation" class="site-navbar navbar navbar-default navbar-fixed-top navbar-mega">

    <div class="navbar-header">
      <button data-toggle="menubar" class="navbar-toggle hamburger hamburger-close navbar-toggle-left hided unfolded" type="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="hamburger-bar"></span>
      </button>
      <button data-toggle="collapse" data-target="#site-navbar-collapse" class="navbar-toggle collapsed" type="button">
        <i aria-hidden="true" class="icon wb-more-horizontal"></i>
      </button>
      <button data-toggle="collapse" data-target="#site-navbar-search" class="navbar-toggle collapsed" type="button">
        <span class="sr-only">Toggle Search</span>
        <i aria-hidden="true" class="icon wb-search"></i>
      </button>
      <div data-toggle="gridmenu" class="navbar-brand navbar-brand-center site-gridmenu-toggle">
        <img title="Remark" src="{{url('assets/images/logo.png')}}" class="navbar-brand-logo">
        <span class="navbar-brand-text"> Manager</span>
      </div>
    </div>

    <div class="navbar-container container-fluid">
      <!-- Navbar Collapse -->
      <div id="site-navbar-collapse" class="collapse navbar-collapse navbar-collapse-toolbar">
        <!-- Navbar Toolbar -->
        <ul class="nav navbar-toolbar">
          <li id="toggleMenubar" class="hidden-float">
            <a role="button" href="#" data-toggle="menubar">
              <i class="icon hamburger hamburger-arrow-left hided unfolded">
                  <span class="sr-only">Toggle menubar</span>
                  <span class="hamburger-bar"></span>
                </i>
            </a>
          </li>
          <li id="toggleFullscreen" class="hidden-xs">
            <a role="button" href="#" data-toggle="fullscreen" class="icon icon-fullscreen">
              <span class="sr-only">Toggle fullscreen</span>
            </a>
          </li>
          <li class="hidden-float">
            <a role="button" href="#site-navbar-search" data-toggle="collapse" class="icon wb-search">
              <span class="sr-only">Toggle Search</span>
            </a>
          </li>
          
        </ul>
        <!-- End Navbar Toolbar -->

        <!-- Navbar Toolbar Right -->
        <ul class="nav navbar-toolbar navbar-right navbar-toolbar-right">
          
          <li>
            <a role="button" data-animation="slide-bottom" aria-expanded="false" title="Log Out" href="{{url('backend/logout/')}}">
              <i aria-hidden="true" class="icon wb-power"></i>
            </a>
          </li>
        </ul>
        <!-- End Navbar Toolbar Right -->
      </div>
      <!-- End Navbar Collapse -->

      <!-- Site Navbar Seach -->
      <div id="site-navbar-search" class="collapse navbar-search-overlap">
        <form role="search">
          <div class="form-group">
            <div class="input-search">
              <i aria-hidden="true" class="input-search-icon wb-search"></i>
              <input type="text" placeholder="Search..." name="site-search" class="form-control">
              <button aria-label="Close" data-toggle="collapse" data-target="#site-navbar-search" class="input-search-close icon wb-close" type="button"></button>
            </div>
          </div>
        </form>
      </div>
      <!-- End Site Navbar Seach -->
    </div>
  </nav>

  <div class="site-menubar">
    <div class="site-menubar-body">
      <div>
        <div>
          <ul class="site-menu">
            <li class="site-menu-category">General</li>
            <li class="site-menu-item">
              <a data-slug="dashboard" href="{{url('backend/dashboard/')}}">
                <i aria-hidden="true" class="site-menu-icon wb-dashboard active"></i>
                <span class="site-menu-title">Dashboard</span>
              </a>
            </li>
            <li class="site-menu-item has-sub">
              <a data-slug="layout" href="javascript:void(0)">
                <i aria-hidden="true" class="site-menu-icon wb-user"></i>
                <span class="site-menu-title">Customers</span>
                <span class="site-menu-arrow"></span>
              </a>
              <ul class="site-menu-sub">
                
                <li class="site-menu-item">
                  <a data-slug="layout-headers" href="{{url('backend/customer/getCustomer')}}" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Manage Customer(s)</span>
                  </a>
                </li>
              </ul>
            </li>

            <li class="site-menu-item has-sub">
              <a data-slug="page" href="javascript:void(0)">
                <i aria-hidden="true" class="site-menu-icon wb-file"></i>
                <span class="site-menu-title">Products</span>
                <span class="site-menu-arrow"></span>
              </a>
              <ul class="site-menu-sub">
              {% if session.get('auth')['role'] == 'admin' %}
                <li class="site-menu-item">
                  <a data-slug="page-faq" href="{{url('backend/products/category')}}" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Product Categories</span>
                  </a>
                </li>
                
                <li class="site-menu-item">
                  <a data-slug="page-login" href="{{url('backend/products/subcategory')}}" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Create Sub Category(ies)</span>
                  </a>
                </li>
                {% endif %}
                <li class="site-menu-item">
                  <a data-slug="page-register" href="{{url('backend/products/show')}}" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Create Products</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="page-lockscreen" href="{{url('backend/products')}}" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Manage Product(s)</span>
                  </a>
                </li>
              </ul>
            </li>
            
            <li class="site-menu-category">Elements</li>
            
            <li class="site-menu-item has-sub">
              <a data-slug="forms" href="javascript:void(0)">
                <i aria-hidden="true" class="site-menu-icon wb-library"></i>
                <span class="site-menu-title">Order | Cart Activity</span>
                <span class="site-menu-arrow"></span>
              </a>
              <ul class="site-menu-sub">
                <li class="site-menu-item active">
                  <a data-slug="forms-general" href="{{url('backend/order/show')}}" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Order Now</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="forms-material" href="{{url('backend/order/')}}" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Manage Order(s)</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="forms-advanced" href="#" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Order Status</span>
                  </a>
                </li>
                
              </ul>
            </li>
            
            <li class="site-menu-category"><strong>Apps</strong></li>
            
          </ul>

        </div>
      </div>
    </div>

    <div class="site-menubar-footer">
      <a data-original-title="Settings" data-toggle="tooltip" data-placement="top" class="fold-show" href="javascript: void(0);">
        <span aria-hidden="true" class="icon wb-settings"></span>
      </a>
      <a data-original-title="Lock" data-toggle="tooltip" data-placement="top" href="{{url('backend/lock/')}}">
        <span aria-hidden="true" class="icon wb-eye-close"></span>
      </a>
      <a data-original-title="Logout" data-toggle="tooltip" data-placement="top" href="{{url('backend/logout/')}}">
        <span aria-hidden="true" class="icon wb-power"></span>
      </a>
    </div>
  </div>
  <div class="site-gridmenu">
    <ul>
      <li>
        <a href="#">
          <i class="icon wb-envelope"></i>
          <span>Mailbox</span>
        </a>
      </li>
      <li>
        <a href="#">
          <i class="icon wb-calendar"></i>
          <span>Calendar</span>
        </a>
      </li>
      <li>
        <a href="#">
          <i class="icon wb-user"></i>
          <span>Contacts</span>
        </a>
      </li>
      <li>
        <a href="#">
          <i class="icon wb-camera"></i>
          <span>Media</span>
        </a>
      </li>
      <li>
        <a href="#">
          <i class="icon wb-order"></i>
          <span>Documents</span>
        </a>
      </li>
      <li>
        <a href="#">
          <i class="icon wb-image"></i>
          <span>Project</span>
        </a>
      </li>
      <li>
        <a href="#">
          <i class="icon wb-chat-group"></i>
          <span>Forum</span>
        </a>
      </li>
      <li>
        <a href="#">
          <i class="icon wb-dashboard"></i>
          <span>Dashboard</span>
        </a>
      </li>
    </ul>
  </div>


<!-- Page -->
  <div class="page">
    <div class="page-header page-header-bordered">
      <ol class="breadcrumb">
        <li><a href="javascript:void(0)">Home</a></li>
        <li><a href="javascript:void(0)">Layouts</a></li>
      </ol>
      <h1 class="page-title">Bordered Header</h1>
      <div class="page-header-actions">
        <button type="button" class="btn btn-sm btn-outline btn-default btn-round">
          <span class="text hidden-xs">Settings</span>
          <i class="icon wb-chevron-right" aria-hidden="true"></i>
        </button>
      </div>
    </div>

    <div class="page-content">
      {% block content %}
        
      {% endblock %}
    </div>
  </div>
  <!-- End Page -->

<!-- Footer -->
  <footer class="site-footer">
    <span class="site-footer-legal">&copy; 2016 SalesApp</span>
    <div class="site-footer-right">
      Crafted with <i class="red-600 wb wb-heart"></i> by <a href="#">CreativeMeshKernel</a>
    </div>
  </footer>


{{ this.assets.outputJs('footers') }}
  <script>
    (function(document, window, $) {
      'use strict';

      var Site = window.Site;
      $(document).ready(function() {
        Site.run();
      });
    })(document, window, jQuery);
  </script>



</body>
</html>
