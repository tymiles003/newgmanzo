{% extends "templates/base.volt" %}

{% block head %}
<style type="text/css">
/**
 * Extra large button extensions. Extends `.btn`.
 */
/*******************************
* MODAL AS LEFT/RIGHT SIDEBAR
* Add "left" or "right" in modal parent div, after class="modal".
* Get free snippets on bootpen.com
*******************************/
	.modal.left .modal-dialog,
	.modal.right .modal-dialog {
		position: fixed;
		margin: auto;
		width: 320px;
		height: 100%;
		-webkit-transform: translate3d(0%, 0, 0);
		    -ms-transform: translate3d(0%, 0, 0);
		     -o-transform: translate3d(0%, 0, 0);
		        transform: translate3d(0%, 0, 0);
	}

	.modal.left .modal-content,
	.modal.right .modal-content {
		height: 100%;
		overflow-y: auto;
	}
	
	.modal.left .modal-body,
	.modal.right .modal-body {
		padding: 15px 15px 80px;
	}

/*Left*/
        #myModal > .modal-backdrop, #myModal > .modal-backdrop.fade.in{
            opacity: 0 !important;
        }
	.modal.left.fade .modal-dialog{
		left: -320px;
		-webkit-transition: opacity 0.3s linear, left 0.3s ease-out;
		   -moz-transition: opacity 0.3s linear, left 0.3s ease-out;
		     -o-transition: opacity 0.3s linear, left 0.3s ease-out;
		        transition: opacity 0.3s linear, left 0.3s ease-out;
	}
	
	.modal.left.fade.in .modal-dialog{
		left: 0;
	}
        
/*Right*/
	.modal.right.fade .modal-dialog {
		right: -320px;
		-webkit-transition: opacity 0.3s linear, right 0.3s ease-out;
		   -moz-transition: opacity 0.3s linear, right 0.3s ease-out;
		     -o-transition: opacity 0.3s linear, right 0.3s ease-out;
		        transition: opacity 0.3s linear, right 0.3s ease-out;
	}
	
	.modal.right.fade.in .modal-dialog {
		right: 0;
	}

/* ----- MODAL STYLE ----- */
	.modal-content {
		border-radius: 0;
		border: none;
	}

        .modal-body {
            /*background: white !important;*/
            height:100%;
        }

	.modal-header {
		/*border-bottom-color: #EEEEEE;
		background-color: #FAFAFA;*/
	}


.btn-block {
    padding: 18px 28px;
    /*font-size: 22px;*/
    line-height: normal;
    
    margin-top:10px !important;
}

/**#myModalState {
   /**background: #3498db !important;**/
   background: #fafafa !important;
   /**opacity: .80;
   filter: Alpha(Opacity=80);**/
}**/

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

.select-style {
    border: 5px solid #f90 !important;
    border-radius: 3px !important;
    overflow: hidden !important;
    background: #fafafa url("data:image/png;base64,R0lGODlhDwAUAIABAAAAAP///yH5BAEAAAEALAAAAAAPABQAAAIXjI+py+0Po5wH2HsXzmw//lHiSJZmUAAAOw==") no-repeat 90% 50% !important;
}

.select-style select {
    padding: 15px 18px !important;
    width: 105% !important;
    height: 60px;
    border: none !important;
    box-shadow: none !important;
    background: transparent !important;
    background-image: none !important;
    -webkit-appearance: none !important;
}

