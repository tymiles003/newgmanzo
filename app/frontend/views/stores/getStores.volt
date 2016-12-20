{% extends "templates/base.volt" %}

{% block head %}
{% endblock %}
{% block content %}
<div class="body-content outer-top-xs" id="top-banner-and-menu">
	<div class="container">
            <!-- ============================================== BRANDS CAROUSEL ============================================== -->
<div id="manufacturer-info" class="logo-slider wow fadeInUp">
    <p>&nbsp;</p>
		<h3 class="title"><button class="btn btn-lg btn-link" id="location"><i class="fa fa-map-marker fa-2x"></i></button><?php echo ucwords(@$this->session->get('strLocation')); ?>  Stores</h3>
		<div class="row">
                    {% for keys, values in stores %}
                    <div class="col-sm-2 col-xs-6 manufacturer">
                            <a href="{{url('stores/browse?vendor='~values['vendor_id']~'&task=browse')}}" class="thumbnail"><img alt="{{values['display_name'] | capitalize}}" title="{{values['display_name'] | capitalize}}" src="{{url('assets/image/vendor/'~values['vendor_logo'])}}"></a>
                            <a href="{{url('stores/browse?vendor='~values['vendor_id']~'&task=browse')}}"><strong>{{values['display_name'] | capitalize}}</strong></a>
                    </div>
                    {% endfor %}
              </div>
	
</div><!-- /.logo-slider -->
<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->

        </div>
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
        <input type="text" class="form-control input-lg" id="input-location" placeholder="Enter your state" name="location" />
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
{% endblock %}
