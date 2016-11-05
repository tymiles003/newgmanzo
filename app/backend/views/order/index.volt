{% extends "templates/base.volt" %}

{% block head %}
<style>
.example-modal-sidebar .center {
    top: 0;
    right: 5px;
    left: auto;
    -webkit-transform: none;
    -ms-transform: none;
    -o-transform: none;
    transform: none;
  }

.modal-sidebar{
    width:500px;
}
</style>
{% endblock %}

{% block content %}
<div class="panel">
        <header class="panel-heading">
          <div class="panel-actions"></div>
          <h3 class="panel-title"><strong>ORDER</strong></h3>
        </header>
        <div class="panel-body">
          <table class="table table-hover dataTable table-striped width-full" data-plugin="dataTable" id="exampleOrder">
            <thead>
              <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email(s)</th>
                <th>Phone Number</th>
                <th>Address</th>
                <th>Transaction(s)</th>
                <th>Date(s)</th>
                <th>Action(s)</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email(s)</th>
                <th>Phone Number</th>
                <th>Address</th>
                <th>Transaction(s)</th>
                <th>Date(s)</th>
                <th>Action(s)</th>
              </tr>
            </tfoot>
            
          </table>
        </div>
      </div>

<!-- Modal -->
<div class="modal fade" id="examplePositionSidebar" aria-hidden="true" aria-labelledby="examplePositionSidebar"
role="dialog" tabindex="-1">
  <div class="modal-dialog modal-sidebar modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
        <h4 class="modal-title">Transaction Number(<span></span>)</h4>
      </div>
      <div class="modal-body">
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- End Modal -->
{% endblock %}