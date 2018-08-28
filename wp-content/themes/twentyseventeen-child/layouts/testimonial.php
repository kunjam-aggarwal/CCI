<?php global $section_number;?>

	<section id="section_<?php echo $section_number;?>" class="testimonial-section">
	<div class="container">
	<?php if(get_sub_field('testimonial_section_title')){ ?>
        <div class="row">
        	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        		<h2 class="text-center"><?php echo get_sub_field('testimonial_section_title');?></h2>
        	</div>
        </div>
<?php }  

$args = array(
	'post_type' => 'testimonial',
	'post_status' => 'publish'
);
if(get_sub_field('show_all_testimonials')){
	$args['posts_per_page'] = -1;
}
else{
	$args['post__in'] = get_sub_field('choose_specific_testimonials');
}
$testimonials = new WP_Query($args);
if($testimonials->have_posts()){
	?>
	<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div class="owl-carousel owl-theme">
	<?php
	while($testimonials->have_posts()){
		$testimonials->the_post();
		?>
		 <div class="item">
				    	<div class="cl-author image-testimonial">
				    		<div class="testimonial-content" style="color:#505050; background:#ffffff">
							<?php if(has_post_thumbnail()){
								echo the_post_thumbnail('', array( 'class' => 'img-responsive img-circle' ));
							}?>
				    			
					    			<p><i class="fa fa-quote-left" style="color:#555555"></i> </p>
					    			<?php the_content();?>
				    		   
				    		    <ul class="cl-author-info">
				    		    	<li style="color:#505050"><?php the_title(); ?></li>
				    		    	<li style="color:#505050"><?php echo get_field('designation');?></li>
				    		    </ul>
				    		</div>
				    	</div>
				    </div>
		<?php
	}
	?>
	</div>
			</div>
		</div>
	<?php
}


?>
<script type="text/javascript" src="https://api.feefo.com/api/javascript/contractor-supermarket"></script>
 

			

				
	</div>
</section>
