<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>


<body>

    <div id="preloader">
        <div class="sk-spinner sk-spinner-wave">
            <div class="sk-rect1"></div>
            <div class="sk-rect2"></div>
            <div class="sk-rect3"></div>
            <div class="sk-rect4"></div>
            <div class="sk-rect5"></div>
        </div>
    </div>
    <!-- End Preload -->

    <div class="layer"></div>
    
    <!-- Mobile menu overlay mask -->

    <!-- Header================================================== -->
    <header>
        <div id="top_line">
            <div class="container">
                <div class="row">
                    <div class="col-6" style="margin-top: 5px;"><i class="icon-phone"></i><strong>02-1993-0914</strong></div>
                    <div class="col-6" style="margin-top: 5px;">
                        <ul id="top_links">
                            <li><a href="indexUsrLogin"  style="font-style: normal;" ><i class="icon-login-1"></i>Log in</a></li>
                            <li><a href="indexUsrSignUp" id="signUp"  style="font-style: normal;" ><i class="icon-user-add" > </i>Sign up</a></li>
                            <li><a href="#none" id="wishlist_link">Wishlist</a></li>
<!--                             <li><a href="http://themeforest.net/item/citytours-city-tours-tour-tickets-and-guides/10715647?ref=ansonika">Purchase this template</a></li> -->
                        </ul>
                    </div>
                </div><!-- End row -->
            </div><!-- End container-->
        </div><!-- End top line-->
        
        <div class="container">
            <div class="row">
                <div class="col-3">
                    <div id="logo_home">
                    	<h1><a href="index.html" title="City tours travel template"style="background-image:url('/resources/assets/img/background_img/train_icon.svg');">City Tours travel template</a></h1>
                    </div>
                </div>
                <nav class="col-9">
                    <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
                    <div class="main-menu">
                        <div id="header_menu">
                            <img src="/resources/assets/img/logo.png" width="160" height="34" alt="City tours">
                        </div>
                        <a href="#" class="open_close" id="close_in"><i class="icon_set_1_icon-77"></i></a>
                        <ul class="d-flex justify-content-end">
                            <li class="submenu">
                                <a href="javascript:void(0);" class="show-submenu" style="color: #e04f67;">Home <i class="icon-down-open-mini"></i></a>
                                <ul>
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="/trainUsrList">기차 노선</a></li>
                                    <li><a href="/hotelUsrList">숙소</a></li>
                                    <li><a href="/indexUsrTicket">입장권</a></li>
                                    <li class="third-level"><a href="javascript:void(0);">지역</a>
                                        <ul>
                                            <li><a href="#" data-toggle="modal" data-target="#myModal">서울</a></li>
                                            <li><a href="#" data-toggle="modal" data-target="#myModal">경기/인천</a></li>
                                            <li><a href="#" data-toggle="modal" data-target="#myModal">충청</a></li>
                                            <li><a href="#" data-toggle="modal" data-target="#myModal">강원</a></li>
                                            <li><a href="#" data-toggle="modal" data-target="#myModal">전라</a></li>
                                            <li><a href="#" data-toggle="modal" data-target="#myModal">경상</a></li>

                                        </ul>
                                    </li>

                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="javascript:void(0);" class="show-submenu" style="color: #e04f67;">Tours <i class="icon-down-open-mini"></i></a>
                                <ul>
                                    <li><a href="bookingUsrView">예약 페이지</a></li>
                                    <li><a href="all_tours_grid.html"></a></li>
                                    <li><a href="all_tours_grid_masonry.html">All tours Sort Masonry</a></li>
                                    <li><a href="all_tours_map_listing.html">All tours map listing</a></li>
                                    <li><a href="single_tour.html">Single tour page</a></li>
                                    <li><a href="single_tour_with_gallery.html">Single tour with gallery</a></li>
                                    <li class="third-level"><a href="javascript:void(0);">Single tour fixed sidebar</a>
                                        <ul>
                                            <li><a href="single_tour_fixed_sidebar.html">Single tour fixed sidebar</a></li>
                                            <li><a href="single_tour_with_gallery_fixed_sidebar.html">Single tour 2 Fixed Sidebar</a></li>
                                            <li><a href="cart_fixed_sidebar.html">Cart Fixed Sidebar</a></li>
                                            <li><a href="payment_fixed_sidebar.html">Payment Fixed Sidebar</a></li>
                                            <li><a href="confirmation_fixed_sidebar.html">Confirmation Fixed Sidebar</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="single_tour_working_booking.php">Single tour working booking</a></li>
                                    <li><a href="cart.html">Single tour cart</a></li>
                                    <li><a href="payment.html">Single tour booking</a></li>
                                </ul>
                            </li>
                            <li class="col-1"></li>
                        </ul>
                    </div><!-- End main-menu -->
                    <ul id="top_tools">
                        <li>
                            <a href="javascript:void(0);" class="search-overlay-menu-btn" style="color: #e04f67;"><i class="icon_search"></i></a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div><!-- container -->	
        
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		    <div class="modal-dialog modal-dialog-centered" role="document">
		        <div class="modal-content">
		            <div class="modal-header">
		                <h5 class="modal-title" id="myModalLabel">선택해주세요</h5>

		            </div>
		            <div class="modal-body d-flex  justify-content-around" id="modal-body">
		                <button type="button" class="btn btn-primary ">기차 노선</button>
		                <button type="button" class="btn btn-success ">숙소</button>
		                <button type="button" class="btn btn-warning">입장권</button>
		            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
		                <button type="button" class="btn btn-danger">확인</button>
		            </div>
		        </div>
		    </div>
		</div>
        
        
    </header><!-- End Header -->