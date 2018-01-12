<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="preview_dotnet_templates_newlook_index" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="utf-8">
    <title>El Marfin Hotel and Pavilion</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Css Files --> 
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/plugins.css" rel="stylesheet" type="text/css">
    <link href="css/homePopup.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/responsive.css" rel="stylesheet" type="text/css">
    <link href="css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css">
    <link href="css/animate.css" rel="stylesheet" type="text/css">
    <!-- Font Awesome -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="js/jquery.min.js"></script>

   <!--sample robin-->
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/Custom-Cs.css" rel="stylesheet" type="text/css" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">
        </div>
    </div>
    <!--//Preloader -->
    <!-- #page -->
    <div id="page">
        <!-- header section -->
        <div id="topping">
        </div>
        <section id="top">
            <header> 
            	<div class="container">                                   
                    <!-- logo -->
                    <div id="logo">
                        <a href="#topping">El Marfin Hotel and Pavilion</a>
         			</div>
                    <!-- menu -->
                    <nav class="navmenu sidebar-nav navbar-collapse"> 
                        <ul>
                            <li class="scrollable"><a href="#topping">Home</a></li>  
                            <li class="scrollable"><a href="#about">About us</a></li>
                            <li class="scrollable"><a href="#services">Services</a></li>
                            <li class="scrollable"><a href="#portfolio">Gallery</a></li>      
                            <li class="scrollable"><a href="#contact">Contact</a></li>
                            <li id="lilogin" runat="server"><a href="Login.aspx">Login</a></li>                    
                            <li id="liname" runat="server">
                                  
                                <asp:DropDownList 
                                    ID="cbo_user"
                                    
                                    AutoPostBack="True" 
                                    OnSelectedIndexChanged="cbo_user_SelectedIndexChanged1"
                                                                                            
                                    runat="server" CssClass="shortcode_button">                                  
                                </asp:DropDownList>
                                                                
                            </li>
                        </ul>
                    </nav><!-- end menu --> 
                    <div class="clear"></div>
            	</div>
            </header>               
        </section>
        <!-- //end header section -->
        <!-- home content -->
        <section id="home">
            	
        	<!--Slider-->
            <div class="full_slider">
                <div id="fullwidth_slider" class="flexslider">                	
                    <ul class="slides">
                        <li> 
                        	<div class="slideshow-overlay"></div>  
                            <img src="images/slider/pavilion.jpg" alt="" class="slide_bg" />                               
                            <div class="full_slider_caption">
                                <div class="container">
                                	<div class="cont">
                                    	Enjoy our Services
                                        <div class="title">El Marfin Hotel and Pavilion</div>
                                        <br>Famous Motel
                                    </div>
                                </div>                              
                            </div>                        
                        </li>
                        <li>
                        	<div class="slideshow-overlay"></div>
                            <img src="images/slider/pool.jpg" alt="" class="slide_bg" />                         	
                            <div class="full_slider_caption">
                                <div class="container">
                                	<div class="cont">
	                                    Enjoy our Services
                                        <div class="title">El Marfin Hotel and Pavilion</div>
                                        <br>Famous Motel
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="slideshow-overlay"></div>
                           <img src="images/slider/kubo.jpg" alt="" class="slide_bg" />                     	
                            <div class="full_slider_caption">
                                <div class="container">
                                	<div class="cont">
                                    	Enjoy our Services
                                        <div class="title">El Marfin Hotel and Pavilion</div>
                                        <br>Famous Motel
                                    </div>
                                </div>
                            </div>
                        </li>                                                       
                    </ul>
                </div>
             </div>          
            <!--//Slider-->            
        </section>
        <!-- //end home content -->
        <!-- Tab Section -->
        <!-- // end tab section -->
        <!-- booking section -->
        <div class="color-container">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h3>
                            Rooms </h3>
                        <ul class="booking-list">
                            <li>
                                <div class="booking-item booking-item-small">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <img src="images/4wheel-bedroom2.jpg" alt="Image Alternative text"
                                                title="hotel PORTO BAY RIO INTERNACIONAL de luxe" />
                                        </div>
                                        <div class="col-xs-5">
                                            <h5 class="booking-item-title">
                                                Our hotel rooms</h5>
                                            <ul class="icon-group booking-item-rating-stars">
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star-half-empty"></i></li>
                                            </ul>
                                        </div>
                                        <div class="col-xs-3">
                                            <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                            <tourtraveln class="booking-item-price">350php</tourtraveln>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h3>
                            Pavilion </h3>
                        <ul class="booking-list">
                            <li>
                                <div class="booking-item booking-item-small">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <img src="images/pavilion.jpg"
                                                alt="Image Alternative text" title="LHOTEL PORTO BAY SAO PAULO suite lhotel living room" />
                                        </div>
                                        <div class="col-xs-5">
                                            <h5 class="booking-item-title">
                                                Our Pavilion</h5>
                                            <ul class="icon-group booking-item-rating-stars">
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star-half-empty"></i></li>
                                            </ul>
                                        </div>
                                        <div class="col-xs-3">
                                            <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                            <tourtraveln class="booking-item-price">1k php</tourtraveln>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h3>
                            Pool </h3>
                        <ul class="booking-list">
                            <li>
                                <div class="booking-item booking-item-small">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <img src="images/pool.jpg" alt="Image Alternative text"
                                                title="hotel PORTO BAY RIO INTERNACIONAL de luxe" />
                                        </div>
                                        <div class="col-xs-5">
                                            <h5 class="booking-item-title">
                                                Our Pool</h5>
                                            <ul class="icon-group booking-item-rating-stars">
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star-half-empty"></i></li>
                                                <li><i class="fa fa-star-o"></i></li>
                                            </ul>
                                        </div>
                                        <div class="col-xs-3">
                                            <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                            <tourtraveln class="booking-item-price">150php</tourtraveln>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- // end booking section -->
        <!-- start content -->
        <section class="page_section">         
            <!-- section header -->
            <header class="head_section center_section">
                <div class="container">
                    <h1>Welcome to El Marfin Hotel and Pavilion</h1>
                    <div class="separator"></div>
                    <p>A travel document is an identity document issued by a government or international treaty organization to facilitate the movement of individuals or small groups of persons across international boundaries. Travel documents usually assure other governments that the bearer may return to the issuing country, and are often issued in booklet form to allow other governments to place visas as well as entry and exit stamps into them.</p>
                </div><!-- end .container -->
            </header>
            <!-- //section header -->
                      
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="icon-banner">
                        	<a href="javascript:void(0);">
                                <div class="icon">
                                	<img alt="" src="images/pavilion.jpg">
                                </div>
                                <h3>The Pavilion</h3>
                                <div class="separator"></div>
                            	<p>Whether you're taking a long vacation, working abroad or just looking for something out of the ordinary, with a multi-city ticket from STA Travel, you can travel further and discover.</p>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="icon-banner">
                        	<a href="javascript:void(0);">
                                <div class="icon">
                                	<img alt="" src="images/pool.jpg">
                                </div>
                                <h3>The Pool</h3>
                                <div class="separator"></div>
                            	<p>Whether you're taking a long vacation, working abroad or just looking for something out of the ordinary, with a multi-city ticket from STA Travel, you can travel further and discover more of this amazing planet.</p>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="icon-banner">
                        	<a href="javascript:void(0);">
                                <div class="icon">
                                    <img alt="" src="images/4wheel-bedroom2.jpg" />
                                </div>
                                <h3>Our Hotel</h3>
                                <div class="separator"></div>
                            	<p>Whether you're taking a long vacation, working abroad or just looking for something out of the ordinary, with a multi-city ticket from STA Travel, you can travel further and discover more of this amazing planet.</p>
                            </a>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div><!-- end .container -->
        </section>
        <!-- //end start content -->
        <!-- about content-->
        <section class="page_section" id="about">                     
            <!-- section content -->   
            <div class="container wow fadeInUp">            				
                <div class="about_block bg_gray mb30">                	              	
                    <div class="col_cont">                    	                     	
                        <div class="wrap_cont">                        	
                            <header class="head_section">                            	                         	
                            	<h2>El Marfin</h2>
                                <TourTraveln>History</TourTraveln>
                              <div class="separator left"></div>                              	
                            </header>
                            <p>Whether you're taking a long vacation, working abroad or just looking for something out of the ordinary, with a multi-city ticket from STA Travel, you can travel further and discover more of this amazing planet.</p> 
							<p>Create a trip that is uniquely yours or choose from our sample Round the World and multi-stop routes. Whatever you're looking for, our travel experts can help you create your perfect multi-city adventure. </p>
                            <asp:HyperLink ID="rd1" class="shortcode_button" runat="server" NavigateUrl="#">Read More</asp:HyperLink>                            
                        </div>
                    </div>                     
                    <div class="col_img"></div>	
                    <div class="clear"></div>
                </div>
            </div>                                	
			<!-- //section content --> 
        </section>
        <!-- //end about content-->
        <!-- services content -->
        <section class="page_section" id="services">
            <div class="container block-wrap wow fadeInUp">
            	<div class="row carousel-box">
                	<div class="col-md-3">
                    	<div class="control-block bg_black block">
                        	<header class="head_section">
                            	<div class="icon-write">
                                  <i class="pe-5x pe-va pe-7s-diamond"></i> 
                                </div> 
                           	  <h2>Our FEATURED</h2>
                                <Tour Traveln>SERVICES</Tour Traveln>
                              <div class="separator left"></div>
                            </header>
                            <p>Take a look at some of our favourite multi-stop and Round the World flights.</p>
							<p>We recommend the following order for journey and services:</p>
                        	<div class="customNavigation">
                            	<a class="btn-prev"><i class="fa fa-angle-left"></i></a>
                            	<a class="btn-next"><i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        function newTab() {
                            window.open('Reservation.aspx');
                        }

                    </script>
                    <div class="col-md-9">
                    	<div class="owl-carousel">
                        	<div class="item-service block">                            	                       	 
								<img src="images/2wheel-bedroom.jpg" alt="">
                            	<div class="cont">
                                    <h4>Hotel</h4>
                                    <div class="separator"></div>
                                    <p>If you’re asking whether you’ll disappear into the ether if your ticket doesn’t complete a full circuit of the Earth, then the answer is ‘no’, you’re good.</p>
                                   
                                    <asp:Button class="shortcode_button" runat="server" Text="Reserve" OnClick="Unnamed_Click" OnClientClick="newTab()">
                                         
                                    </asp:Button>
                                </div>
                            </div>
                            <div class="item-service block">
                                <img src="images/pavilion.jpg" alt="">
                            	<div class="cont">
                                    <h4>Pavilion</h4>
                                    <div class="separator"></div>
                                    <p>If you’re asking whether you’ll disappear into the ether if your ticket doesn’t complete a full circuit of the Earth, then the answer is ‘no’, you’re good.</p>
                                  
                                   <asp:Button ID="Button2" class="shortcode_button" runat="server" Text="Reserve" OnClick="Button2_Click" OnClientClick="newTab()">
                                        
                                    </asp:Button>
                                </div>
                            </div>
                            <div class="item-service block">   
                                <img src="images/pool.jpg" alt=""/>                        
                            	<div class="cont">
                                    <h4>Pool</h4>
                                    <div class="separator"></div>
                                    <p>If you’re asking whether you’ll disappear into the ether if your ticket doesn’t complete a full circuit of the Earth, then the answer is ‘no’, you’re good.</p>
                                    <asp:Button ID="Button3" class="shortcode_button" runat="server" Text="Reserve" OnClick="Button3_Click" OnClientClick="newTab()">
                                        
                                    </asp:Button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- end .container -->
        </section>
        <!-- //end services content-->
       
        <!-- portfolio content-->
        <section class="page_section" id="portfolio">
            <!-- section header -->
            <header class="head_section center_section">
                <div class="container">
                    <h2>Our Awesome Services</h2>
                    <div class="separator"></div>
                    <p>Our unique airline partnerships mean you always get the lowest fares around with great flexibility.</p>
                </div><!-- end .container -->
            </header>
            <!-- //section header --> 
            
            <!-- section content --> 
            <div class="portfolio-block">           
                <div class="container wow fadeInUp">
                    <ul class="portfolio-menu" id="filters">
                        <li class="active"><a data-filter="*">All</a></li>
                        <li><a data-filter=".fly">Hotel</a></li>
                        <li><a data-filter=".hotel">Pavilion</a></li>
                        <li><a data-filter=".air">Pool</a></li>
                        <li><a data-filter=".car">Pavilion with Pool</a></li>
                    </ul>
                    <div class="row portfolio-list image-grid">
                        <div class="item col-md-4 col-sm-4 col-xs-12 fly air car">

                            <a href="images/2wheel-bedroom.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/2wheel-bedroom.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Airconditioned Rooms</h4>
                                        <div class="separator"></div>
                                        <p>Spacious, bright and outward facing rooms</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 hotel air">
                            <a href="images/4wheel-bedroom2.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/4wheel-bedroom2.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Airconditioned Rooms</h4>
                                        <div class="separator"></div>
                                        <p>Spacious, bright and outward facing rooms</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 air">
                           <a href="images/2wheel-bedroom.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/2wheel-bedroom.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Airconditioned Rooms</h4>
                                        <div class="separator"></div>
                                        <p>Spacious, bright and outward facing rooms</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 car air">
                            <a href="images/4wheel-bedroom2.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/4wheel-bedroom2.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Airconditioned Rooms</h4>
                                        <div class="separator"></div>
                                        <p>Spacious, bright and outward facing rooms</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 hotel">
                           <a href="images/2wheel-bedroom.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/2wheel-bedroom.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Airconditioned Rooms</h4>
                                        <div class="separator"></div>
                                        <p>Spacious, bright and outward facing rooms</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 fly hotel">
                            <a href="images/4wheel-bedroom2.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/4wheel-bedroom2.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Airconditioned Rooms</h4>
                                        <div class="separator"></div>
                                        <p>Spacious, bright and outward facing rooms</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 air hotel">
                            <a href="images/2wheel-bedroom.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/2wheel-bedroom.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Airconditioned Rooms</h4>
                                        <div class="separator"></div>
                                        <p>Spacious, bright and outward facing rooms</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 fly car">
                            <a href="images/4wheel-bedroom2.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/4wheel-bedroom2.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Airconditioned Rooms</h4>
                                        <div class="separator"></div>
                                        <p>Spacious, bright and outward facing rooms</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 fly car">
                            <a href="images/2wheel-bedroom.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/2wheel-bedroom.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Airconditioned Rooms</h4>
                                        <div class="separator"></div>
                                        <p>Spacious, bright and outward facing rooms</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="app-item"><a class="shortcode_button add-item">Load More</a></div>  
                </div>                                                                    
			</div>
            <!-- //section content -->    
        </section>
        <!-- //end portfolio content-->
        <!-- pricing content-->
        <section class="page_section">      
            <!-- section content -->
            <div class="container wow fadeInUp">
            	<div class="pricing_block bg_gray">
                    <!-- section header -->
                    <header class="head_section center_section">
                        <h2>Our Packages</h2>
                        <div class="separator"></div>
                        <p>Indulge in one of our packages and enjoy a stay filled with our most popular Style Hotels.</p>
                    </header>
                    <!-- //section header --> 
                    <div class="price-item">
                        <div class="type"><Tour Traveln>Our Package Number 1</Tour Traveln></div>
                        <div class="pricelist"><Tour Traveln>₱18,000.00</Tour Traveln></div>
                        <div class="cont">
                            <ul>
                                <li>Pavilion and Pool</li>
                                <li>Maximum of 400 pax (8 hours use)</li>
                                <li>Uses of Par lights</li>
                                <li>Dining with kitchen and grilling area</li>
                                <li>1 Airconditioned room (8 hours use)</li>
                                <li>No corkage fee for catering, drinks, foods, sounds and photobooth</li>
                                <li>Free use of location pre-nuptial</li>
                                <li>In excess of 8 hours ₱1,500/exceeding hour</li>
                            </ul>
                        </div>
                        <a href="#" target="_blank" class="shortcode_button">Buy Now</a>
                        </div><div class="price-item">
                        <div class="type"><Tour Traveln>Our Package Number 2</Tour Traveln></div>
                        <div class="pricelist"><Tour Traveln>₱5,000.00 - day (8-5 pm) <br> ₱6,500.00 - night (6pm - 6am)</Tour Traveln></div>
                        <div class="cont">
                            <ul>
                                <li>Pool only</li>
                                <li>5 Kubo</li>
                                <li>Dining with kitchen and grilling area</li> 
                                <li>In excess hours of use ₱500/hour</li>
                                <li>50% downpayment upon reservation (non-refundable)</li> 
                                <li>50% Balance a week before the event</li>
                                <li>Strictly Maximum of 40 adults & 20 kids</li> 
                            </ul>
                        </div>
                        <a href="#" target="_blank" class="shortcode_button">Buy Now</a>
                    </div>
                </div>
            </div>
			<!-- //section content --> 
        </section>
        <!-- //end pricing content-->
        
        <!-- contact content-->
        <section class="page_section" id="contact">
            <div class="container block-wrap wow fadeInUp">
            	<div class="row">
                	<div class="col-md-3">
                    	<div class="info-block bg_colored block">
                        	<header class="head_section">
                            	<div class="icon-write">
                                  <i class="pe-5x pe-va pe-7s-diamond"></i> 
                                </div> 
                              <h2>WRITE US</h2>
                                <div class="separator left"></div>
                            </header>
                            <p>We value your opinion regarding our service and facilities. Please feel free to contact us with your thoughts.</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                    	<div class="contact_form block">
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div id="note"></div>
                                </div>   
                            </div> 
                            <div id="fields"> 
                                <form id="ajax-contact-form" class="row" action="#">                        
                                    <div class="col-md-6 col-sm-6">
                                        <asp:TextBox ID="txt_name" class="inp" name="name" placeholder="Name" title="Name" runat="server"></asp:TextBox>                               
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <asp:TextBox ID="txt_email" class="inp" name="email" placeholder="Email" title="Email" runat="server"></asp:TextBox>  
                                    </div>
                                    <div class="clear"></div>
                                    <div class="col-md-6 col-sm-6">
                                        <asp:TextBox ID="txt_contactnumber" class="inp" name="phone" placeholder="Phone" title="Phone" runat="server"></asp:TextBox>  
                                    </div>
                                    <div class="clear"></div>
                                    <div class="clear"></div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txt_message" TextMode="MultiLine" Rows="4" class="inp" name="message" placeholder="Message" title="Message" runat="server"></asp:TextBox>  
                                    </div>                                     
                                    <div class="col-md-12"><asp:Button class="shortcode_button" ID="Button1" runat="server" Text="Send message" OnClick="Button1_Click" /></div>
                                </form> 
                            </div> 
                        </div>                
                    </div>
                    <div class="col-md-3">
                    	<div class="info-block bg_black block">
                        	<header class="head_section">
                            	<div class="icon-write">
                                  <i class="pe-5x pe-va pe-7s-diamond"></i> 
                                </div> 
                              <h2>CONTACT</h2>
                                <Tour Traveln>DETAILS</Tour Traveln>
                              <div class="separator left"></div>
                            </header>
                            <p>Address: San Vicente</p>
                            <p>San Vicente</p>
                            <p>Bulacan</p>
                            <p>Phone: 09051687645</p>
                            <p>Email: elmarfinhotel&pavilion@gmail.com </p>
                        </div>
                    </div>
                </div>
            </div><!-- end .container -->
        </section>
        <!-- //end contact content-->
        <!-- map section-->
        <div class="map-canvas">
            <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d193572.00379171042!2d-73.97800350000001!3d40.70563080000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1s87-89+E+4th+St%2C+New+York%2C+NY+10003%2C+Stati+Uniti!5e0!3m2!1sit!2sit!4v1416499866904">
            </iframe>
        </div>
        <!-- /end map section -->
         

        <!--footer-->
        <div class="footer">
            <!-- footer_bottom -->
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="footer_block">
                            <div class="title">
                                <h3>
                                    Recent Posts</h3>
                            </div>
                            <ul class="list-posts">
                                <li>
                                    <p>
                                        Enjoy a classic manicure or pedicure with a chocolate sugar exfoliation, chocolate
                                        mask for the feet.</p>
                                    <tourtraveln class="date">13, Nov. 2015</tourtraveln>
                                    <a href="#">By Admin</a> </li>
                                <li>
                                    <p>
                                        We value your opinion regarding our service and facilities.</p>
                                    <tourtraveln class="date">14, Nov. 2015</tourtraveln>
                                    <a href="#">By Admin</a> </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="footer_block">
                            <div class="title">
                                <h3>
                                    Opening Hours</h3>
                            </div>
                            <div class="working_hours">
                                <ul>
                                    <li>
                                        <tourtraveln><i class="fa fa-clock-o"></i>Monday - Tuesday</tourtraveln>
                                        <tourtraveln>
                                        06.00 - 22.00</Tour Traveln> </li>
                                    <li>
                                        <tourtraveln><i class="fa fa-clock-o"></i>Friday</tourtraveln>
                                        <tourtraveln>06.00 - 23.00</tourtraveln>
                                    </li>
                                    <li>
                                        <tourtraveln><i class="fa fa-clock-o"></i>Saturday</tourtraveln>
                                        <tourtraveln>06.00 - 23.30</tourtraveln>
                                    </li>
                                    <li>
                                        <tourtraveln><i class="fa fa-clock-o"></i>Sunday</tourtraveln>
                                        <tourtraveln>06.00 - 21.00</tourtraveln>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="footer_block">
                            <div class="title">
                                <h3>
                                    Newsletter Signup</h3>
                            </div>
                            <p>
                                Signup to our weekly newsletter and receive our great promotions. We'll keep you
                                updated.</p>
                            <div class="ns_block">
                                <input type="text" class="ns_input" placeholder="Email address" title="Email address">
                                <input type="submit" class="shortcode_button" value="Sign Up">
                            </div>
                            <div class="social">
                                <a href="#" class="soc-f">El</a> <a href="#" class="soc-t">M</a> <a href="#" class="soc-g">
                                    ar</a> <a href="#" class="soc-n">fin</a> <a href="#" class="soc-v">hotel</a> <a href="#"
                                        class="soc-r">and</a> <a href="#" class="soc-i">Pavilion</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="copyright">
                    &copy; Copyright 2017. El Marfin Hotel and Pavilion All Rights Reserved.
                </div>
            </div>
            <!-- //footer_bottom -->
        </div>
        <!--//footer-->
    </div>
    <!-- end #page -->
    <header class="fixed-menu"></header>
    <!-- javascript files-->
    <script type="text/javascript" src="js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="js/sorting.js"></script>
    <script src="js/homePopupLoad.js" type="text/javascript"></script>
    <script src="js/homePopup.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/plugins.js"></script>
    <script type="text/javascript" src="js/current.js"></script>
    <script type="text/javascript" src="js/wow.min.js"></script>
    <!-- animation on scrolling-->
    <script>
        new WOW().init();
    </script>
    </form>
</body>
</html>