.select-style select:focus {
    outline: none !important;
}
ul.departments-list li{
    font-size:15px;
    line-height:30px;
    border-bottom: 1px solid #ddd;
    padding:5px;
}
</style>
{% endblock %}
{% block content %}
    <!--Middle Part Start-->
        <div id="content" class="col-xs-12">
        <p>&nbsp;</p>
        <div class="logo"><img src="{{url('assets/image/vendor/'~vendors.vendor_logo)}}" /></div>
        <p>&nbsp;</p>
        <div class="btn-group"><button class="btn btn-lg btn-demo" type="button" data-toggle="modal" data-target="#myModal"><small>Departments</small></button><a href="{{url('stores/?state='~session.get('strLocation'))}}" class="btn btn-lg btn-primary"><small>Change Store</small></a></div><button class="btn btn-lg pull-right btn-link" id="location"><i class="fa fa-map-marker fa-2x"></i></button>
        <p>&nbsp;</p>
        {% for category_key,category_value in category %}
          <!-- Bestsellers Product Start-->

          {% set products = getCategoryProduct(category_value['category_id'], others) %}
          
          <h4 class="subtitle"><strong>{{category_value['category_name'] | upper}}</strong></h4>
          <div class="owl-carousel product_carousel">
          <?php if(count($products) > 0){ ?>
          {% for keys,values in products %}
            <div class="product-thumb clearfix" id="item{{keys+1}}">
              <div class="image">
                <a href="{{url('store/details/'~values.product_id)}}"><img  src="{{url('assets/uploads/'~values.front_image)}}" class="img-responsive" /></a>
              </div>
              <div class="caption">
                <h4><a href="{{url('store/details/'~values.product_id)}}"><a href="detail.html" style="color:#333;">{{values.title | capitalize}}</a></a></h4>
                <p class="price"> ${{values.sale_price}} </p>
                <div class="rating">By {{convert(values.added_by,'display_name')}} | {{address(values.added_by,'address1') | capitalize}}</div>
                <input type="hidden" id="item{{keys+1}}_name" value="{{values.title | capitalize}}">
                <input type="hidden" id="item{{keys+1}}_price" value="{{values.sale_price}}">
                <input type="hidden" id="item{{keys+1}}_pro_id" value="{{values.product_id}}">
              </div>
              <div class="button-group">
                <button class="btn-primary addToCart" id="item{{keys+1}}" type="button" onClick=""><span>Add to Cart</span></button>
                <div class="add-to-links">
                  <button type="button" data-toggle="tooltip" title="Add to Wish List" onClick=""><i class="fa fa-heart"></i></button>
                </div>
              </div>
            </div>
            {% endfor %}
            <?php } else{ ?>
            <div class="alert alert-warning"><strong>Not Available For Now!</strong></div>
            <?php }; ?>
          </div>
          {% endfor %}
        </div>

<!-- MODAL -->
<div id="myModalState" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <img src="{{url('assets/image/logo.png')}}" alt="">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><strong>&nbsp;</strong></h4>
      </div>
      <div class="modal-body" style="background:none !important;">
        <p>
        <input type="text" class="form-control input-lg" id="input-location" placeholder="Enter you location" name="location" />
        <!--<button type="button" class="btn btn-block btn-lg btn-primary"><strong><small>Display Shops</small></strong></button>-->
        </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="lnk btn" data-dismiss="modal" style="background:none;">Close Window</button>
        <!--<button type="button" class="lnk btn btn-lg" style="background:white; border:1px solid #444; color:#444;"><strong>Display Shops</strong></button>-->
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!--- LEFT BAR DEPARTMENT -->
<!-- Modal -->
	<div class="modal left fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<div class="logo"><img src="{{url('assets/image/vendor/'~vendors.vendor_logo)}}" /></div>	
                                <h4 class="modal-title" id="myModalLabel">Departments</h4>
				</div>

				<div class="modal-body">
					<p>
                                        <ul class="list-unstyled departments-list">
                                        {% for keys, values in category %}
                                            <li><a href="{{url('stores/category?cat='~values['category_id']~'&vendor='~request.getQuery('vendor'))}}">{{values['category_name'] | capitalize}}</a></li>
                                        {% endfor %}
                                          </ul>
					</p>
				</div>

			</div><!-- modal-content -->
		</div><!-- modal-dialog -->
	</div><!-- modal -->
	
{% endblock %}


