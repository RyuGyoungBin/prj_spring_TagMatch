<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html lang="ko">

<%@include file = "../include/head.jsp"%>
<%@include file = "../include/header.jsp"%>




	<section class="parallax-window" data-parallax="scroll"
		data-natural-height="470">
		<img
			src="/resources/assets/img/background_img/seoulStation.jpg;"
			alt="" style="width: 100%; height: 470px;">
		<div class="parallax-content-1 opacity-mask"
			data-opacity-mask="rgba(0, 0, 0, 0.6)">

			<div class="animated fadeInDown">

				<h1>기차 노선도</h1>
				<p></p>
			</div>
		</div>
	</section>
	<!-- End section -->




	<main>
	<form method="post" >
		
	    
	    
		<div id="position">
			<div class="container">
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">Category</a></li>
					<li>Page active</li>
				</ul>
			</div>
		</div>
		<!-- Position -->





		<div class="container margin_60">
			 
			<div class="row">
				<aside class="col-lg-3">
					<div class="box_style_cat">
						<ul id="cat_nav">
							<li><a href="/trainUsrView" id="active"><i class=" icon-sort-up"></i>KTX</a></li>
							<li><a href="#none"><i class=" icon-sort-up"></i>ITX-청춘</a>
							</li>
							<li><a href="#none"><i class=" icon-sort-up"></i>새마을호/ITX-새마을</a>
							</li>
							<li><a href="#none"><i class="icon_set_1_icon-44"></i>무궁화호/누리호</a>

						</ul>
					</div>

					<div id="filters_col">
						<a data-bs-toggle="collapse" href="#collapseFilters"
							aria-expanded="false" aria-controls="collapseFilters"
							id="filters_col_bt"><i class="icon_set_1_icon-65"></i>Filters</a>
						<div class="collapse show" id="collapseFilters">
							<div class="filter_type">
								<h6>Price</h6>
								<input type="text" id="range" name="range" value="">
							</div>
							<div class="filter_type">
								<h6>Rating</h6>
								<ul>
									<li><label class="container_check"> <span
											class="rating"> <i class="icon-star voted"></i><i
												class="icon-star voted"></i><i class="icon-star voted"></i><i
												class="icon-star voted"></i><i class="icon-star voted"></i>
										</span> <input type="checkbox"> <span class="checkmark"></span>
									</label></li>
									<li><label class="container_check"> <span
											class="rating"> <i class="icon-star voted"></i><i
												class="icon-star voted"></i><i class="icon-star voted"></i><i
												class="icon-star voted"></i><i class="icon-star"></i>
										</span> <input type="checkbox"> <span class="checkmark"></span>
									</label></li>
									<li><label class="container_check"> <span
											class="rating"> <i class="icon-star voted"></i><i
												class="icon-star voted"></i><i class="icon-star voted"></i><i
												class="icon-star"></i><i class="icon-star"></i>
										</span> <input type="checkbox"> <span class="checkmark"></span>
									</label></li>
									<li><label class="container_check"> <span
											class="rating"> <i class="icon-star voted"></i><i
												class="icon-star voted"></i><i class="icon-star"></i><i
												class="icon-star"></i><i class="icon-star"></i>
										</span> <input type="checkbox"> <span class="checkmark"></span>
									</label></li>
									<li><label class="container_check"> <span
											class="rating"> <i class="icon-star voted"></i><i
												class="icon-star"></i><i class="icon-star"></i><i
												class="icon-star"></i><i class="icon-star"></i>
										</span> <input type="checkbox"> <span class="checkmark"></span>
									</label></li>
								</ul>
							</div>
							<div class="filter_type">
								<h6>태그</h6>
								<ul class="mb-0">
									<li><label class="container_check"> Pet allowed <input
											type="checkbox"> <span class="checkmark"></span>
									</label></li>
									<li><label class="container_check"> Groups allowed
											<input type="checkbox"> <span class="checkmark"></span>
									</label></li>
									<li><label class="container_check"> Tour guides <input
											type="checkbox"> <span class="checkmark"></span>
									</label></li>
									<li><label class="container_check"> Access for
											disabled <input type="checkbox"> <span
											class="checkmark"></span>
									</label></li>
								</ul>
							</div>
						</div>
						<!--End collapse -->
					</div>
					<!--End filters col-->
					<div class="box_style_2 d-none d-sm-block">
						<i class="icon_set_1_icon-57"></i>
						<h4>
							Need <span>Help?</span>
						</h4>
						<a href="tel://004542344599" class="phone">+45 423 445 99</a> <small>Monday
							to Friday 9.00am - 7.30pm</small>
					</div>
				</aside>
				<!--End aside -->
				<div class="col-lg-9">
					<div id="tools">
						<div class="d-flex justify-content-between">
							<select class="form-select selectCity" aria-label="Default select example" >
							  <option selected>-도/특별시-</option>
							  <option value="0">== 전체 ==</option>
							  <option value="1">서울특별시</option>
							  <option value="2">부산광역시</option>
							  <option value="3">인천광역시</option>
							  <option value="4">대전광역시</option>
							  <option value="5">광주광역시</option>
							  <option value="6">울산광역시</option>
							  <option value="7">대구광역시</option>
							  <option value="8">강원도</option>
							  <option value="9">경기도</option>
							  <option value="10">경상남도</option>
							  <option value="11">경상북도</option>
							  <option value="12">전라남도</option>
							  <option value="13">전라북도</option>
							  <option value="13">충청남도</option>
							  <option value="13">충청북도</option>
						 </select>
				 		 <select class="form-select selectDistrict me-auto" aria-label="Default select example" >
							  <option selected>-시/구/지역-</option>
							  <option value="0">== 전체 ==</option>
							  <option value="1">일구</option>
							  <option value="2">이구</option>
							  <option value="3">삼구</option>
						 </select>
						<div class="col-md-6 col-sm-4 d-none d-sm-block text-end">
							<a href="all_tours_grid.html" class="bt_filters"><i
								class="icon-th"></i></a> <a href="#" class="bt_filters"><i
								class=" icon-list"></i></a>
						</div>

						</div>
					</div>
					<!--/tools -->

					<div class="strip_hotel_seoul wow fadeIn" data-wow-delay="0.1s">
						<div class="row">
							<div class="col-lg-4 col-md-4 position-relative">
								<div class="ribbon_3 popular">
									<span>Popular</span>
								</div>
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1"
										href="javascript:void(0);">+<span
										class="tooltip-content-flip"><span class="tooltip-back">Add
												to wishlist</span></span></a>
								</div>
								<div class="img_list">
									<a href="/roomDetailInfo"><img
										src="/resources/assets/img/train/경부선.png"
										alt="Image">
										 </a>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="tour_list_desc">
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star  voted"></i><i
											class="icon-star  voted"></i><i class="icon-star  voted"></i><i
											class="icon-star"></i><small>(75)</small>
									</div>
									<h3>
										<strong>경부선</strong>
									</h3>
									<p>행신 - 서울 - 영등포 - 광명 - 수원 - 천안아산 - 오송 - 대전 - 김천구미 - 서대구 - 동대구 - 포항(KTX) - 신경주 - 밀양 - 울산 - 구포 - 부산</p>
									<ul class="add_info">
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-83"></i></span>
												<div class="tooltip-content">
													<h4>Schedule</h4>
													<strong>Monday to Friday</strong> 09.00 AM - 5.30 PM <br>
													<strong>Saturday</strong> 09.00 AM - 5.30 PM <br> <strong>Sunday</strong>
													<span class="label label-danger">Closed</span>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-41"></i></span>
												<div class="tooltip-content">
													<h4>Address</h4>
													Musée du Louvre, 75058 Paris - France <br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-97"></i></span>
												<div class="tooltip-content">
													<h4>Languages</h4>
													English - French - Chinese - Russian - Italian
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-27"></i></span>
												<div class="tooltip-content">
													<h4>Parking</h4>
													1-3 Rue Elisée Reclus <br> 76 Rue du Général Leclerc <br>
													8 Rue Caillaux 94923 <br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-25"></i></span>
												<div class="tooltip-content">
													<h4>Transport</h4>
													<strong>Metro: </strong>Musée du Louvre station (line 1) <br>
													<strong>Bus:</strong> 21, 24, 27, 39, 48, 68, 69, 72, 81,
													95 <br>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-lg-2 col-md-2">
								
							</div>
						</div>
					</div>
					<!--End strip -->

					<div class="strip_hotel_seoul wow fadeIn" data-wow-delay="0.2s">
						<div class="row">
							<div class="col-lg-4 col-md-4 position-relative">
								<div class="ribbon_3 popular">
									<span>Popular</span>
								</div>
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1"
										href="javascript:void(0);">+<span
										class="tooltip-content-flip"><span class="tooltip-back">Add
												to wishlist</span></span></a>
								</div>
								<div class="img_list">
									<a href="single_tour.html"><img
										src="/resources/assets/img/train/호남선.png"
										alt="Image">
										 </a>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="tour_list_desc">
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star  voted"></i><i
											class="icon-star  voted"></i><i class="icon-star  voted"></i><i
											class="icon-star"></i><small>(75)</small>
									</div>
									<h3>
										<strong>호남선</strong>
									</h3>
									<p>행신 - 용산 - 광명 - 천안아산 - 오송 - 서대전 - 계룡 - 논산 - 공주 - 익산 - 정읍 - 광주송정 - 나주 - 목포</p>
									<ul class="add_info">
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-83"></i></span>
												<div class="tooltip-content">
													<h4>Schedule</h4>
													<strong>Monday to Friday</strong> 09.00 AM - 5.30 PM <br>
													<strong>Saturday</strong> 09.00 AM - 5.30 PM <br> <strong>Sunday</strong>
													<span class="label label-danger">Closed</span>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-41"></i></span>
												<div class="tooltip-content">
													<h4>Address</h4>
													Musée du Louvre, 75058 Paris - France <br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-97"></i></span>
												<div class="tooltip-content">
													<h4>Languages</h4>
													English - French - Chinese - Russian - Italian
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-27"></i></span>
												<div class="tooltip-content">
													<h4>Parking</h4>
													1-3 Rue Elisée Reclus <br> 76 Rue du Général Leclerc <br>
													8 Rue Caillaux 94923 <br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-25"></i></span>
												<div class="tooltip-content">
													<h4>Transport</h4>
													<strong>Metro: </strong>Musée du Louvre station (line 1) <br>
													<strong>Bus:</strong> 21, 24, 27, 39, 48, 68, 69, 72, 81,
													95 <br>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							
						</div>
					</div>
					<!--End strip -->

					<div class="strip_hotel_seoul wow fadeIn" data-wow-delay="0.3s">
						<div class="row">
							<div class="col-lg-4 col-md-4 position-relative">
								<div class="ribbon_3">
									<span>Top rated</span>
								</div>
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1"
										href="javascript:void(0);">+<span
										class="tooltip-content-flip"><span class="tooltip-back">Add
												to wishlist</span></span></a>
								</div>
								<div class="img_list">
									<a href="single_tour.html"><img
										src="/resources/assets/img/train/경전선.png"
										alt="Image">
										 </a>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="tour_list_desc">
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star  voted"></i><i
											class="icon-star  voted"></i><i class="icon-star  voted"></i><i
											class="icon-star"></i><small>(75)</small>
									</div>
									<h3>
										<strong>경전선</strong>
									</h3>
									<p>행신 - 서울 - 광명 - 천안아산 - 대전 - 김천구미  -  서대구/동대구 - 밀양 - 진영 - 창원중앙 - 창원 - 마산 - 진주</p>
									<ul class="add_info">
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-83"></i></span>
												<div class="tooltip-content">
													<h4>Schedule</h4>
													<strong>Monday to Friday</strong> 09.00 AM - 5.30 PM <br>
													<strong>Saturday</strong> 09.00 AM - 5.30 PM <br> <strong>Sunday</strong>
													<span class="label label-danger">Closed</span>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-41"></i></span>
												<div class="tooltip-content">
													<h4>Address</h4>
													Musée du Louvre, 75058 Paris - France <br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-97"></i></span>
												<div class="tooltip-content">
													<h4>Languages</h4>
													English - French - Chinese - Russian - Italian
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-27"></i></span>
												<div class="tooltip-content">
													<h4>Parking</h4>
													1-3 Rue Elisée Reclus <br> 76 Rue du Général Leclerc <br>
													8 Rue Caillaux 94923 <br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-25"></i></span>
												<div class="tooltip-content">
													<h4>Transport</h4>
													<strong>Metro: </strong>Musée du Louvre station (line 1) <br>
													<strong>Bus:</strong> 21, 24, 27, 39, 48, 68, 69, 72, 81,
													95 <br>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							
						</div>
					</div>
					<!--End strip -->

					<div class="strip_hotel_seoul wow fadeIn" data-wow-delay="0.4s">
						<div class="row">
							<div class="col-lg-4 col-md-4 position-relative">
								<div class="ribbon_3">
									<span>Top rated</span>
								</div>
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1"
										href="javascript:void(0);">+<span
										class="tooltip-content-flip"><span class="tooltip-back">Add
												to wishlist</span></span></a>
								</div>
								<div class="img_list">
									<a href="single_tour.html"><img
										src="/resources/assets/img/train/전라선.png"
										alt="Image">
										 </a>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="tour_list_desc">
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star  voted"></i><i
											class="icon-star  voted"></i><i class="icon-star  voted"></i><i
											class="icon-star"></i><small>(75)</small>
									</div>
									<h3>
										<strong>전라선</strong>
									</h3>
									<p>행신 - 용산 - 광명 - 천안아산 - 오송 - 공주 - (서대전 - 계룡 - 논산) - 익산 - 전주 -남원 - 곡성 - 구례구 - 순천 - 여천 - 여수엑스포</p>
									<ul class="add_info">
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-83"></i></span>
												<div class="tooltip-content">
													<h4>Schedule</h4>
													<strong>Monday to Friday</strong> 09.00 AM - 5.30 PM <br>
													<strong>Saturday</strong> 09.00 AM - 5.30 PM <br> <strong>Sunday</strong>
													<span class="label label-danger">Closed</span>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-41"></i></span>
												<div class="tooltip-content">
													<h4>Address</h4>
													Musée du Louvre, 75058 Paris - France <br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-97"></i></span>
												<div class="tooltip-content">
													<h4>Languages</h4>
													English - French - Chinese - Russian - Italian
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-27"></i></span>
												<div class="tooltip-content">
													<h4>Parking</h4>
													1-3 Rue Elisée Reclus <br> 76 Rue du Général Leclerc <br>
													8 Rue Caillaux 94923 <br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-25"></i></span>
												<div class="tooltip-content">
													<h4>Transport</h4>
													<strong>Metro: </strong>Musée du Louvre station (line 1) <br>
													<strong>Bus:</strong> 21, 24, 27, 39, 48, 68, 69, 72, 81,
													95 <br>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-lg-2 col-md-2">
								
							</div>
						</div>
					</div>
					<!--End strip -->

					<div class="strip_hotel_seoul wow fadeIn" data-wow-delay="0.5s">
						<div class="row">
							<div class="col-lg-4 col-md-4 position-relative">
								<div class="ribbon_3">
									<span>Top rated</span>
								</div>
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1"
										href="javascript:void(0);">+<span
										class="tooltip-content-flip"><span class="tooltip-back">Add
												to wishlist</span></span></a>
								</div>
								<div class="img_list">
									<a href="single_tour.html"><img
										src="/resources/assets/img/train/강릉선.png"
										alt="Image">
										 </a>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="tour_list_desc">
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star  voted"></i><i
											class="icon-star  voted"></i><i class="icon-star  voted"></i><i
											class="icon-star"></i><small>(75)</small>
									</div>
									<h3>
										<strong>강릉선</strong>
									</h3>
									<p>행신 - 서울 - 청량리 - 상봉 - 덕소 - 양평 - 서원주 - 만종 - 횡성 - 둔내 - 평창 - 진부 - 강릉 - 정동진 - 묵호 - 동해</p>
									<ul class="add_info">
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-83"></i></span>
												<div class="tooltip-content">
													<h4>Schedule</h4>
													<strong>Monday to Friday</strong> 09.00 AM - 5.30 PM <br>
													<strong>Saturday</strong> 09.00 AM - 5.30 PM <br> <strong>Sunday</strong>
													<span class="label label-danger">Closed</span>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-41"></i></span>
												<div class="tooltip-content">
													<h4>Address</h4>
													Musée du Louvre, 75058 Paris - France <br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-97"></i></span>
												<div class="tooltip-content">
													<h4>Languages</h4>
													English - French - Chinese - Russian - Italian
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-27"></i></span>
												<div class="tooltip-content">
													<h4>Parking</h4>
													1-3 Rue Elisée Reclus <br> 76 Rue du Général Leclerc$
													<br> 8 Rue Caillaux 94923 <br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-25"></i></span>
												<div class="tooltip-content">
													<h4>Transport</h4>
													<strong>Metro: </strong>Musée du Louvre station (line 1) <br>
													<strong>Bus:</strong> 21, 24, 27, 39, 48, 68, 69, 72, 81,
													95 <br>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-lg-2 col-md-2">
								
							</div>
						</div>
					</div>
					<!--End strip -->

					<div class="strip_hotel_seoul wow fadeIn" data-wow-delay="0.7s">
						<div class="row">
							<div class="col-lg-4 col-md-4 position-relative">
								<div class="ribbon_3">
									<span>Top rated</span>
								</div>
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1"
										href="javascript:void(0);">+<span
										class="tooltip-content-flip"><span class="tooltip-back">Add
												to wishlist</span></span></a>
								</div>
								<div class="img_list">
									<a href="single_tour.html"><img
										src="/resources/assets/img/train/중앙선.png"
										alt="Image">
										
									</a>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="tour_list_desc">
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star  voted"></i><i
											class="icon-star  voted"></i><i class="icon-star  voted"></i><i
											class="icon-star"></i><small>(75)</small>
									</div>
									<h3>
										<strong>중앙선</strong>
									</h3>
									<p>서원주 - 원주 - 제천 - 단양 - 풍기 - 영주 - 안동 - 부전</p>
									<ul class="add_info">
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-83"></i></span>
												<div class="tooltip-content">
													<h4>Schedule</h4>
													<strong>Monday to Friday</strong> 09.00 AM - 5.30 PM <br>
													<strong>Saturday</strong> 09.00 AM - 5.30 PM <br> <strong>Sunday</strong>
													<span class="label label-danger">Closed</span>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-41"></i></span>
												<div class="tooltip-content">
													<h4>Address</h4>
													Musée du Louvre, 75058 Paris - France <br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-97"></i></span>
												<div class="tooltip-content">
													<h4>Languages</h4>
													English - French - Chinese - Russian - Italian
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-27"></i></span>
												<div class="tooltip-content">
													<h4>Parking</h4>
													1-3 Rue Elisée Reclus <br> 76 Rue du Général Leclerc <br>
													8 Rue Caillaux 94923 <br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-25"></i></span>
												<div class="tooltip-content">
													<h4>Transport</h4>
													<strong>Metro: </strong>Musée du Louvre station (line 1) <br>
													<strong>Bus:</strong> 21, 24, 27, 39, 48, 68, 69, 72, 81,
													95 <br>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-lg-2 col-md-2">
								
							</div>
						</div>
					</div>
					<!--End strip -->
					
					<div class="strip_hotel_seoul wow fadeIn" data-wow-delay="0.7s">
						<div class="row">
							<div class="col-lg-4 col-md-4 position-relative">
								<div class="ribbon_3">
									<span>Top rated</span>
								</div>
								<div class="wishlist">
									<a class="tooltip_flip tooltip-effect-1"
										href="javascript:void(0);">+<span
										class="tooltip-content-flip"><span class="tooltip-back">Add
												to wishlist</span></span></a>
								</div>
								<div class="img_list">
									<a href="single_tour.html"><img
										src="/resources/assets/img/train/중부내륙선.png"
										alt="Image">
										
									</a>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="tour_list_desc">
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star  voted"></i><i
											class="icon-star  voted"></i><i class="icon-star  voted"></i><i
											class="icon-star"></i><small>(75)</small>
									</div>
									<h3>
										<strong>중부내륙선</strong>
									</h3>
									<p>부발 - 가남 - 감곡장호원 - 양성온천 - 충주</p>
									<ul class="add_info">
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-83"></i></span>
												<div class="tooltip-content">
													<h4>Schedule</h4>
													<strong>Monday to Friday</strong> 09.00 AM - 5.30 PM <br>
													<strong>Saturday</strong> 09.00 AM - 5.30 PM <br> <strong>Sunday</strong>
													<span class="label label-danger">Closed</span>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-41"></i></span>
												<div class="tooltip-content">
													<h4>Address</h4>
													Musée du Louvre, 75058 Paris - France <br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-97"></i></span>
												<div class="tooltip-content">
													<h4>Languages</h4>
													English - French - Chinese - Russian - Italian
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-27"></i></span>
												<div class="tooltip-content">
													<h4>Parking</h4>
													1-3 Rue Elisée Reclus <br> 76 Rue du Général Leclerc <br>
													8 Rue Caillaux 94923 <br>
												</div>
											</div>
										</li>
										<li>
											<div class="tooltip_styled tooltip-effect-4">
												<span class="tooltip-item"><i
													class="icon_set_1_icon-25"></i></span>
												<div class="tooltip-content">
													<h4>Transport</h4>
													<strong>Metro: </strong>Musée du Louvre station (line 1) <br>
													<strong>Bus:</strong> 21, 24, 27, 39, 48, 68, 69, 72, 81,
													95 <br>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-lg-2 col-md-2">
								
							</div>
						</div>
					</div>
					<!--End strip -->

