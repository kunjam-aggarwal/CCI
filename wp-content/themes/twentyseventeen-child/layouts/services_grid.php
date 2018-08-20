<section class="grid-section" id="section_<?php echo $section_number;?>">
	<?php if(get_sub_field('services_section_title')){ ?><h2 class="text-center"><?php echo get_sub_field('services_section_title');?></h2><?php } 
	$services_to_show = -1;
		if(!get_sub_field('show_all_services') && get_sub_field('numbe_of_sevices_to_show')){
			$services_to_show = get_sub_field('numbe_of_sevices_to_show');
		}
	 $servics_args = array(
		'post_type' => 'service',
		'post_status' => 'publish',
		'posts_per_page' => $services_to_show
	 );
	 
	 $services = new WP_Query($servics_args);
	 global $post; 
	?>
	<div class="container">
		<div class="row">
		<?php 
		while($services->have_posts()){
			$services->the_post();
		?>
			<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
				<div class="grid-layout">
				<?php if ( has_post_thumbnail() ){?>
					  <div class="img-grid">
						<img src="<?php the_post_thumbnail( 'service-size' ); ?>" alt="<?php the_title();?>">
					  </div>
				<?php } ?>
					
					<div class="text-grid">
						<h5><?php the_title();?></h5>
						<p><?php $post->post_excerpt; ?></p>
					</div>
				</div>
			</div>
		<?php } 
		wp_reset_query();
		
		?>
			<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
				<div class="grid-layout">
					<div class="img-grid">
						<img src="http://wp1.themexlab.com/m3/tizara/wp-content/uploads/2016/03/6-3.jpg" alt="images">
					</div>
					
					<div class="text-grid">
						<h5>Free Consultation</h5>
						<p>invidunt et permei congue dicant eu recusabo urbanit tollit </p>
					</div>
				</div>
			</div>

			<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
				<div class="grid-layout">
					<div class="img-grid">
						<img src="http://wp1.themexlab.com/m3/tizara/wp-content/uploads/2016/03/2-6.jpg" alt="images">
					</div>
					
					<div class="text-grid">
						<h5>Free Consultation</h5>
						<p>invidunt et permei congue dicant eu recusabo urbanit tollit </p>
					</div>
				</div>
			</div>

			<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
				<div class="grid-layout">
					<div class="img-grid">
						<img src="http://wp1.themexlab.com/m3/tizara/wp-content/uploads/2016/03/s1.jpg" alt="images">
					</div>
					
					<div class="text-grid">
						<h5>Free Consultation</h5>
						<p>invidunt et permei congue dicant eu recusabo urbanit tollit </p>
					</div>
				</div>
			</div>

		</div>
	</div>
</section>