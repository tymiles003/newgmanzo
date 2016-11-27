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
          <li class="dropdown dropdown-fw dropdown-mega">
            <a role="button" data-animation="slide-bottom" aria-expanded="false" href="#" data-toggle="dropdown" class="dropdown-toggle">Mega <i aria-hidden="true" class="icon wb-chevron-down-mini"></i></a>
            <ul role="menu" class="dropdown-menu">
              <li role="presentation">
                <div class="mega-content">
                  <div class="row">
                    <div class="col-sm-4">
                      <h5>UI Kit</h5>
                      <ul class="blocks-2">
                        <li class="mega-menu margin-0">
                          <ul class="list-icons">
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="#">Animation</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="#">Buttons</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="#">Colors</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="#">Dropdowns</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="#">Icons</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="#">Lightbox</a>
                            </li>
                          </ul>
                        </li>
                        <li class="mega-menu margin-0">
                          <ul class="list-icons">
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="#">Modals</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="#">Panels</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="#">Overlay</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="#">Tooltips</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="#">Scrollable</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="#">Typography</a>
                            </li>
                          </ul>
                        </li>
                      </ul>
                    </div>
                    <div class="col-sm-4">
                      <h5>Media
                        <span class="badge badge-success">4</span>
                      </h5>
                      <ul class="blocks-3">
                        <li>
                          <a href="javascript:void(0)" class="thumbnail margin-0">
                            <img alt="..." src="{{url('assets/photos/placeholder.png')}}" class="width-full">
                          </a>
                        </li>
                        <li>
                          <a href="javascript:void(0)" class="thumbnail margin-0">
                            <img alt="..." src="../../assets/photos/placeholder.png" class="width-full">
                          </a>
                        </li>
                        <li>
                          <a href="javascript:void(0)" class="thumbnail margin-0">
                            <img alt="..." src="../../assets/photos/placeholder.png" class="width-full">
                          </a>
                        </li>
                        <li>
                          <a href="javascript:void(0)" class="thumbnail margin-0">
                            <img alt="..." src="../../assets/photos/placeholder.png" class="width-full">
                          </a>
                        </li>
                        <li>
                          <a href="javascript:void(0)" class="thumbnail margin-0">
                            <img alt="..." src="../../assets/photos/placeholder.png" class="width-full">
                          </a>
                        </li>
                        <li>
                          <a href="javascript:void(0)" class="thumbnail margin-0">
                            <img alt="..." src="../../assets/photos/placeholder.png" class="width-full">
                          </a>
                        </li>
                      </ul>
                    </div>
                    <div class="col-sm-4">
                      <h5 class="margin-bottom-0">Accordion</h5>
                      <!-- Accordion -->
                      <div role="tablist" aria-multiselectable="true" id="siteMegaAccordion" class="panel-group panel-group-simple">
                        <div class="panel">
                          <div role="tab" id="siteMegaAccordionHeadingOne" class="panel-heading">
                            <a aria-controls="siteMegaCollapseOne" aria-expanded="false" data-parent="#siteMegaAccordion" href="#siteMegaCollapseOne" data-toggle="collapse" class="panel-title">
                                Collapsible Group Item #1
                              </a>
                          </div>
                          <div role="tabpanel" aria-labelledby="siteMegaAccordionHeadingOne" id="siteMegaCollapseOne" class="panel-collapse collapse">
                            <div class="panel-body">
                              De moveat laudatur vestra parum doloribus labitur sentire partes, eripuit praesenti
                              congressus ostendit alienae, voluptati ornateque
                              accusamus clamat reperietur convicia albucius.
                            </div>
                          </div>
                        </div>
                        <div class="panel">
                          <div role="tab" id="siteMegaAccordionHeadingTwo" class="panel-heading">
                            <a aria-controls="siteMegaCollapseTwo" aria-expanded="false" data-parent="#siteMegaAccordion" href="#siteMegaCollapseTwo" data-toggle="collapse" class="panel-title collapsed">
                                Collapsible Group Item #2
                              </a>
                          </div>
                          <div role="tabpanel" aria-labelledby="siteMegaAccordionHeadingTwo" id="siteMegaCollapseTwo" class="panel-collapse collapse">
                            <div class="panel-body">
                              Praestabiliorem. Pellat excruciant legantur ullum leniter vacare foris voluptate
                              loco ignavi, credo videretur multoque choro fatemur
                              mortis animus adoptionem, bello statuat expediunt
                              naturales.
                            </div>
                          </div>
                        </div>

                        <div class="panel">
                          <div role="tab" id="siteMegaAccordionHeadingThree" class="panel-heading">
                            <a aria-controls="siteMegaCollapseThree" aria-expanded="false" data-parent="#siteMegaAccordion" href="#siteMegaCollapseThree" data-toggle="collapse" class="panel-title collapsed">
                                Collapsible Group Item #3
                              </a>
                          </div>
                          <div role="tabpanel" aria-labelledby="siteMegaAccordionHeadingThree" id="siteMegaCollapseThree" class="panel-collapse collapse">
                            <div class="panel-body">
                              Horum, antiquitate perciperet d conspectum locus obruamus animumque perspici probabis
                              suscipere. Desiderat magnum, contenta poena desiderant
                              concederetur menandri damna disputandum corporum.
                            </div>
                          </div>
                        </div>
                      </div>
                      <!-- End Accordion -->
                    </div>
                  </div>
                </div>
              </li>
            </ul>
          </li>
        </ul>
        <!-- End Navbar Toolbar -->

        <!-- Navbar Toolbar Right -->
        <ul class="nav navbar-toolbar navbar-right navbar-toolbar-right">
          <li class="dropdown">
            <a role="button" aria-expanded="false" data-animation="slide-bottom" href="javascript:void(0)" data-toggle="dropdown" class="dropdown-toggle">
              <span class="flag-icon flag-icon-us"></span>
            </a>
            <ul role="menu" class="dropdown-menu">
              <li role="presentation">
                <a role="menuitem" href="javascript:void(0)">
                  <span class="flag-icon flag-icon-gb"></span> English</a>
              </li>
              <li role="presentation">
                <a role="menuitem" href="javascript:void(0)">
                  <span class="flag-icon flag-icon-fr"></span> French</a>
              </li>
              <li role="presentation">
                <a role="menuitem" href="javascript:void(0)">
                  <span class="flag-icon flag-icon-cn"></span> Chinese</a>
              </li>
              <li role="presentation">
                <a role="menuitem" href="javascript:void(0)">
                  <span class="flag-icon flag-icon-de"></span> German</a>
              </li>
              <li role="presentation">
                <a role="menuitem" href="javascript:void(0)">
                  <span class="flag-icon flag-icon-nl"></span> Dutch</a>
              </li>
            </ul>
          </li>
          <li class="dropdown">
            <a role="button" data-animation="slide-bottom" aria-expanded="false" href="#" data-toggle="dropdown" class="navbar-avatar dropdown-toggle">
              <span class="avatar avatar-online">
                <img alt="..." src="../../assets/portraits/5.jpg">
                <i></i>
              </span>
            </a>
            <ul role="menu" class="dropdown-menu">
              <li role="presentation">
                <a role="menuitem" href="javascript:void(0)"><i aria-hidden="true" class="icon wb-user"></i> Profile</a>
              </li>
              <li role="presentation">
                <a role="menuitem" href="javascript:void(0)"><i aria-hidden="true" class="icon wb-payment"></i> Billing</a>
              </li>
              <li role="presentation">
                <a role="menuitem" href="javascript:void(0)"><i aria-hidden="true" class="icon wb-settings"></i> Settings</a>
              </li>
              <li role="presentation" class="divider"></li>
              <li role="presentation">
                <a role="menuitem" href="javascript:void(0)"><i aria-hidden="true" class="icon wb-power"></i> Logout</a>
              </li>
            </ul>
          </li>
          <li class="dropdown">
            <a role="button" data-animation="slide-bottom" aria-expanded="false" title="Notifications" href="javascript:void(0)" data-toggle="dropdown">
              <i aria-hidden="true" class="icon wb-bell"></i>
              <span class="badge badge-danger up">5</span>
            </a>
            <ul role="menu" class="dropdown-menu dropdown-menu-right dropdown-menu-media">
              <li role="presentation" class="dropdown-menu-header">
                <h5>NOTIFICATIONS</h5>
                <span class="label label-round label-danger">New 5</span>
              </li>

              <li role="presentation" class="list-group">
                <div data-role="container">
                  <div data-role="content">
                    <a role="menuitem" href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left padding-right-10">
                          <i aria-hidden="true" class="icon wb-order bg-red-600 white icon-circle"></i>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading">A new order has been placed</h6>
                          <time datetime="2015-06-12T20:50:48+08:00" class="media-meta">5 hours ago</time>
                        </div>
                      </div>
                    </a>
                    <a role="menuitem" href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left padding-right-10">
                          <i aria-hidden="true" class="icon wb-user bg-green-600 white icon-circle"></i>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading">Completed the task</h6>
                          <time datetime="2015-06-11T18:29:20+08:00" class="media-meta">2 days ago</time>
                        </div>
                      </div>
                    </a>
                    <a role="menuitem" href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left padding-right-10">
                          <i aria-hidden="true" class="icon wb-settings bg-red-600 white icon-circle"></i>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading">Settings updated</h6>
                          <time datetime="2015-06-11T14:05:00+08:00" class="media-meta">2 days ago</time>
                        </div>
                      </div>
                    </a>
                    <a role="menuitem" href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left padding-right-10">
                          <i aria-hidden="true" class="icon wb-calendar bg-blue-600 white icon-circle"></i>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading">Event started</h6>
                          <time datetime="2015-06-10T13:50:18+08:00" class="media-meta">3 days ago</time>
                        </div>
                      </div>
                    </a>
                    <a role="menuitem" href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left padding-right-10">
                          <i aria-hidden="true" class="icon wb-chat bg-orange-600 white icon-circle"></i>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading">Message received</h6>
                          <time datetime="2015-06-10T12:34:48+08:00" class="media-meta">3 days ago</time>
                        </div>
                      </div>
                    </a>
                  </div>
                </div>
              </li>
              <li role="presentation" class="dropdown-menu-footer">
                <a role="button" href="javascript:void(0)" class="dropdown-menu-footer-btn">
                  <i aria-hidden="true" class="icon wb-settings"></i>
                </a>
                <a role="menuitem" href="javascript:void(0)">
                    All notifications
                  </a>
              </li>
            </ul>
          </li>
          <li class="dropdown">
            <a role="button" data-animation="slide-bottom" aria-expanded="false" title="Messages" href="javascript:void(0)" data-toggle="dropdown">
              <i aria-hidden="true" class="icon wb-envelope"></i>
              <span class="badge badge-info up">3</span>
            </a>
            <ul role="menu" class="dropdown-menu dropdown-menu-right dropdown-menu-media">
              <li role="presentation" class="dropdown-menu-header">
                <h5>MESSAGES</h5>
                <span class="label label-round label-info">New 3</span>
              </li>

              <li role="presentation" class="list-group">
                <div data-role="container">
                  <div data-role="content">
                    <a role="menuitem" href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left padding-right-10">
                          <span class="avatar avatar-sm avatar-online">
                            <img alt="..." src="../../assets/portraits/2.jpg">
                            <i></i>
                          </span>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading">Mary Adams</h6>
                          <div class="media-meta">
                            <time datetime="2015-06-17T20:22:05+08:00">30 minutes ago</time>
                          </div>
                          <div class="media-detail">Anyways, i would like just do it</div>
                        </div>
                      </div>
                    </a>
                    <a role="menuitem" href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left padding-right-10">
                          <span class="avatar avatar-sm avatar-off">
                            <img alt="..." src="../../assets/portraits/3.jpg">
                            <i></i>
                          </span>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading">Caleb Richards</h6>
                          <div class="media-meta">
                            <time datetime="2015-06-17T12:30:30+08:00">12 hours ago</time>
                          </div>
                          <div class="media-detail">I checheck the document. But there seems</div>
                        </div>
                      </div>
                    </a>
                    <a role="menuitem" href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left padding-right-10">
                          <span class="avatar avatar-sm avatar-busy">
                            <img alt="..." src="../../assets/portraits/4.jpg">
                            <i></i>
                          </span>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading">June Lane</h6>
                          <div class="media-meta">
                            <time datetime="2015-06-16T18:38:40+08:00">2 days ago</time>
                          </div>
                          <div class="media-detail">Lorem ipsum Id consectetur et minim</div>
                        </div>
                      </div>
                    </a>
                    <a role="menuitem" href="javascript:void(0)" class="list-group-item">
                      <div class="media">
                        <div class="media-left padding-right-10">
                          <span class="avatar avatar-sm avatar-away">
                            <img alt="..." src="../../assets/portraits/5.jpg">
                            <i></i>
                          </span>
                        </div>
                        <div class="media-body">
                          <h6 class="media-heading">Edward Fletcher</h6>
                          <div class="media-meta">
                            <time datetime="2015-06-15T20:34:48+08:00">3 days ago</time>
                          </div>
                          <div class="media-detail">Dolor et irure cupidatat commodo nostrud nostrud.</div>
                        </div>
                      </div>
                    </a>
                  </div>
                </div>
              </li>
              <li role="presentation" class="dropdown-menu-footer">
                <a role="button" href="javascript:void(0)" class="dropdown-menu-footer-btn">
                  <i aria-hidden="true" class="icon wb-settings"></i>
                </a>
                <a role="menuitem" href="javascript:void(0)">
                    See all messages
                  </a>
              </li>
            </ul>
          </li>
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
                  <a data-slug="layout-grids" href="#" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Registration Scaffolding</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="layout-headers" href="{{url('backend/customer')}}" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Manage Customer(s)</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="layout-bordered-header" href="#" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Generate Phone Number(s)</span>
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
                <li class="site-menu-item">
                  <a data-slug="page-faq" href="{{url('backend/products/category')}}" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Product Categories</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="page-register" href="{{url('backend/products/show')}}" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Create Products</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="page-login" href="{{url('backend/products/subcategory')}}" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Create Sub Category(ies)</span>
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
              <a data-slug="advanced" href="javascript:void(0)">
                <i aria-hidden="true" class="site-menu-icon wb-hammer"></i>
                <span class="site-menu-title">Accounts</span>
                <span class="site-menu-arrow"></span>
              </a>
              <ul class="site-menu-sub">
                <li class="site-menu-item">
                  <a data-slug="advanced-animation" href="#" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Trafic Chart</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="advanced-lightbox" href="#" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Daily Account(s)</span>
                  </a>
                </li>
                <li class="site-menu-item hidden-xs">
                  <a data-slug="advanced-tour" href="javascript:void(0)">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Manage Account(s)</span>
                  </a>
                </li>
                <li class="site-menu-item active">
                  <a data-slug="advanced-treeview" href="#" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Active | Manage Staff</span>
                  </a>
                </li>
                
              </ul>
            </li>
            
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
