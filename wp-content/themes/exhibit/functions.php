<?php

add_action( 'wp_enqueue_scripts', 'add_styles_scripts' );

function add_styles_scripts() {
	wp_enqueue_style( 'parent_style', get_template_directory_uri() . '/style.css' );
	wp_enqueue_style( 'bootstrap_style', get_stylesheet_directory_uri() . '/assets/css/bootstrap.min.css' );
	wp_enqueue_style( 'animate_style', get_stylesheet_directory_uri() . '/assets/css/animate.css' );
	wp_enqueue_style( 'owl_style', get_stylesheet_directory_uri() . '/assets/css/owl.carousel.min.css' );
	wp_enqueue_style( 'custom_style', get_stylesheet_directory_uri() . '/assets/css/my-style.css' );
	wp_enqueue_script( 'scrolling-nav', get_stylesheet_directory_uri() . '/assets/js/scrolling-nav.js', '', '', true );

	wp_enqueue_script( 'wow_script', get_stylesheet_directory_uri() . '/assets/js/wow.min.js', '', '', true );
	wp_enqueue_script( 'scrollspy', get_stylesheet_directory_uri() . '/assets/js/scrollspy.js', '', '', true );
	wp_enqueue_script( 'magnific', get_stylesheet_directory_uri() . '/assets/js/jquery.magnific-popup.min.js', '', '', true );
	wp_enqueue_script( 'bootstrap_script', get_stylesheet_directory_uri() . '/assets/js/bootstrap.min.js', '', '', true );
	wp_enqueue_script( 'owl_script', get_stylesheet_directory_uri() . '/assets/js/owl.carousel.min.js', '', '', true );
	wp_enqueue_script( 'custom_script', get_stylesheet_directory_uri() . '/assets/js/custom.js', '', '', true );
}

function new_submenu_class( $menu ) {
	$menu = preg_replace( '/ class="sub-menu"/', '/ class="dropdown-menu"/', $menu );
	return $menu;
}

add_filter( 'wp_nav_menu', 'new_submenu_class' );

add_action( 'after_setup_theme', 'twentyseventeen_child_setup' );

function twentyseventeen_child_setup() {
	register_nav_menus( array(
		'footer' => __( 'Footer Menu', 'CCI' ),
	) );
}

function override_mce_options( $initArray ) {
	$opts = '*[*]';
	$initArray['valid_elements'] = $opts;
	$initArray['extended_valid_elements'] = $opts;
	return $initArray;
}

add_filter( 'tiny_mce_before_init', 'override_mce_options' );


if ( function_exists( 'acf_add_options_page' ) ) {
	// add parent
	$parent = acf_add_options_page( array(
		'menu_title' => 'Options',
		'redirect' => false
			) );

	acf_add_options_sub_page( array(
		'page_title' => 'Footer',
		'menu_title' => 'Footer options',
		'menu_slug' => 'footer-options',
		'parent_slug' => $parent['menu_slug'],
	) );
}