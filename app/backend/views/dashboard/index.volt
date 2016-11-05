{% block content %}
<div class="page-content container-fluid">
    <div class="row" data-by-row="true" data-plugin="matchHeight">
        <div class="col-xlg-3 col-lg-4 col-md-12">
          <!-- Panel Web Designer -->
          <div class="widget widget-shadow">
            <div class="widget-content widget-radius text-center bg-white padding-40">
              <div class="avatar avatar-100 margin-bottom-20">
                <img alt="" src="../../salesapp/assets/portraits/1.jpg">
              </div>
              <p class="font-size-15 blue-grey-700">{{session.get('auth')['username'] | capitalize}}</p>
              <p class="blue-grey-400 margin-bottom-20">Web Designer</p>
              <p class="margin-bottom-35">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer
                nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.
                </p>
              <ul class="list-inline font-size-18 margin-bottom-35">
                <li>
                  <a href="javascript:void(0)" class="blue-grey-400">
                    <i aria-hidden="true" class="icon bd-twitter"></i>
                  </a>
                </li>
                <li class="margin-left-10">
                  <a href="javascript:void(0)" class="blue-grey-400">
                    <i aria-hidden="true" class="icon bd-facebook"></i>
                  </a>
                </li>
                <li class="margin-left-10">
                  <a href="javascript:void(0)" class="blue-grey-400">
                    <i aria-hidden="true" class="icon bd-dribbble"></i>
                  </a>
                </li>
                <li class="margin-left-10">
                  <a href="javascript:void(0)" class="blue-grey-400">
                    <i aria-hidden="true" class="icon bd-instagram"></i>
                  </a>
                </li>
              </ul>
              <button class="btn btn-primary padding-horizontal-40" type="button">Follow</button>
            </div>
          </div>
          <!-- End Panel Web Designer -->
        </div>
        
        <div class="col-xlg-6 col-lg-8 col-md-12">
          <!-- Panel Traffic -->
          <div id="widgetLinearea" class="widget widget-shadow example-responsive">
            <div style="min-width:480px;" class="widget-content bg-white padding-30">
              <div style="height:calc(100% - 322px);" class="row padding-bottom-20">
                <div class="col-sm-8 col-xs-6">
                  <div class="blue-grey-700">YOUR TRAFFIC VIEWS</div>
                </div>
                <div class="col-sm-4 col-xs-6">
                  <div class="row">
                    <div class="col-xs-6">
                      <div class="counter counter-md">
                        <div class="counter-number-group text-nowrap">
                          <span class="counter-number">76</span>
                          <span class="counter-number-related">%</span>
                        </div>
                        <div class="counter-label blue-grey-400">PC Browser</div>
                      </div>
                    </div>
                    <div class="col-xs-6">
                      <div class="counter counter-md">
                        <div class="counter-number-group text-nowrap">
                          <span class="counter-number">24</span>
                          <span class="counter-number-related">%</span>
                        </div>
                        <div class="counter-label blue-grey-400">Mobile Phone</div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div style="height:270px;" class="ct-chart margin-bottom-30"><svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-line" style="width: 100%; height: 100%;"><g class="ct-grids"><line y1="240" y2="240" x1="40" x2="707" class="ct-grid ct-vertical"/><line y1="180" y2="180" x1="40" x2="707" class="ct-grid ct-vertical"/><line y1="120" y2="120" x1="40" x2="707" class="ct-grid ct-vertical"/><line y1="60" y2="60" x1="40" x2="707" class="ct-grid ct-vertical"/><line y1="0" y2="0" x1="40" x2="707" class="ct-grid ct-vertical"/></g><g><g class="ct-series ct-series-a"><path d="M40,240L40,240C58.528,215,114.111,110,151.167,90C188.222,70,225.278,123,262.333,120C299.389,117,336.444,78,373.5,72C410.556,66,447.611,94,484.667,84C521.722,74,558.778,-14,595.833,12C632.889,38,688.472,202,707,240L707,240Z" class="ct-area" ct:values="[object Object],[object Object],[object Object],[object Object],[object Object],[object Object],[object Object]"/></g><g class="ct-series ct-series-b"><path d="M40,240L40,240C58.528,226,114.111,161,151.167,156C188.222,151,225.278,216,262.333,210C299.389,204,336.444,127,373.5,120C410.556,113,447.611,157,484.667,168C521.722,179,558.778,174,595.833,186C632.889,198,688.472,231,707,240L707,240Z" class="ct-area" ct:values="[object Object],[object Object],[object Object],[object Object],[object Object],[object Object],[object Object]"/></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="26" y="245" width="111.16666666666667" height="20"><span style="width: 111px; height: 20px" class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/1999/xhtml">SUN</span></foreignObject><foreignObject style="overflow: visible;" x="137.16666666666669" y="245" width="111.16666666666667" height="20"><span style="width: 111px; height: 20px" class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/1999/xhtml">MON</span></foreignObject><foreignObject style="overflow: visible;" x="248.33333333333337" y="245" width="111.16666666666666" height="20"><span style="width: 111px; height: 20px" class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/1999/xhtml">TUE</span></foreignObject><foreignObject style="overflow: visible;" x="359.5" y="245" width="111.16666666666669" height="20"><span style="width: 111px; height: 20px" class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/1999/xhtml">WED</span></foreignObject><foreignObject style="overflow: visible;" x="470.6666666666667" y="245" width="111.16666666666669" height="20"><span style="width: 111px; height: 20px" class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/1999/xhtml">THU</span></foreignObject><foreignObject style="overflow: visible;" x="581.8333333333334" y="245" width="111.16666666666663" height="20"><span style="width: 111px; height: 20px" class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/1999/xhtml">FRI</span></foreignObject><foreignObject style="overflow: visible;" x="693" y="245" width="30" height="20"><span style="width: 30px; height: 20px" class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/1999/xhtml">SAT</span></foreignObject><foreignObject style="overflow: visible;" y="210" x="-10" height="30" width="30"><span style="height: 30px; width: 30px" class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/1999/xhtml">0</span></foreignObject><foreignObject style="overflow: visible;" y="150" x="-10" height="30" width="30"><span style="height: 30px; width: 30px" class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/1999/xhtml">1</span></foreignObject><foreignObject style="overflow: visible;" y="90" x="-10" height="30" width="30"><span style="height: 30px; width: 30px" class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/1999/xhtml">2</span></foreignObject><foreignObject style="overflow: visible;" y="30" x="-10" height="30" width="30"><span style="height: 30px; width: 30px" class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/1999/xhtml">3</span></foreignObject><foreignObject style="overflow: visible;" y="-30" x="-10" height="30" width="30"><span style="height: 30px; width: 30px" class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/1999/xhtml">4</span></foreignObject></g></svg></div>
              <ul class="list-inline text-center margin-bottom-0">
                <li>
                  <i aria-hidden="true" class="icon wb-large-point blue-200 margin-right-10"></i>                  PC BROWSER
                </li>
                <li class="margin-left-35">
                  <i aria-hidden="true" class="icon wb-large-point teal-200 margin-right-10"></i>                  MOBILE PHONE
                </li>
              </ul>
            </div>
          </div>
          <!-- End Panel Traffic -->
        </div>
        
        <div class="col-xlg-3 col-md-12">
          <div class="row height-full">
            <div style="height:50%;" class="col-xlg-12 col-md-6">
              <!-- Panel Overall Sales -->
              <div class="widget widget-shadow">
                <div class="widget-content widget-radius padding-30 bg-blue-600 white">
                  <div class="counter counter-lg counter-inverse text-left">
                    <div class="counter-label margin-bottom-20">
                      <div>OVERALL SALES</div>
                      <div class="blue-200">Lorem ipsum dolor sit amet</div>
                    </div>
                    <div class="counter-number-group margin-bottom-15">
                      <span class="counter-number-related">$</span>
                      <span class="counter-number">14,000</span>
                    </div>
                    <div class="counter-label">
                      <div class="progress progress-xs margin-bottom-10 bg-blue-800">
                        <div role="progressbar" aria-valuenow="42" aria-valuemin="0" aria-valuemax="100" style="width: 42%" class="progress-bar progress-bar-info bg-white">
                          <span class="sr-only">42%</span>
                        </div>
                      </div>
                      <div class="counter counter-sm text-left">
                        <div class="counter-number-group">
                          <span class="counter-number font-size-14">42%</span>
                          <span class="counter-number-related font-size-14">HIGHER THAN LAST MONTH</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- End Panel Overall Sales -->
            </div>

            <div style="height:50%;" class="col-xlg-12 col-md-6">
              <!-- Panel Today's Sales -->
              <div class="widget widget-shadow">
                <div class="widget-content widget-radius padding-30 bg-red-600 white">
                  <div class="counter counter-lg counter-inverse text-left">
                    <div class="counter-label margin-bottom-20">
                      <div>TODAY'S SALES</div>
                      <div class="blue-200">Lorem ipsum dolor sit amet</div>
                    </div>
                    <div class="counter-number-group margin-bottom-10">
                      <span class="counter-number-related">$</span>
                      <span class="counter-number">41,160</span>
                    </div>
                    <div class="counter-label">
                      <div class="progress progress-xs margin-bottom-10 bg-red-800">
                        <div role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%" class="progress-bar progress-bar-info bg-white">
                          <span class="sr-only">70%</span>
                        </div>
                      </div>
                      <div class="counter counter-sm text-left">
                        <div class="counter-number-group">
                          <span class="counter-number font-size-14">70%</span>
                          <span class="counter-number-related font-size-14">HIGHER THAN LAST MONTH</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- End Panel Today's Sales -->
            </div>
          </div>
        </div>
    </div>
</div>
{% endblock %}