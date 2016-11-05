{% extends "templates/base.volt" %}

{% block head %}{% endblock %}

{% block content %}
<!-- Panel Basic -->
      <div class="panel">
        <header class="panel-heading">
          <div class="panel-actions"></div>
          <h3 class="panel-title"><strong>Manage Products</strong> <button class='btn btn-primary'>Add To Product</button></h3>
        </header>
        <div class="panel-body">
          <table class="table table-hover dataTable table-striped width-full" data-plugin="dataTable" id="examplePageHeader">
            <thead>
              <tr>
                <th>Title</th>
                <th>Category</th>
                <th>Shop(s)</th>
                <th>Sales Price</th>
                <th>Image(s)</th>
                <th>Action(s)</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <th>Title</th>
                <th>Category</th>
                <th>Shop(s)</th>
                <th>Sales Price</th>
                <th>Image(s)</th>
                <th>Action(s)</th>
              </tr>
            </tfoot>
            
          </table>
        </div>
      </div>
      <!-- End Panel Basic -->
{% endblock %}
