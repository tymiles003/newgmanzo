{% extends "templates/base.volt" %}

{% block head %}
<style type="text/css">
/**
 * Extra large button extensions. Extends `.btn`.
 */

.bootbox {
   /**background: #3498db !important;**/
   background: #fafafa !important;
   /**opacity: .80;
   filter: Alpha(Opacity=80);**/
}

.modal-header, .modal-footer {
  text-align: center;
  padding: 20px !important;
  border: none !important;
}

.modal-title {
    /**color: white !important;**/
}   

.modal-content {
    background: none !important;
    box-shadow: none !important;
    border: none !important;
}

</style>
{% endblock %}

{% block content %}
<style>
#billing-form input[type=text], input[type=email], input[type=number]{
    font-size:13px;
}
</style>
<div class="body-content outer-top-xs" id="top-banner-and-menu">
	<div class="container">
            {% include "partials/breadcrumbs.volt" %}
            
        <table class="table table-hover dataTable table-striped width-full" data-plugin="dataTable" id="getPack">
            <thead>
              <tr>
                <th>Purchase ID</th>
                <th>Transaction ID</th>
                <th>Date Order</th>
                <th>Amount</th>
                
                <th>Action(s)</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <th colspan="3" style="text-align:right">Total:</th>
                <th></th>
              </tr>
            </tfoot>
            
          </table>
        
        
        </div>	
<!-- create a new account -->	
<style>
.table tr td{
    padding-bottom:8px !important;
    padding-top:8px !important;
}
</style>                            

        </div>
</div>
{% endblock %}


