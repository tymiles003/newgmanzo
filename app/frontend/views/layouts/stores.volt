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
                                        		                      		   
                                </div><!-- /.product-image -->

                            </div><!-- /.product -->

                            </div><!-- /.products -->
                            </div><!-- /.item -->
                            {% endfor %}
                        
                        </div>
                        <?php  }else{ ?>
                    <div class="col-sm-12" style="margin-bottom:10px;">
                        We Are Not Available Yet in Your State! <p>&nbsp;</p>
                        
                    </div>
                    </div>
                        
                        <?php } ?>
                    </div>
                </div>
                
                
        </div>
</div>
{% endblock %}


