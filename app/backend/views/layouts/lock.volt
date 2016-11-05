<!DOCTYPE html>
<html class="no-js before-run" lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
  <meta name="description" content="bootstrap admin template">
  <meta name="author" content="">

  {{ get_title()}}

  {{ this.assets.outputCss('headers') }}
  {{ this.assets.outputJs('jsHeaders') }}


  <!--[if lt IE 9]>
    <script src="../../assets/vendor/html5shiv/html5shiv.min.js"></script>
    <![endif]-->

  <!--[if lt IE 10]>
    <script src="../../assets/vendor/media-match/media.match.min.js"></script>
    <script src="../../assets/vendor/respond/respond.min.js"></script>
    <![endif]-->

  <!-- Scripts -->
  <script src="../../assets/vendor/modernizr/modernizr.js"></script>
  <script src="../../assets/vendor/breakpoints/breakpoints.js"></script>
  <script>
    Breakpoints();
  </script>
</head>
<body class="page-locked layout-full">
  <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->


  <!-- Page -->
  <div class="page animsition vertical-align text-center" data-animsition-in="fade-in"
  data-animsition-out="fade-out">
    <div class="page-content vertical-align-middle">
      <div class="avatar avatar-lg">
        <img src="../../salesapp/assets/portraits/3.jpg" alt="...">
      </div>
      <p class="locked-user">Machi</p>
      {{flash.output()}}
      <form method="post" action="{{url('lock/')}}" role="form">
        <div class="input-group">
          <input type="password" class="form-control last" id="inputPassword" name="password" placeholder="Enter password">
          <span class="input-group-btn">
            <button type="submit" class="btn btn-primary"><i class="icon wb-unlock" aria-hidden="true"></i>
              <span class="sr-only">unLock</span>
            </button>
          </span>
        </div>
      </form>
      <p>Enter your password to retrieve your session</p>
      <p><a href="{{url('logout/')}}">Or sign in as a different user</a></p>

      <footer class="page-copyright">
        <p>SALESAPP BY creativemeshkernel</p>
        <p>© 2015. All RIGHT RESERVED.</p>
        <div class="social">
          <a href="javascript:void(0)">
            <i class="icon bd-twitter" aria-hidden="true"></i>
          </a>
          <a href="javascript:void(0)">
            <i class="icon bd-facebook" aria-hidden="true"></i>
          </a>
          <a href="javascript:void(0)">
            <i class="icon bd-dribbble" aria-hidden="true"></i>
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
