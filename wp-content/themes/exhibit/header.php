<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * 
 *
 * @package WordPress
 * @subpackage Exhibit
 * @since 1.0
 * @version 1.0
 */

?>
<!DOCTYPE html>

<html>
	<head>
        
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->        
        <title>Exhibit</title>

        <!-- Bootstrap -->
        <link href="<?php echo  get_stylesheet_directory_uri(); ?>/assets/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <link href="<?php echo  get_stylesheet_directory_uri(); ?>/assets/css/animate.css" rel="stylesheet">          
        <link href="<?php echo  get_stylesheet_directory_uri(); ?>/assets/css/owl.carousel.min.css" rel="stylesheet"> 
        <link href="<?php echo  get_stylesheet_directory_uri(); ?>/assets/css/owl.theme.default.min.css" rel="stylesheet"> 
        <link href="<?php echo  get_stylesheet_directory_uri(); ?>/style.css" rel="stylesheet">  		 
        <link href="<?php echo  get_stylesheet_directory_uri(); ?>/assets/css/my-style.css" rel="stylesheet">  		
        <!-- font family -->      

        <link href="https://fonts.googleapis.com/css?family=Lora" rel="stylesheet">
        <?php wp_head(); ?> 
	</head>

	<body <?php body_class(); ?>>
       <div id="wrapper">    
	        

     	<header class="internal-page">	
            <!-- sub header -->
           <div class="sub-navbar" id="top-navbar">
		       	<div class="container">
		       		<div class="row">
		       			<div class="col-xs-4 col-sm-4 cl-md-4">
					       	  <div class="left-sub-navbar">
					       	  	<p>Welcome to</p>
					       	  </div>
				       	 </div>
				       	 <div class="col-xs-8 col-sm-8 cl-md-8">
					       	  <div class="right-sub-navbar">
					       	  	<ul>
					       	  		<li><a>Help</a></li>
					       	  		<li><a>Join</a></li>
					       	  		<li><a role="button" data-toggle="collapse" href="#searcharea" aria-expanded="false">
					       	  			   <i class="fas fa-search"></i>
					       	  			</a>
					       	  		</li>
					       	  	</ul>
					       	  </div>
			       	    </div>
			       	</div>
		       	 </div>

                <!-- Search Header -->

                 <div class="search-header">
		            <div class="container-width">
		              <input type="search" class="search-box" placeholder="Search">
		              <a href="javascript:void(0);" class="fa fa-times search-close"></a>
		            </div>
		          </div>


                <!-- End Search Header -->

	       </div>   
 
            <!-- End Sub Header -->

            <div class="header navbar-fixed-top">
     	        <div class="container">	       
			        <nav id="header" class="navbar custom-header">
			            <div id="header-container" class="navbar-container">
			                <div class="navbar-header">
				                <button type="button" id="nav-toggle" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mobile-nav">
				                    <span class="sr-only">Toggle navigation</span>				                   
				                    <span class="icon-bar"></span>
				                    <span class="icon-bar"></span>
				                    <span class="icon-bar"></span>
				                  </button>
			                    <a id="brand" class="navbar-brand page-scroll" href="#top">
			                      <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/HeaderLogo_2.png" alt="logo">
			                    </a>
			                </div>


			                 <!-- visible onMobile Devices -->

			                <div id="mobile-nav" class="collapse navbar-collapse navbar-right">			                	
					             <ul class="nav navbar-nav panel-group" id="accordion">

					                <li class="active panel panel-default">
					                	<div class="panel-heading">
					                	   <a href="#accord-1" data-parent="#accordion"  class="page-scroll" data-toggle="collapse">Home</a>
					                	</div>
					                </li>

					                <li class="panel panel-default">
					                	<div class="panel-heading">
					                	    <a href="#accord-2" data-parent="#accordion"  class="page-scroll" data-toggle="collapse">Portfolio
					                	    </a>
					                    </div>
								        <div class="panel-collapse collapse" id="accord-2">
								           <ul class="panel-body">
									          <li><a href="#">Sevice</a></li>
									          <li><a href="#">General Services eBrochure</a></li>
									          <li><a href="#">Event Décor eBrochure</a></li>
								          </ul>								        
					                 </li>

					                <li class="panel panel-default">
					                	<div class="panel-heading">
					                	     <a href="#accord-3" data-parent="#accordion"  class="page-scroll" data-toggle="collapse">E-Stores</a>
					                     </div>
		                                <div class="panel-collapse collapse" id="accord-3">
		                                  <ul class="panel-body">
								             <li><a href="#">Online Catalog</a></li>
								             <li><a href="#">Exhibit Auction™</a></li>
								          </ul>						          								        
					                </li>

					                <li class="panel panel-default">
					                	<div class="panel-heading">
					                	    <a href="#accord-4" data-parent="#accordion" class="page-scroll" data-toggle="collapse">Graphics</a>
					                    </div>
		                                <div class="panel-collapse collapse" id="accord-4">
		                                	<ul class="panel-body">
								               <li><a href="#">Graphic Uploader</a></li>						          	         
								            </ul>
								        </div>	
								    </li>	

					                <li class="panel panel-default">
					                	<div class="panel-heading">
					                	    <a href="#accord-5" data-parent="#accordion"  class="page-scroll" data-toggle="collapse">Media</a>
					                    </div>
					                </li>

					                <li class="panel panel-default">
					                	<div class="panel-heading">
					                	   <a href="#accord-6" data-parent="#accordion"  class="page-scroll" data-toggle="collapse">Contact</a>
					                     </div>
		                                <div class="panel-collapse collapse" id="accord-6">
		                                	<ul class="panel-body">
								               <li><a href="#">FAQs</a></li>						          				         
								            </ul>
								        </div>			                
					                </li> 

					             </ul>
			                </div><!-- /.nav-collapse -->

			                <!-- End Visible Mobile Devices -->

			                <!-- visible on sm md lg device -->

			                <div id="main-nav" class="collapse navbar-collapse navbar-right hidden-xs">
					             <ul class="nav navbar-nav" id="mainNav">
					                <li class="active"><a href="#home" class="page-scroll">Home</a></li>
					                <li class=""><a href="#aboutUs" class="page-scroll">Portfolio <span class="caret"></span></a>
								        <ul class="dropdown-menu" id="sub-dropdown">
								          <li><a href="#">Sevice</a></li>
								          <li><a href="#">General Services eBrochure</a></li>
								          <li><a href="#">Event Décor eBrochure</a></li>
								        </ul>
					                </li>
					                <li><a href="#services" class="page-scroll">E-Stores  <span class="caret"></span></a>					                
		                                <ul class="dropdown-menu" id="sub-dropdown">
								          <li><a href="#">Online Catalog</a></li>
								          <li><a href="#">Exhibit Auction™</a></li>						          
								        </ul>
					                </li>
					                <li><a href="#our-works" class="page-scroll">Graphics</a></li>
		                                <ul class="dropdown-menu" id="sub-dropdown">
								          <li><a href="#">Graphic Uploader</a></li>						          			         
								        </ul>			                
					                <li><a href="#team" class="page-scroll">Media</a></li>
					                <li><a href="#contactUs" class="page-scroll">Contact <span class="caret"></span></a>
		                                <ul class="dropdown-menu" id="sub-dropdown">
								          <li><a href="#">FAQs</a></li>						          				         
								        </ul>			                
					                </li> 
					             </ul>
			                </div><!-- /.nav-collapse -->

			                <!-- End Visible on sm md lg Device -->



			            </div><!-- /.container -->
			        </nav><!-- /.navbar -->	
			    </div>	
			</div>
		</header>      
 

       