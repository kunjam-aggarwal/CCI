 
<?php wp_footer(); ?>
<footer>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
				<div class="footer-first-grid">
					<div class="footer-logo">
						<a href="#top">
							<img src="<?php the_field( 'footer_logo', 'option' ) ?>" alt="logo">
						</a>
					</div>

					<div class="footer-content">
						<p>
							<?php the_field( 'footer_about_content', 'option' ) ?>
						</p>
					</div>
				</div> 				
			</div>

			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
				<div class="footer-second-grid">
					<h4>OUR SITEMAP</h4>
					<?php
					//Footer Sitemap
					wp_nav_menu( array(
						'theme_location' => 'footer',
						'link_before' => '<i class="fa fa-angle-right" aria-hidden="true"></i>'
					) );
					?>	
				</div>
			</div>


			<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
				<div class="footer-Fourth-grid">
					<h4>Quick Links</h4>
					<ul>
						<?php while ( has_sub_field( 'footer_quick_links', 'option' ) ): ?>
							<li><span class="ficon flaticon-map-solid"><i class="fas <?php the_sub_field( 'link_icon_class' ); ?>"></i></span><p><?php the_sub_field( 'link_text' ); ?></p></li>
						<?php endwhile; ?>	
					</ul>
				</div>
			</div>
		</div> 	 
	</div>
</footer>

<section class="sub-footer">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<div class="copyright"><p><?php the_field( 'copyright_text', 'option' ); ?></p></div>
			</div>


			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<div class="text-right ft-bottom-right">
					<div class="footer-bottom-share">
						<?php
						//Footer Social Menus
						wp_nav_menu( array(
							'theme_location' => 'social'
						) );
						?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
</body>
</html>