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
											
                            {% for keys,values in vendors %}
		<div class="col-sm-3" style="margin-bottom:10px;">
			<div class="products">
                            <div class="product">		
                                <div class="product-image">
                                        <div class="image">
                                                <a href="{{url('stores/browse?task='~values['vendor_id'])}}"><img  src="{{url('assets/images/brands/'~values['vendor_logo'])}}" alt=""></a>
                                        </div><!-- /.image -->			                      		   
                                </div><!-- /.product-image -->

                            </div><!-- /.product -->

                            </div><!-- /.products -->
                            </div><!-- /.item -->
                            {% endfor %}
                        </div>
                    </div>
                </div>
        </div>
</div>
{% endblock %}


