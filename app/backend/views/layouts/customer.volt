{% extends "templates/base.volt" %}

{% block head %}
    
{% endblock %}

{% block content %}
<!-- Example With Stats -->
          <div class="example-wrap">
            <div class="example example-well">
              <div class="page-header">
                <h1 class="page-title">Customer(s)</h1>
                <ol class="breadcrumb">
                  <li><a href="../index.html">Home</a></li>
                  <li class="active">You are Here</li>
                </ol>
                <div class="page-header-actions">
                  <div class="row no-space width-250 hidden-xs">
                    <div class="col-xs-4">
                      <div class="counter">
                        <span class="counter-number font-weight-medium">8371</span>
                        <div class="counter-label">Purchases</div>
                      </div>
                    </div>
                    <div class="col-xs-4">
                      <div class="counter">
                        <span class="counter-number font-weight-medium">1024</span>
                        <div class="counter-label">Members</div>
                      </div>
                    </div>
                    <div class="col-xs-4">
                      <div class="counter">
                        <span class="counter-number font-weight-medium">$38,823</span>
                        <div class="counter-label">Today Profit</div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- End Example With Stats -->

{{this.getContent()}}

{% endblock %}