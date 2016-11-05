{% extends "templates/base.volt" %}

{% block head %}
<style type="text/css">
/**
 * Extra large button extensions. Extends `.btn`.
 */
.btn-block {
    padding: 18px 28px;
    line-height: normal;
    -webkit-border-radius: 0px;
       -moz-border-radius: 0px;
            border-radius: 0px;
    box-shadow:#ccc 0 3px 3px 0;
}

#myModal {
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
.scrollable-menu {
    height: auto;
    max-height: 400px;
    overflow-x: hidden;
}
</style>
{% endblock %}
{% block content %}
<div class="body-content outer-top-xs" id="top-banner-and-menu" style="padding-bottom:50px;">
	<div class="container">
            {% include "partials/catforstore.volt" %}
            
            <div class="dropdown">
            <button class="btn btn-default btn-primary btn-lg btn-block dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
              Search For Shops In Your Location
              <span class="caret"></span>
            </button>
            <ul class="dropdown-menu col-xs-12 scrollable-menu" id="state-packages" aria-labelledby="dropdownMenu1" role="menu">
              <li class="dropdown-header">Dropdown header</li>
              <li role="separator" class="divider"></li>
              <li><a href="Abuja FCT">Abuja FCT</a></li>
              <li><a href="Abia">Abia</a></li>
              <li><a href="#">Adamawa</a></li>
              <li><a href="Adamawa">Adamawa</a></li>
              <li><a href="Akwa Ibom">Akwa Ibom</a></li>
              <li><a href="Anambra">Anambra</a></li>
              <li><a href="Bauchi">Bauchi</a></li>
              <li><a href="Bayelsa">Bayelsa</a></li>
              <li><a href="Benue">Benue</a></li>
              <li><a href="Borno">Borno</a></li>

              <li role="separator" class="divider"></li>
              <li class="dropdown-header">Dropdown header</li>
              <li role="separator" class="divider"></li>
              <li><a href="Cross River">Cross River</a></li>
              <li><a href="Delta">Delta</a></li>
              <li><a href="Ebonyi">Ebonyi</a></li>
              <li><a href="Edo">Edo</a></li>
              <li><a href="Ekiti">Ekiti</a></li>
              <li><a href="Enugu">Enugu</a></li>
              <li><a href="Gombe">Gombe</a></li>
              <li><a href="Imo">Imo</a></li>

              <li role="separator" class="divider"></li>
              <li class="dropdown-header">Dropdown header</li>
              <li role="separator" class="divider"></li>
              <li><a href="Jigawa">Jigawa</a></li>
              <li><a href="Kaduna">Kaduna</a></li>
              <li><a href="Kano">Kano</a></li>
              <li><a href="Katsina">Katsina</a></li>
              <li><a href="Kebbi">Kebbi</a></li>
              <li><a href="Kogi">Kogi</a></li>
              <li><a href="Kwara">Kwara</a></li>
              <li><a href="Lagos">Lagos</a></li>

              <li role="separator" class="divider"></li>
              <li class="dropdown-header">Dropdown header</li>
              <li role="separator" class="divider"></li>
              <li><a href="Nassarawa">Nassarawa</a></li>
              <li><a href="Niger">Niger</a></li>
              <li><a href="Ogun">Ogun</a></li>
              <li><a href="Ondo">Ondo</a></li>
              <li><a href="Osun">Osun</a></li>
              <li><a href="Oyo">Oyo</a></li>

              <li role="separator" class="divider"></li>
              <li class="dropdown-header">Dropdown header</li>
              <li role="separator" class="divider"></li>
              <li><a href="Plateau">Plateau</a></li>
              <li><a href="Rivers">Rivers</a></li>
              <li><a href="Sokoto">Sokoto</a></li>
              <li><a href="Taraba">Taraba</a></li>
              <li><a href="Yobe">Yobe</a></li>
              <li><a href="Zamfara">Zamfara</a></li>
            </ul>
        </div>
        </div>
</div>
{% endblock %}


