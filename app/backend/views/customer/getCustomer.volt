{% extends "templates/base.volt" %}

{% block head %}{% endblock %}

{% block content %}
<!-- Panel Basic -->
      <div class="panel">
        <header class="panel-heading">
          <div class="panel-actions"></div>
          <h3 class="panel-title"><strong>Manage Customers</strong></h3>
        </header>
        <div class="panel-body">
          <table class="table table-hover dataTable table-striped width-full" data-plugin="dataTable" id="getCustomerTable">
            <thead>
              <tr>
                <th>First Name</th>
                <th>Surname</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Action(s)</th>
              </tr>
            </thead>
            {% for keys,values in customers %}
            <tbody>
              <tr>
                <td>{{values.firstname | capitalize}}</td>
                <td>{{values.lastname | capitalize}}</td>
                <td>{{values.email}}</td>
                <th>{{values.phonenumber}}</td>
                <td><button class="btn btn-primary btn-sm">View</button></td>
              </tr>
            </tbody>
            {% endfor %}
            <tfoot>
              <tr>
                <th>First Name</th>
                <th>Surname</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Action(s)</th>
              </tr>
            </tfoot>
            
          </table>
        </div>
      </div>
      <!-- End Panel Basic -->
{% endblock %}

