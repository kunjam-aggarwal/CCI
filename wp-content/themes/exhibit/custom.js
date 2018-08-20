    jQuery(document).ready(function() {

  // header-slideup js
     mixitupGallery();
     scrollToTop ();

        jQuery('.filter-button-group .filter-button').click(function() {
            jQuery(this).addClass('active').siblings().removeClass('active');
        });
        WOW.prototype.addBox = function(element) {
            this.boxes.push(element);

        };


        jQuery("#healthcare").trigger("click");
        // Init WOW.js and get instance
        var wow = new WOW();
        wow.init();

        // Attach scrollSpy to .wow elements for detect view exit events,
        // then reset elements and add again for animation
        jQuery('.wow').on('scrollSpy:exit', function() {
            jQuery(this).css({
                'visibility': 'hidden',
                'animation-name': 'none'
            }).removeClass('animated');
            wow.addBox(this);
        }).scrollSpy();




        var myNavBar = {
            flagAdd: true,
            elements: [],
            init: function(elements) {
                this.elements = elements;
            },
            add: function() {
                if (this.flagAdd) {
                    for (var i = 0; i < this.elements.length; i++) {
                        document.getElementById(this.elements[i]).className += " fixed-theme";
                    }
                    this.flagAdd = false;
                }
            },
            remove: function() {
                for (var i = 0; i < this.elements.length; i++) {
                    document.getElementById(this.elements[i]).className =
                        document.getElementById(this.elements[i]).className.replace(/(?:^|\s)fixed-theme(?!\S)/g, '');
                }
                this.flagAdd = true;
            }

        };


        myNavBar.init([
            "header",
            "header-container",
            "brand",
            "top-navbar",
        ]);


        function offSetManager() {

            var yOffset = 0;
            var currYOffSet = window.pageYOffset;

            if (yOffset < currYOffSet) {
                myNavBar.add();

            } else if (currYOffSet == yOffset) {
                myNavBar.remove();
            }
        }

        window.onscroll = function(e) {
            offSetManager();
        }

        jQuery('.navbar-nav li').click(function() {
            jQuery(this).addClass('active').siblings().removeClass('active');
        });


        offSetManager();



        jQuery(window).scroll(function() {
             if(jQuery(window).width() > 767){
            var scroll = jQuery(window).scrollTop();
            var heightTopNav = jQuery('#top-navbar').outerHeight();        

            if (scroll >= heightTopNav) {
                jQuery("header nav #main-nav ul > li > ul.dropdown-menu").addClass("fixed-theme");
                jQuery('body').addClass('headerFixed');
            } else {
                jQuery("header nav #main-nav ul > li > ul.dropdown-menu").removeClass("fixed-theme");
                jQuery('body').removeClass('headerFixed');
            }

            if (scroll >= heightTopNav) {
                jQuery("header .navbar-fixed-top").addClass("top-nav-collapse");
            } else {
                jQuery("header .navbar-fixed-top").removeClass("top-nav-collapse");
            }
              }
        });
  

        // End Header slideup

        // Navbar Accordian

        jQuery(".toggle-accordion").on("click", function() {
            var accordionId = jQuery(this).attr("accordion-id"),
                numPanelOpen = jQuery(accordionId + ' .collapse.in').length;

            jQuery(this).toggleClass("active");

            if (numPanelOpen == 0) {
                openAllPanels(accordionId);
            } else {
                closeAllPanels(accordionId);
            }
        })

        openAllPanels = function(aId) {
            console.log("setAllPanelOpen");
            jQuery(aId + ' .panel-collapse:not(".in")').collapse('show');
        }
        closeAllPanels = function(aId) {
            console.log("setAllPanelclose");
            jQuery(aId + ' .panel-collapse.in').collapse('hide');
        }

    // Owl Carousel

              jQuery('.owl-carousel').owlCarousel({
            loop:true,
            margin:10,
            responsiveClass:true,
            responsive:{
                0:{
                    items:1,
                    nav:true
                },
                768:{
                    item:2,
                    nav:false
                },
                1000:{
                    items:2,
                    nav:true,
                    loop:false
                }
            }
        })

        // Mixitup gallery

        function mixitupGallery () {
          if (jQuery("#mixitup-list").length) {
            jQuery("#mixitup-list").mixItUp()
          };
        }


        // Scroll to top
        function scrollToTop () {
          if (jQuery('.scroll-top').length) {

            //Check to see if the window is top if not then display button
            jQuery(window).on('scroll', function (){
              if (jQuery(this).scrollTop() > 200) {
                jQuery('.scroll-top').fadeIn();
              } else {
                jQuery('.scroll-top').fadeOut();
              }
            });
            
            //Click event to scroll to top
            jQuery('.scroll-top').on('click', function() {
              jQuery('html, body').animate({scrollTop : 0},1500);
              return false;
            });
          }
        }


    });