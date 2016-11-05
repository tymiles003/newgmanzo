<!-- ============================================== BRANDS CAROUSEL ============================================== -->
<div id="brands-carousel" class="logo-slider wow fadeInUp">

		<h3 class="section-title"><?php echo @$this->session->get('strLocation'); ?> RELATED STORE(S)</h3>
		<div class="logo-slider-inner-text">	
			<div id="brand-slider" class="owl-carousel brand-slider custom-carousel-text owl-theme">
                                {% for keys, values in vendors %}
				<div class="text-item">
					<a href="{{url('stores/browse?task='~values['vendor_id']~'&goto=1&display='~values['display_name'])}}" class="image">
						<img  src="{{url('assets/images/vendor/'~values['vendor_logo'])}}" alt="">
					</a>	
				</div><!--/.item-->
                                {% endfor %}
		    </div><!-- /.owl-carousel #logo-slider -->
		</div>
	
</div><!-- /.logo-slider -->
<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
