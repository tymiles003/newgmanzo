<!-- ============================================== BRANDS CAROUSEL ============================================== -->
<div id="manufacturer-info" class="logo-slider wow fadeInUp">
    <p>&nbsp;</p>
		<h3 class="title"><?php echo ucwords(@$this->session->get('strLocation')); ?>  Stores</h3>
		<div class="row">
                    {% for keys, values in vendors %}
                    <div class="col-sm-2 col-xs-6 manufacturer">
                            <a href="{{url('stores/browse/?vendor='~values['vendor_id']~'&task=browse')}}" class="thumbnail"><img alt="Apple" title="Apple" src="{{url('assets/image/vendor/'~values['vendor_logo'])}}"></a>
                            <a href="{{url('stores/browse/?vendor='~values['vendor_id']~'&task=browse')}}"><strong>{{values['display_name'] | capitalize}}</strong></a>
                    </div>
                    {% endfor %}
              </div>
	
</div><!-- /.logo-slider -->
<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
