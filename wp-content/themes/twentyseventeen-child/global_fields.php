<?php 

global $section_number;

global $invoiceTemplate_otherColor;
$invoiceTemplate_otherColor = 1;
$section_number = 1;
// check if the flexible content field has rows of data
if( have_rows('global_fields') ):
  // loop through the rows of data
  while ( have_rows('global_fields') ) : the_row();
    // MODULE SELECTER STARTS HERE YOU CAN SELECT DIFFERENT MODULES FROM HERE
    if( get_row_layout() == 'content_and_image_module'):
      get_template_part('/layouts/content_and_image_module' , 'none') ;
	elseif( get_row_layout() == 'fullwidth_ctas_with_background'):
      get_template_part('/layouts/fullwidth_background_with_cta' , 'none') ;
	  elseif( get_row_layout() == 'services_grid'):
      get_template_part('/layouts/services_grid' , 'none') ;
	   elseif( get_row_layout() == 'featured_section'):
      get_template_part('/layouts/featured' , 'none') ;
	  elseif( get_row_layout() == 'testimonial_section'):
      get_template_part('/layouts/testimonial' , 'none') ;
	  elseif( get_row_layout() == 'portfolio_section'):
      get_template_part('/layouts/portfolio' , 'none') ;
    endif;

	$section_number ++;
	
	endwhile;

endif;
?>