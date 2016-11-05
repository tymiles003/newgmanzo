<!-- ============================================== BRANDS CAROUSEL ============================================== -->
<div id="brands-carousel" class="logo-slider wow fadeInUp">

		<h3 class="section-title"><?php echo @$this->session->get('strLocation'); ?>  STORE CATEGORIES</h3>
		<div class="logo-slider-inner-text">	
			<div id="brand-slider" class="owl-carousel brand-slider custom-carousel-text owl-theme">
                                {% for keys, values in category %}
				<div class="text-item">
					<a href="{{url('stores/browse/?strLocation='~this.session.get('strLocation')~'&goto='~values['category_id'])}}" class="image">
						{{values['category_name'] | upper}}
					</a>	
				</div><!--/.item-->
                                {% endfor %}
		    </div><!-- /.owl-carousel #logo-slider -->
		</div>
	
</div><!-- /.logo-slider -->
<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
