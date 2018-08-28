<?php global $section_number;?>
<section class="service-section" id="section_<?php echo $section_number;?>">
	<div class="container">
		<div class="row">
			<div class="cl-xs-12 col-sm-6 col-md-6 col-lg-6">
				<div class="text-column">
					<div class="theme-title">
						<span><?php echo get_sub_field( 'content_and_image_module_subtitle' ) ?></span>
						<h2><?php echo get_sub_field( 'content_and_image_module_title' ) ?></h2>
					</div>
                    <div class="text">
						<?php echo get_sub_field( 'content_and_image_module_content' ) ?>
                    </div>
					<?php
					$target = '';
					$CTA_text = get_sub_field( 'content_and_image_module_cta_text' );
					if ( get_sub_field( 'content_and_image_module_external_link' ) && get_sub_field( 'content_and_image_module_external_cta_link' ) ) {
						$target = '_blank';
						$link = get_sub_field( 'content_and_image_module_external_cta_link' );
					} elseif ( !get_sub_field( 'content_and_image_module_external_link' ) && get_sub_field( 'content_and_image_module_internal_cta_link' ) ) {
						$link = get_sub_field( 'content_and_image_module_internal_cta_link' );
					}
					if ( $CTA_text && $link ) {
						?>
						<a href="<?php echo $link; ?>" target="<?php echo $target; ?>" class="theme-button"><?php echo $CTA_text; ?></a>
					<?php } ?>
                </div>
			</div>
            <?php if ( get_sub_field( 'content_and_image_module_image' ) ) { ?>
			<div class="cl-xs-12 col-sm-6 col-md-6 col-lg-6">
				<div class="image-column">
					<div class="inner-box">
						<?php if ( get_sub_field( 'content_and_image_module_image_side_title' ) ) { ?><div class="hanged-text"><h5><?php echo get_sub_field( 'content_and_image_module_image_side_title' ) ?></h5></div><?php } ?>
						
							<div class="image-box wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms" style="visibility: visible; animation-duration: 1500ms; animation-delay: 0ms; animation-name: fadeInRight;">

								<img src="<?php echo get_sub_field( 'content_and_image_module_image' ); ?>" alt="imag<?php echo get_sub_field( 'content_and_image_module_title' ); ?>es">

	                        </div>		
					
                    </div>
                </div>
			</div>
				<?php } ?>
		</div>
	</div>
</section>