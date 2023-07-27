<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>



<!DOCTYPE html>
<html lang="ko">


<%@include file = "../include/head.jsp"%>
<%@include file = "../include/header.jsp"%>

	<section id="hero" class="background-image" data-background="url()">
	
        <div class="opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.6)">
        
            <div class="intro_title">
            
                <h3 class="animated fadeInDown">기차 여행 A to Z 는 여기에서! </h3>
                <p class="animated fadeInDown">기차 승차권 / 숙소 / 모든 입장권</p>
                <a href="#" class="animated fadeInUp button_intro">View Tours</a> <a href="#" class="animated fadeInUp button_intro outline">View Tickets</a>
            </div>
            <div id="search_bar_container">
                <div class="container">
                    <div class="search_bar">
                        <span class="nav-facade-active" id="nav-search-in">
                            <span id="nav-search-in-content" style="">All tours</span>
                            <span class="nav-down-arrow nav-sprite"></span>
                            <select title="Search in" class="searchSelect" id="searchDropdownBox" name="tours_category">
                                <option value="All Tours" title="All Tours">한 눈에 보기</option>
                                <option value="TrainTickets" title="TrainTickets">승차권</option>
                                <option value="Accommodation" title="Accommodation">숙소</option>
                                <option value="Tickets" title="Tickets">입장권</option>

                            </select>
                        </span>
                        <div class="nav-searchfield-outer">
                            <input type="text" autocomplete="off" name="field-keywords" placeholder="Type your search terms ...." id="twotabsearchtextbox">
                        </div>
                        <div class="nav-submit-button">
                            <input type="submit" title="Cerca" class="nav-submit-input" value="Search">
                        </div>
                    </div>
                    <!-- End search bar-->
                </div>
            </div>
            <!-- /search_bar-->
        </div>
        <!-- End opacity-mask-->
    </section>
    <!-- End hero -->

	<main>
	<div class="container margin_60">
    
        <div class="main_title">
            <h2><span>Top</span> Accommodation</h2>
            <p>현재 가장 인기있는 숙소를 살펴보세요! </p>
        </div>
        
        <div class="row">
        
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="roomDetailInfo01">
                        <img src="resources/assets/img/accommodation/hotel/seoul/01/01.jpg" width="800" height="533" class="img-fluid" alt="Image">

                        </a>
                    </div>
                    <div class="tour_title">
                        <h3><strong>신라 스테이 삼성</strong></h3>
                        <div class="rating">
                            <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                        </div><!-- end rating -->
                        <div class="wishlist">
                            <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
                        </div><!-- End wish list-->
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.2s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/accommodation/hotel/seoul/02/02_1.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="badge_save">Save<strong>30%</strong></div>
                        <div class="short_info">
                            <i class="icon_set_1_icon-43"></i>Churches<span class="price"><sup>$</sup>45</span>
                        </div>
                        </a>
                    </div>
                    <div class="tour_title">
                        <h3><strong>AC호텔 바이 메리어트 서울 강남</strong></h3>
                        <div class="rating">
                            <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                        </div><!-- end rating -->
                        <div class="wishlist">
                            <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
                        </div><!-- End wish list-->
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.3s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="roomDetailInfo02">
                        <img src="resources/assets/img/accommodation/pension/gyunggido/01/01.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>48</span>
                        </div>
                        </a>
                    </div>
                    <div class="tour_title">
                        <h3><strong>스마일카라반 펜션</strong></h3>
                        <div class="rating">
                            <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                        </div><!-- end rating -->
                        <div class="wishlist">
                            <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
                        </div><!-- End wish list-->
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.4s">
                <div class="tour_container">
					<div class="ribbon_3"><span>Top rated</span></div>
                    <div class="img_container">
                        <a href="roomDetailInfo02">
                        <img src="resources/assets/img/accommodation/pension/gyunggido/02/02.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="badge_save">Save<strong>30%</strong></div>
                        <div class="short_info">
                            <i class="icon_set_1_icon-30"></i>Walking tour<span class="price"><sup>$</sup>36</span>
                        </div>
                        </a>
                    </div>
                    <div class="tour_title">
                        <h3><strong>풀빌라 림</strong> </h3>
                        <div class="rating">
                            <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                        </div><!-- end rating -->
                        <div class="wishlist">
                            <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
                        </div><!-- End wish list-->
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.5s">
                <div class="tour_container">
					<div class="ribbon_3"><span>Top rated</span></div>
                    <div class="img_container">
                        <a href="roomDetailInfo03">
                        <img src="resources/assets/img/accommodation/condo/gangwondo/01/01.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-28"></i>Skyline tours<span class="price"><sup>$</sup>42</span>
                        </div>
                        </a>
                    </div>
                    <div class="tour_title">
                        <h3><strong>하이원리조트 마운틴콘도</strong></h3>
                        <div class="rating">
                            <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                        </div><!-- end rating -->
                        <div class="wishlist">
                            <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
                        </div><!-- End wish list-->
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.6s">
                <div class="tour_container">
					<div class="ribbon_3"><span>Top rated</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/accommodation/condo/gangwondo/02/02.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>40</span>
                        </div>
                        </a>
                    </div>
                    <div class="tour_title">
                        <h3><strong>하이원리조트 힐콘도</strong></h3>
                        <div class="rating">
                            <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                        </div><!-- end rating -->
                        <div class="wishlist">
                            <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
                        </div><!-- End wish list-->
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.7s">
                <div class="tour_container">
					<div class="ribbon_3"><span>Top rated</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/accommodation/condo/gangwondo/03/03.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-3"></i>City sightseeing<span class="price"><sup>$</sup>35</span>
                        </div>
                        </a>
                    </div>
                    <div class="tour_title">
                        <h3><strong>현대아이파크콘도</strong></h3>
                        <div class="rating">
                            <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                        </div><!-- end rating -->
                        <div class="wishlist">
                            <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
                        </div><!-- End wish list-->
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.8s">
                <div class="tour_container">
					<div class="ribbon_3"><span>Top rated</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/accommodation/condo/gangwondo/04/04.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-4"></i>Museums<span class="price"><sup>$</sup>38</span>
                        </div>
                        </a>
                    </div>
                    <div class="tour_title">
                        <h3><strong>오션투유리조트 설악비치 호텔&콘도</strong></h3>
                        <div class="rating">
                            <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                        </div><!-- end rating -->
                        <div class="wishlist">
                            <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
                        </div><!-- End wish list-->
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.9s">
                <div class="tour_container">
					<div class="ribbon_3"><span>Top rated</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/accommodation/condo/gangwondo/05/05.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-14"></i>Eat &amp; drink<span class="price"><sup>$</sup>25</span>
                        </div>
                        </a>
                    </div>
                    <div class="tour_title">
                        <h3><strong>금강산 콘도</strong></h3>
                        <div class="rating">
                            <i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile voted"></i><i class="icon-smile"></i><small>(75)</small>
                        </div><!-- end rating -->
                        <div class="wishlist">
                            <a class="tooltip_flip tooltip-effect-1" href="javascript:void(0);">+<span class="tooltip-content-flip"><span class="tooltip-back">Add to wishlist</span></span></a>
                        </div><!-- End wish list-->
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            
        </div><!-- End row -->
		<div class="d-flex justify-content-around">
        <p class="text-center nopadding">
            <a href="hotel02" class="btn_1 medium"><i class="icon-eye-7"></i>View hotel tours (144) </a>
        </p>
                <p class="text-center nopadding">
            <a href="pension02" class="btn_1 medium"><i class="icon-eye-7"></i>View pension tours (144) </a>
        </p>
                <p class="text-center nopadding">
            <a href="condo02" class="btn_1 medium"><i class="icon-eye-7"></i>View condo tours (144) </a>
        </p>
        </div>
    </div><!-- End container -->
    
    <div class="white_bg">
			<div class="container margin_60">
				<div class="main_title">
					<h2>Now <span>Popular</span> Train Tours</h2>
					<p>
						현재 가장 예약률이 높은 승차권 순이에요! 
					</p>
				</div>
				<div class="row add_bottom_45">
					<div class="col-lg-4 other_tours">
						<ul>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>서울 <-> 부산<span class="other_tours_price">$42</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>서울 <-> 강릉<span class="other_tours_price">$35</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>서울 <-> 여수<span class="other_tours_price">$20</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>서울 <-> 정동진<span class="other_tours_price">$26</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>서울 <-> 신경주<span class="other_tours_price">$26</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>서울 <-> 광주송정<span class="other_tours_price">$32</span></a>
							</li>
						</ul>
					</div>
					<div class="col-lg-4 other_tours">
						<ul>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>Notredame<span class="other_tours_price">$48</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>Lafaiette<span class="other_tours_price">$55</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>Trocadero<span class="other_tours_price">$76</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>Open Bus tour<span class="other_tours_price">$55</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>Louvre museum<span class="other_tours_price">$24</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>Madlene Cathedral<span class="other_tours_price">$24</span></a>
							</li>
						</ul>
					</div>
					<div class="col-lg-4 other_tours">
						<ul>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>Montparnasse<span class="other_tours_price">$36</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>D'Orsey museum<span class="other_tours_price">$28</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>Gioconda Louvre musuem<span class="other_tours_price">$44</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>Tour Eiffel<span class="other_tours_price">$56</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>Ladefanse<span class="other_tours_price">$16</span></a>
							</li>
							<li><a href="#"><i class=" icon_set_1_icon-5"></i>Notredame<span class="other_tours_price">$26</span></a>
							</li>
						</ul>
					</div>
				</div>
				<!-- End row -->

				<div class="banner colored">
					<h4>Discover our Top tours <span>from $34</span></h4>
					<p>
						Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in.
					</p>
					<a href="single_tour.html" class="btn_1 white">Read more</a>
				</div>
				
				<div class="row">
					<div class="col-lg-3 col-md-6 text-center">
						<p>
							<a href="#"><img src="resources/assets/img/bus.jpg" alt="Pic" class="img-fluid rounded"></a>
						</p>
						<h4><span>Sightseen tour</span> booking</h4>
						<p>Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in.</p>
					</div>
					<div class="col-lg-3 col-md-6 text-center">
						<p>
							<a href="#"><img src="resources/assets/img/transfer.jpg" alt="Pic" class="img-fluid rounded"></a>
						</p>
						<h4><span>Transfer</span> booking</h4>
						<p>Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in.</p>
					</div>
					<div class="col-lg-3 col-md-6 text-center">
						<p>
							<a href="#"><img src="resources/assets/img/guide.jpg" alt="Pic" class="img-fluid rounded"></a>
						</p>
						<h4><span>Tour guide</span> booking</h4>
						<p>Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in.</p>
					</div>
					<div class="col-lg-3 col-md-6 text-center">
						<p>
							<a href="#"><img src="resources/assets/img/hotel.jpg" alt="Pic" class="img-fluid rounded"></a>
						</p>
						<h4><span>Hotel</span> booking</h4>
						<p>Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in.</p>
					</div>
				</div>
				<!-- End row -->
				
			</div>
			<!-- End container -->
		</div>
		<!-- End white_bg -->

		<section class="promo_full">
			<div class="promo_full_wp magnific">
				<div>
					<h3>BELONG ANYWHERE</h3>
					<p>
						Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset, doctus volumus explicari qui ex.
					</p>
					<a href="https://www.youtube.com/watch?v=Zz5cu72Gv5Y" class="video"><i class="icon-play-circled2-1"></i></a>
				</div>
			</div>
		</section>
		<!-- End section -->

		<div class="container margin_60">

			<div class="main_title">
				<h2>Some <span>good</span> reasons</h2>
				<p>
					Quisque at tortor a libero posuere laoreet vitae sed arcu. Curabitur consequat.
				</p>
			</div>

			<div class="row">

				<div class="col-lg-4 wow zoomIn" data-wow-delay="0.2s">
					<div class="feature_home">
						<i class="icon_set_1_icon-41"></i>
						<h3><span>+120</span> Premium tours</h3>
						<p>
							Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset.
						</p>
						<a href="about.html" class="btn_1 outline">Read more</a>
					</div>
				</div>

				<div class="col-lg-4 wow zoomIn" data-wow-delay="0.4s">
					<div class="feature_home">
						<i class="icon_set_1_icon-30"></i>
						<h3><span>+1000</span> Customers</h3>
						<p>
							Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset.
						</p>
						<a href="about.html" class="btn_1 outline">Read more</a>
					</div>
				</div>

				<div class="col-lg-4 wow zoomIn" data-wow-delay="0.6s">
					<div class="feature_home">
						<i class="icon_set_1_icon-57"></i>
						<h3><span>H24 </span> Support</h3>
						<p>
							Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset.
						</p>
						<a href="about.html" class="btn_1 outline">Read more</a>
					</div>
				</div>

			</div>
			<!--End row -->

			<hr>

			<div class="row">
				<div class="col-md-6">
					<img src="resources/assets/img/laptop.png" alt="Laptop" class="img-fluid laptop">
				</div>
				<div class="col-md-6">
					<h3><span>Get started</span> with CityTours</h3>
					<p>
						Lorem ipsum dolor sit amet, vix erat audiam ei. Cum doctus civibus efficiantur in. Nec id tempor imperdiet deterruisset.
					</p>
					<ul class="list_order">
						<li><span>1</span>Select your preferred tours</li>
						<li><span>2</span>Purchase tickets and options</li>
						<li><span>3</span>Pick them directly from your office</li>
					</ul>
					<a href="all_tour_list.html" class="btn_1">Start now</a>
				</div>
			</div>
			<!-- End row -->
        
    	</div>
		<!-- End container -->
    </main>
	<!-- End main -->
	

<%@include file = "../include/footer.jsp"%>
<%@include file = "../include/script.jsp"%>

	<script>
		//Search bar
		$(function() {
			"use strict";
			$("#searchDropdownBox").change(function() {
				var Search_Str = $(this).val();
				//replace search str in span value
				$("#nav-search-in-content").text(Search_Str);
			});
		});
	</script>
	

  </body>
</html>