{% extends "templates/base.volt" %}

{% block head %}
{% endblock %}
{% block content %}
<div class="body-content outer-top-xs" id="top-banner-and-menu">
	<div class="container">
            {% include "partials/catforstore.volt" %}
            <div id="grid-container">
								<div class="category-product  inner-top-vs">
									<div class="row">									
			<?php if(!isset($notAvailable)){ ?>								
                            {% for keys,values in vendors %}
		<div class="col-sm-3" style="margin-bottom:10px;">
			<div class="products">
                            <div class="product">		
                                <div class="product-image">
                                        <div class="image">
                                                <a href="{{url('stores/browse?task='~values['vendor_id']~'&goto=1&display='~values['display_name'])}}"><img  src="{{url('assets/images/vendor/'~values['vendor_logo'])}}" alt=""></a>
                                        </div><!-- /.image -->			                      		   
                                </div><!-- /.product-image -->

                            </div><!-- /.product -->

                            </div><!-- /.products -->
                            </div><!-- /.item -->
                            {% endfor %}
                        
                        </div>
                        <?php  }else{ ?>
                    <div class="col-sm-12" style="margin-bottom:10px;">
                        We Are Not Available Yet in Your State! <p>&nbsp;</p>
                        <div class="body-content outer-top-xs" id="top-banner-and-menu" style="padding-bottom:50px;">
	
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
                        
                        <?php } ?>
                    </div>
                </div>
                
                
        </div>
</div>
{% endblock %}


