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

<body class="site-menubar-unfold">
  <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
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
        <img title="Remark" src="../../assets/images/logo.png" class="navbar-brand-logo">
        <span class="navbar-brand-text"> Remark</span>
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
                              <a href="../advanced/animation.html">Animation</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="../uikit/buttons.html">Buttons</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="../uikit/colors.html">Colors</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="../uikit/dropdowns.html">Dropdowns</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="../uikit/icons.html">Icons</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="../advanced/lightbox.html">Lightbox</a>
                            </li>
                          </ul>
                        </li>
                        <li class="mega-menu margin-0">
                          <ul class="list-icons">
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="../uikit/modals.html">Modals</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="../uikit/panels.html">Panels</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="../structure/overlay.html">Overlay</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="../uikit/tooltip-popover.html ">Tooltips</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="../advanced/scrollable.html">Scrollable</a>
                            </li>
                            <li><i aria-hidden="true" class="wb-chevron-right-mini"></i>
                              <a href="../uikit/typography.html">Typography</a>
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
          <li id="toggleChat">
            <a data-url="../site-sidebar.tpl" title="Chat" href="javascript:void(0)" data-toggle="site-sidebar">
              <i aria-hidden="true" class="icon wb-chat"></i>
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
    <div class="site-menubar-body scrollable scrollable-inverse is-enabled scrollable-vertical" style="position: relative;">
      <div class="scrollable-container" style="height: 526px; width: 277px;">
        <div class="scrollable-content" style="width: 260px;">
          <ul class="site-menu">
            <li class="site-menu-category">General</li>
            <li class="site-menu-item has-sub">
              <a data-slug="dashboard" href="javascript:void(0)">
                <i aria-hidden="true" class="site-menu-icon wb-dashboard"></i>
                <span class="site-menu-title">Dashboard</span>
                <div class="site-menu-badge">
                  <span class="badge badge-success">2</span>
                </div>
              </a>
              <ul class="site-menu-sub">
                <li class="site-menu-item">
                  <a data-slug="dashboard-v1" href="../index.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Dashboard v1</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="dashboard-v2" href="../dashboard/v2.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Dashboard v2</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="site-menu-item has-sub active open">
              <a data-slug="layout" href="javascript:void(0)">
                <i aria-hidden="true" class="site-menu-icon wb-layout"></i>
                <span class="site-menu-title">Layouts</span>
                <span class="site-menu-arrow"></span>
              </a>
              <ul class="site-menu-sub">
                <li class="site-menu-item">
                  <a data-slug="layout-grids" href="grids.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Grid Scaffolding</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="layout-headers" href="headers.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Different Headers</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="layout-bordered-header" href="bordered-header.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Bordered Header</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="layout-two-columns" href="two-columns.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Two Columns</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="layout-boxed" href="boxed.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Boxed Layout</span>
                  </a>
                </li>
                <li class="site-menu-item active">
                  <a data-slug="layout-blank" href="blank.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Blank Page</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="layout-menu-collapsed" href="menu-collapsed.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Menu Collapsed</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="layout-menu-expended" href="menu-expended.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Menu Expended</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="layout-menubar-flipped" href="menubar-flipped.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Menubar Flipped</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="site-menu-item has-sub">
              <a data-slug="page" href="javascript:void(0)">
                <i aria-hidden="true" class="site-menu-icon wb-file"></i>
                <span class="site-menu-title">Pages</span>
                <span class="site-menu-arrow"></span>
              </a>
              <ul class="site-menu-sub">
                <li class="site-menu-item has-sub">
                  <a data-slug="" href="javascript:void(0)">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Errors</span>
                    <span class="site-menu-arrow"></span>
                  </a>
                  <ul class="site-menu-sub">
                    <li class="site-menu-item">
                      <a data-slug="page-error-400" href="../pages/400.html" class="animsition-link">
                        <i aria-hidden="true" class="site-menu-icon "></i>
                        <span class="site-menu-title">400</span>
                      </a>
                    </li>
                    <li class="site-menu-item">
                      <a data-slug="page-error-403" href="../pages/403.html" class="animsition-link">
                        <i aria-hidden="true" class="site-menu-icon "></i>
                        <span class="site-menu-title">403</span>
                      </a>
                    </li>
                    <li class="site-menu-item">
                      <a data-slug="page-error-404" href="../pages/404.html" class="animsition-link">
                        <i aria-hidden="true" class="site-menu-icon "></i>
                        <span class="site-menu-title">404</span>
                      </a>
                    </li>
                    <li class="site-menu-item">
                      <a data-slug="page-error-500" href="../pages/500.html" class="animsition-link">
                        <i aria-hidden="true" class="site-menu-icon "></i>
                        <span class="site-menu-title">500</span>
                      </a>
                    </li>
                    <li class="site-menu-item">
                      <a data-slug="page-error-503" href="../pages/503.html" class="animsition-link">
                        <i aria-hidden="true" class="site-menu-icon "></i>
                        <span class="site-menu-title">503</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="site-menu-item">
                  <a data-slug="page-faq" href="../pages/faq.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">FAQ</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="page-register" href="../pages/register.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Register</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="page-login" href="../pages/login.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Login</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="page-lockscreen" href="../pages/lockscreen.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Lockscreen</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="page-forgot-password" href="../pages/forgot-password.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Forgot Password</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="page-maintenance" href="../pages/maintenance.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Maintenance</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="page-email" href="../pages/email.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Email</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="page-invoice" href="../pages/invoice.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Invoice</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="page-profile" href="../pages/profile.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Profile</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="page-search-result" href="../pages/search-result.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Search Result</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="page-user" href="../pages/user.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">User</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="page-code-editor" href="../pages/code-editor.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Code Editor</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="page-gallery" href="../pages/gallery.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Gallery</span>
                  </a>
                </li>
                <li class="site-menu-item has-sub">
                  <a data-slug="page-map" href="javascript:void(0)">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Maps</span>
                    <span class="site-menu-arrow"></span>
                  </a>
                  <ul class="site-menu-sub">
                    <li class="site-menu-item">
                      <a data-slug="page-map-google" href="../pages/map-google.html" class="animsition-link">
                        <i aria-hidden="true" class="site-menu-icon "></i>
                        <span class="site-menu-title">Google Maps</span>
                      </a>
                    </li>
                    <li class="site-menu-item">
                      <a data-slug="page-map-vector" href="../pages/map-vector.html" class="animsition-link">
                        <i aria-hidden="true" class="site-menu-icon "></i>
                        <span class="site-menu-title">Vector Maps</span>
                      </a>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
            <li class="site-menu-category">Elements</li>
            <li class="site-menu-item has-sub">
              <a data-slug="uikit" href="javascript:void(0)">
                <i aria-hidden="true" class="site-menu-icon wb-bookmark"></i>
                <span class="site-menu-title">Basic UI</span>
                <span class="site-menu-arrow"></span>
              </a>
              <ul class="site-menu-sub">
                <li class="site-menu-item">
                  <a data-slug="uikit-buttons" href="../uikit/buttons.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Buttons</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="uikit-colors" href="../uikit/colors.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Colors</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="uikit-dropdowns" href="../uikit/dropdowns.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Dropdowns</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="uikit-list" href="../uikit/list.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">List</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="uikit-icons" href="../uikit/icons.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Icons</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="uikit-images" href="../uikit/images.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Images</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="uikit-carousel" href="../uikit/carousel.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Carousel</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="uikit-modals" href="../uikit/modals.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Modals</span>
                  </a>
                </li>
                <li class="site-menu-item has-sub">
                  <a data-slug="uikit-panel" href="javascript:void(0)">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Panel</span>
                    <span class="site-menu-arrow"></span>
                  </a>
                  <ul class="site-menu-sub">
                    <li class="site-menu-item">
                      <a data-slug="uikit-panel-structure" href="../uikit/panel-structure.html" class="animsition-link">
                        <i aria-hidden="true" class="site-menu-icon "></i>
                        <span class="site-menu-title">Panel Structure</span>
                      </a>
                    </li>
                    <li class="site-menu-item">
                      <a data-slug="uikit-panel-actions" href="../uikit/panel-actions.html" class="animsition-link">
                        <i aria-hidden="true" class="site-menu-icon "></i>
                        <span class="site-menu-title">Panel Actions</span>
                      </a>
                    </li>
                    <li class="site-menu-item">
                      <a data-slug="uikit-panel-portlets" href="../uikit/panel-portlets.html" class="animsition-link">
                        <i aria-hidden="true" class="site-menu-icon "></i>
                        <span class="site-menu-title">Panel Portlets</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="site-menu-item">
                  <a data-slug="uikit-progress-bars" href="../uikit/progress-bars.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Progress Bars</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="uikit-badges-labels" href="../uikit/badges-labels.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Badges &amp; Labels</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="uikit-tooltip-popover" href="../uikit/tooltip-popover.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Tooltip &amp; Popover</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="uikit-tabs-accordions" href="../uikit/tabs-accordions.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Tabs &amp; Accordions</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="uikit-typography" href="../uikit/typography.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Typography</span>
                    <div class="site-menu-badge">
                      <span class="badge badge-primary">5</span>
                    </div>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="uikit-utilities" href="../uikit/utilities.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Utilties</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="site-menu-item has-sub">
              <a data-slug="advanced" href="javascript:void(0)">
                <i aria-hidden="true" class="site-menu-icon wb-hammer"></i>
                <span class="site-menu-title">Advanced UI</span>
                <span class="site-menu-arrow"></span>
              </a>
              <ul class="site-menu-sub">
                <li class="site-menu-item">
                  <a data-slug="advanced-animation" href="../advanced/animation.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Animation</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="advanced-lightbox" href="../advanced/lightbox.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Lightbox</span>
                  </a>
                </li>
                <li class="site-menu-item hidden-xs">
                  <a data-slug="advanced-tour" href="javascript:void(0)">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Tour</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="advanced-treeview" href="../advanced/treeview.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Treeview</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="advanced-rating" href="../advanced/rating.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Rating</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="advanced-alertify" href="../advanced/alertify.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Alertify</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="advanced-toastr" href="../advanced/toastr.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Toastr</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="advanced-context-menu" href="../advanced/context-menu.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Context Menu</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="advanced-bootbox-sweetalert" href="../advanced/bootbox-sweetalert.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Bootbox &amp; Sweetalert</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="advanced-sortable-nestable" href="../advanced/sortable-nestable.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Sortable &amp; Nestable</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="advanced-scrollable" href="../advanced/scrollable.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Scrollable</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="advanced-highlight" href="../advanced/highlight.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Highlight</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="advanced-masonry" href="../advanced/masonry.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Masonry</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="advanced-maps-vector" href="../advanced/maps-vector.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Vector Maps</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="advanced-maps-google" href="../advanced/maps-google.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Google Maps</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="site-menu-item has-sub">
              <a data-slug="structure" href="javascript:void(0)">
                <i aria-hidden="true" class="site-menu-icon wb-plugin"></i>
                <span class="site-menu-title">Structure</span>
                <span class="site-menu-arrow"></span>
              </a>
              <ul class="site-menu-sub">
                <li class="site-menu-item">
                  <a data-slug="structure-alerts" href="../structure/alerts.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Alerts</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="structure-blockquotes" href="../structure/blockquotes.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Blockquotes</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="structure-breadcrumbs" href="../structure/breadcrumbs.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Breadcrumbs</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="structure-cover" href="../structure/cover.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Cover</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="structure-overlay" href="../structure/overlay.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Overlay</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="structure-comments" href="../structure/comments.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Comments</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="structure-media" href="../structure/media.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Media</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="structure-nav" href="../structure/nav.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Nav</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="structure-navbars" href="../structure/navbars.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Navbars</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="structure-pagination" href="../structure/pagination.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Pagination</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="structure-pricing-tables" href="../structure/pricing-tables.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Pricing Tables</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="structure-testimonials" href="../structure/testimonials.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Testimonials</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="structure-ribbon" href="../structure/ribbon.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Ribbon</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="structure-step" href="../structure/step.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Step</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="structure-chat" href="../structure/chat.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Chat</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="structure-timeline" href="../structure/timeline.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Timeline</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="structure-timeline-simple" href="../structure/timeline-simple.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Simple Timeline</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="site-menu-item has-sub">
              <a data-slug="widgets" href="javascript:void(0)">
                <i aria-hidden="true" class="site-menu-icon wb-extension"></i>
                <span class="site-menu-title">Widgets</span>
                <span class="site-menu-arrow"></span>
              </a>
              <ul class="site-menu-sub">
                <li class="site-menu-item">
                  <a data-slug="widgets-blog" href="../widgets/blog.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Blog Widgets</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="widgets-data" href="../widgets/data.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Data Widgets</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="widgets-chart" href="../widgets/chart.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Chart Widgets</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="widgets-social" href="../widgets/social.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Social Widgets</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="widgets-statistics" href="../widgets/statistics.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Statistics Widgets</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="widgets-weather" href="../widgets/weather.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Weather Widgets</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="site-menu-item has-sub">
              <a data-slug="forms" href="javascript:void(0)">
                <i aria-hidden="true" class="site-menu-icon wb-library"></i>
                <span class="site-menu-title">Forms</span>
                <span class="site-menu-arrow"></span>
              </a>
              <ul class="site-menu-sub">
                <li class="site-menu-item">
                  <a data-slug="forms-general" href="../forms/general.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">General Elements</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="forms-material" href="../forms/material.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Material Elements</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="forms-advanced" href="../forms/advanced.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Advanced Elements</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="forms-layouts" href="../forms/layouts.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Form Layouts</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="forms-wizard" href="../forms/wizard.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Form Wizard</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="forms-validation" href="../forms/validation.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Form Validation</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="forms-masks" href="../forms/masks.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Form Masks</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="forms-editable" href="../forms/editable.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Form Editable</span>
                  </a>
                </li>
                <li class="site-menu-item has-sub">
                  <a data-slug="forms-editor" href="javascript:void(0)">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Editors</span>
                    <span class="site-menu-arrow"></span>
                  </a>
                  <ul class="site-menu-sub">
                    <li class="site-menu-item">
                      <a data-slug="forms-editor-summernote" href="../forms/editor-summernote.html" class="animsition-link">
                        <i aria-hidden="true" class="site-menu-icon "></i>
                        <span class="site-menu-title">Summernote</span>
                      </a>
                    </li>
                    <li class="site-menu-item">
                      <a data-slug="forms-editor-markdown" href="../forms/editor-markdown.html" class="animsition-link">
                        <i aria-hidden="true" class="site-menu-icon "></i>
                        <span class="site-menu-title">Markdown</span>
                      </a>
                    </li>
                    <li class="site-menu-item">
                      <a data-slug="forms-editor-ace" href="../forms/editor-ace.html" class="animsition-link">
                        <i aria-hidden="true" class="site-menu-icon "></i>
                        <span class="site-menu-title">Ace Editor</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="site-menu-item">
                  <a data-slug="forms-image-cropping" href="../forms/image-cropping.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Image Cropping</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="forms-file-uploads" href="../forms/file-uploads.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">File Uploads</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="site-menu-item has-sub">
              <a data-slug="tables" href="javascript:void(0)">
                <i aria-hidden="true" class="site-menu-icon wb-table"></i>
                <span class="site-menu-title">Tables</span>
                <span class="site-menu-arrow"></span>
              </a>
              <ul class="site-menu-sub">
                <li class="site-menu-item">
                  <a data-slug="tables-basic" href="../tables/basic.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Basic Tables</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="tables-bootstrap" href="../tables/bootstrap.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Bootstrap Tables</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="tables-responsive" href="../tables/responsive.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Responsive Tables</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="tables-datatable" href="../tables/datatable.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Data Tables</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="tables-editable" href="../tables/editable.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Editable Tables</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="tables-foo" href="../tables/footable.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">FooTable</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="tables-floatthead" href="../tables/floatthead.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">floatThead</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="site-menu-item has-sub">
              <a data-slug="chart" href="javascript:void(0)">
                <i aria-hidden="true" class="site-menu-icon wb-pie-chart"></i>
                <span class="site-menu-title">Chart</span>
                <span class="site-menu-arrow"></span>
              </a>
              <ul class="site-menu-sub">
                <li class="site-menu-item">
                  <a data-slug="chart-chartist" href="../charts/chartist.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Chartist.js</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="chart-c3" href="../charts/c3.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">C3</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="chart-chartjs" href="../charts/chartjs.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Chart.js</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="chart-morris" href="../charts/morris.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Morris</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="chart-flot" href="../charts/flot.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Flot</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="chart-sparkline" href="../charts/sparkline.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Sparkline</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="chart-peity" href="../charts/peity.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Peity</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="chart-gauges" href="../charts/gauges.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Gauges</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="chart-pie-progress" href="../charts/pie-progress.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Pie Progress</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="chart-rickshaw" href="../charts/rickshaw.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Rickshaw</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="site-menu-category">Apps</li>
            <li class="site-menu-item has-sub">
              <a data-slug="app" href="javascript:void(0)">
                <i aria-hidden="true" class="site-menu-icon wb-grid-4"></i>
                <span class="site-menu-title">Apps</span>
                <span class="site-menu-arrow"></span>
              </a>
              <ul class="site-menu-sub">
                <li class="site-menu-item">
                  <a data-slug="app-calendar" href="../apps/calendar/calendar.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Calendar</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="app-contacts" href="../apps/contacts/contacts.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Contacts</span>
                  </a>
                </li>
                <li class="site-menu-item has-sub">
                  <a data-slug="app-document" href="javascript:void(0)">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Documents</span>
                    <span class="site-menu-arrow"></span>
                  </a>
                  <ul class="site-menu-sub">
                    <li class="site-menu-item">
                      <a data-slug="app-document-articles" href="../apps/documents/articles.html" class="animsition-link">
                        <i aria-hidden="true" class="site-menu-icon "></i>
                        <span class="site-menu-title">Articles</span>
                      </a>
                    </li>
                    <li class="site-menu-item">
                      <a data-slug="app-document-categories" href="../apps/documents/categories.html" class="animsition-link">
                        <i aria-hidden="true" class="site-menu-icon "></i>
                        <span class="site-menu-title">Categories</span>
                      </a>
                    </li>
                    <li class="site-menu-item">
                      <a data-slug="app-document-article" href="../apps/documents/article.html" class="animsition-link">
                        <i aria-hidden="true" class="site-menu-icon "></i>
                        <span class="site-menu-title">Article</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="site-menu-item">
                  <a data-slug="app-mailbox" href="../apps/mailbox/mailbox.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Mailbox</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="app-projects" href="../apps/projects/projects.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Projects</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="app-forum" href="../apps/forum/forum.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Forum</span>
                  </a>
                </li>
                <li class="site-menu-item">
                  <a data-slug="app-media" href="../apps/media/overview.html" class="animsition-link">
                    <i aria-hidden="true" class="site-menu-icon "></i>
                    <span class="site-menu-title">Media</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="site-menu-category">Angular UI</li>
            <li class="site-menu-item">
              <a data-slug="angular" href="../angular/#/angularui/bootstrap" class="animsition-link">
                <i aria-hidden="true" class="site-menu-icon bd-angular"></i>
                <span class="site-menu-title">Angular UI</span>
                <div class="site-menu-label">
                  <span class="label label-danger label-round">new</span>
                </div>
              </a>
            </li>
          </ul>

          <div class="site-menubar-section">
            <h5>
              Milestone
              <span class="pull-right">30%</span>
            </h5>
            <div class="progress progress-xs">
              <div role="progressbar" style="width: 30%;" class="progress-bar active"></div>
            </div>
            <h5>
              Release
              <span class="pull-right">60%</span>
            </h5>
            <div class="progress progress-xs">
              <div role="progressbar" style="width: 60%;" class="progress-bar progress-bar-warning"></div>
            </div>
          </div>
        </div>
      </div>
    <div class="scrollable-bar scrollable-bar-vertical scrollable-bar-hide" draggable="false"><div class="scrollable-bar-handle" style="height: 199.61px;"></div></div></div>

    <div class="site-menubar-footer">
      <a data-original-title="Settings" data-toggle="tooltip" data-placement="top" class="fold-show" href="javascript: void(0);">
        <span aria-hidden="true" class="icon wb-settings"></span>
      </a>
      <a data-original-title="Lock" data-toggle="tooltip" data-placement="top" href="javascript: void(0);">
        <span aria-hidden="true" class="icon wb-eye-close"></span>
      </a>
      <a data-original-title="Logout" data-toggle="tooltip" data-placement="top" href="javascript: void(0);">
        <span aria-hidden="true" class="icon wb-power"></span>
      </a>
    </div>
  </div>
  <div class="site-gridmenu">
    <ul>
      <li>
        <a href="../apps/mailbox/mailbox.html">
          <i class="icon wb-envelope"></i>
          <span>Mailbox</span>
        </a>
      </li>
      <li>
        <a href="../apps/calendar/calendar.html">
          <i class="icon wb-calendar"></i>
          <span>Calendar</span>
        </a>
      </li>
      <li>
        <a href="../apps/contacts/contacts.html">
          <i class="icon wb-user"></i>
          <span>Contacts</span>
        </a>
      </li>
      <li>
        <a href="../apps/media/overview.html">
          <i class="icon wb-camera"></i>
          <span>Media</span>
        </a>
      </li>
      <li>
        <a href="../apps/documents/categories.html">
          <i class="icon wb-order"></i>
          <span>Documents</span>
        </a>
      </li>
      <li>
        <a href="../apps/projects/projects.html">
          <i class="icon wb-image"></i>
          <span>Project</span>
        </a>
      </li>
      <li>
        <a href="../apps/forum/forum.html">
          <i class="icon wb-chat-group"></i>
          <span>Forum</span>
        </a>
      </li>
      <li>
        <a href="../index.html">
          <i class="icon wb-dashboard"></i>
          <span>Dashboard</span>
        </a>
      </li>
    </ul>
  </div>


  <!-- Page -->
  <div class="page">
    <div class="page-content">
      <h2>Blank</h2>
      <p>Page content goes here</p>
    </div>
  </div>
  <!-- End Page -->


  <!-- Footer -->
  <footer class="site-footer">
    <span class="site-footer-legal">&copy; 2015 Remark</span>
    <div class="site-footer-right">
      Crafted with <i class="red-600 wb wb-heart"></i> by <a href="http://themeforest.net/user/amazingSurge">amazingSurge</a>
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
