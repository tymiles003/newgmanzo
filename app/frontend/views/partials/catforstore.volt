<!-- ============================================== BRANDS CAROUSEL ============================================== -->
<div id="manufacturer-info" class="logo-slider wow fadeInUp">

		<h3 class="title"><?php echo @$this->session->get('strLocation'); ?>  Stores</h3>
		<div class="row">
                    {% for keys, values in vendors %}
                    <div class="col-sm-2 col-xs-6 manufacturer">
                            <a href="#" class="thumbnail"><img alt="Apple" title="Apple" src="image/product/apple_logo-60x60.jpg"></a>
                        <a href="#">Apple</a>
                    </div>
                    {% endfor %}
              </div>
	
</div><!-- /.logo-slider -->
<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
