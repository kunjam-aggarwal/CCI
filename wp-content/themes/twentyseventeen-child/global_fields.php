<?php 

global $section_number;

global $invoiceTemplate_otherColor;
$invoiceTemplate_otherColor = 1;
$section_number = 1;
echo 'kunjam';
// check if the flexible content field has rows of data
if( have_rows('global_fields') ):
  // loop through the rows of data
  while ( have_rows('global_fields') ) : the_row();
echo get_row_layout();
    // MODULE SELECTER STARTS HERE YOU CAN SELECT DIFFERENT MODULES FROM HERE
    if( get_row_layout() == 'content_and_image_module'):
      get_template_part('/layouts/content_and_image_module' , 'none') ;
	elseif( get_row_layout() == 'services_grid'):
      get_template_part('/layouts/services_grid' , 'none') ;
    endif;

	$section_number ++;
	
	endwhile;

endif;
?>