<!-- 					<nav aria-label="Page navigation"> -->
<!-- 						<ul class="pagination justify-content-center"> -->
<!-- 							<li class="page-item"><a class="page-link" href="#" -->
<!-- 								aria-label="Previous"> <span aria-hidden="true">&laquo;</span> -->
<!-- 									<span class="sr-only">Previous</span> -->
<!-- 							</a></li> -->
<!-- 							<li class="page-item active"><span class="page-link">1</span> -->
<!-- 							</li> -->
<!-- 							<li class="page-item"><a class="page-link" href="#">2</a></li> -->
<!-- 							<li class="page-item"><a class="page-link" href="#">3</a></li> -->
<!-- 							<li class="page-item"><a class="page-link" href="#" -->
<!-- 								aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span -->
<!-- 									class="sr-only">Next</span> -->
<!-- 							</a></li> -->
<!-- 						</ul> -->
<!-- 					</nav> -->
<!-- 					end pagination -->

				</div>
				<!-- End col lg-9 -->
			</div>
			<!-- End row -->
		</div>
		<!-- End container -->
		</form>
	</main>
	<!-- End main -->

<%@include file = "../include/footer.jsp"%>
<%@include file = "../include/script.jsp"%>

	<!-- Specific scripts -->
	<!-- Cat nav mobile -->
	<script src="/resources/assets/js/cat_nav_mobile.js"></script>
	<script>
		$('#cat_nav').mobileMenu();
	</script>



</body>

</html>