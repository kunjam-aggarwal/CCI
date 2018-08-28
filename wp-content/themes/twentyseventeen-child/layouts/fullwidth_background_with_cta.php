<?php global $section_number;
$background = get_sub_field( 'fullwidth_ctas_with_background_background_image' );
?>
<section class="stable-five" id="section_<?php echo $section_number;?>" style="background: url('<?php echo $background;?>') no-repeat;">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div class="inner-stable">
					<h4 class="p-color"><?php echo get_sub_field( 'fullwidth_ctas_with_background_sub_title' ) ?></h4>
	        			<h2><?php echo get_sub_field( 'fullwidth_ctas_with_background_title' ); ?></h2>
						<?php if( have_rows('fullwidth_ctas_with_background_ctas') ):

 	// loop through the rows of data
	$count = 1;
    while ( have_rows('fullwidth_ctas_with_background_ctas') ) : the_row();
		$class = 'btn1 fadeInLeft';
		$style = 'fadeInLeft';
	if($count == 2){
		$class = 'btn2 fadeInRight';
		$style = 'fadeInRight';
	}
		$target = '';
		$CTA_text = get_sub_field( 'fullwidth_ctas_with_background_cta_text' );
		if ( get_sub_field( 'fullwidth_ctas_with_background_is_external_link' ) && get_sub_field( 'fullwidth_ctas_with_background_external_url' ) ) {
			$target = '_blank';
			$link = get_sub_field( 'fullwidth_ctas_with_background_external_url' );
		} elseif ( !get_sub_field( 'fullwidth_ctas_with_background_is_external_link' ) && get_sub_field( 'fullwidth_ctas_with_background_internal_url' ) ) {
			$link = get_sub_field( 'fullwidth_ctas_with_background_internal_url' );
		}
	?>
	<a href="<?php echo $link; ?>" target="<?php echo $target; ?>" class="tran3s p-color-bg hvr-bounce-to-right wow <?php echo $class; ?>" style="visibility: visible; animation-name: <?php echo $style; ?>;"><?php echo $CTA_text?></a>
	<?php
	$count++;
    endwhile;
endif;
?>
	        			
				</div>
			</div>
		</div>
	</div>
</section>