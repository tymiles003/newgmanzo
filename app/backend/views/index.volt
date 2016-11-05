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

<body class="page-login layout-full site-menubar-unfold">
  <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->


  <!-- Page -->
  <div data-animsition-out="fade-out" data-animsition-in="fade-in" class="page animsition vertical-align text-center" style="animation-duration: 0s; opacity: 1;">
    <div class="page-content vertical-align-middle">
      <div class="brand">
        <img alt="..." src="{{url('assets/images/logo.png')}}" class="brand-img">
        
      </div>
      <p>Sign into your pages account</p>
      {{flash.output()}}
      <form action="{{url('backend/session/start')}}" method="post">
        
        <div class="form-group">
          <label for="inputEmail" class="sr-only">Email</label>
          <input type="email" placeholder="Email" name="email" id="inputEmail" class="form-control">
        </div>
        <div class="form-group">
          <label for="inputPassword" class="sr-only">Password</label>
          <input type="password" placeholder="Password" name="password" id="inputPassword" class="form-control">
        </div>
        <div class="form-group clearfix">
          <div class="checkbox-custom checkbox-inline pull-left">
            <input type="checkbox" name="checkbox" id="inputCheckbox">
            <label for="inputCheckbox">Remember me</label>
          </div>
          <a href="forgot-password.html" class="pull-right">Forgot password?</a>
        </div>
        <button class="btn btn-primary btn-block" type="submit">Sign in</button>
      </form>
      <p>Still no account? Please go to <a href="register.html">Register</a></p>

      <footer class="page-copyright">
        <p>SALES APP BY <strong>creativemeshKernel</strong></p>
        <p>&copy; 2015. All RIGHT RESERVED.</p>
        <div class="social">
          <a href="javascript:void(0)">
            <i aria-hidden="true" class="icon bd-twitter"></i>
          </a>
          <a href="javascript:void(0)">
            <i aria-hidden="true" class="icon bd-facebook"></i>
          </a>
          <a href="javascript:void(0)">
            <i aria-hidden="true" class="icon bd-google-plus"></i>
          </a>
        </div>
      </footer>
    </div>
  </div>
  <!-- End Page -->


  {{this.assets.outputJs('footers')}}

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
