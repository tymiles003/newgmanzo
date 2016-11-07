{% extends "templates/base.volt" %}

{% block head %}
{% endblock %}
{% block content %}
<div class="body-content outer-top-xs" id="top-banner-and-menu">
	<div class="container">
            <div id="grid-container">
                <div class="category-product  inner-top-vs">
                        <div class="row">									
				<p>&nbsp;</p>							
                            {% for keys,values in stores %}
		<div class="col-sm-3" style="margin-bottom:10px;">
			<div class="products">
                            <div class="product">		
                                <div class="product-image">
                                        <div class="image">
                                                <a href="{{url('stores/browse?vendor='~values['vendor_id'])~'&task=browse'}}"><img  src="{{url('assets/image/vendor/'~values['vendor_logo'])}}" alt=""></a>
                                        </div><!-- /.image -->			                      		   
                                </div><!-- /.product-image -->

                            </div><!-- /.product -->

                            </div><!-- /.products -->
                            </div><!-- /.item -->
                            {% endfor %}
                            <p>&nbsp;</p>
                        </div>
                    </div>
                </div>
        </div>
</div>
{% endblock %}
