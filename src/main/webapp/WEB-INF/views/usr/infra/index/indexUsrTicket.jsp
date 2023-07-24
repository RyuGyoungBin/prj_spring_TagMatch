<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<%@include file="../include/head.jsp"%>
<%@include file="../include/header.jsp"%>

   <section class="parallax-window" data-parallax="scroll" data-image-src="/resources/assets/img/view123.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1 opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.6)">
			<div class="animated fadeInDown" >
				<h1>Paris Hotels</h1>
				<p>Cursus neque cursus curae ante scelerisque vehicula.</p>
			</div>
		</div>
	</section>
	<!-- End section -->

	<main>
		<div id="position">
			<div class="container">
				<ul>
					<li><a href="#">Home</a>
					</li>
					<li><a href="#">Category</a>
					</li>
					<li>Page active</li>
				</ul>
			</div>
		</div>
		<!-- Position -->

		<div class="collapse" id="collapseMap">
			<div id="map" class="map"></div>
		</div>
		<!-- End Map -->

		<div class="container margin_60">
			<div class="row">
				<aside class="col-lg-3">
					

					<div id="filters_col">
                        <a data-bs-toggle="collapse" href="#collapseFilters" aria-expanded="false" aria-controls="collapseFilters" id="filters_col_bt"><i class="icon_set_1_icon-65"></i>Filters</a>
                        <div class="collapse show" id="collapseFilters">
                            <div class="filter_type">
                                <h6>Price</h6>
                                <input type="text" id="range" name="range" value="">
                            </div>
                            <div class="filter_type">
                                <h6>Star Category</h6>
                                <ul>
                                    <li>
                                        <label class="container_check">
                                            <span class="rating">
                                                <i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i>
                                            </span>(15)
                                            <input type="checkbox">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="container_check">
                                            <span class="rating">
                                                <i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81"></i>
                                            </span>(10)
                                            <input type="checkbox">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="container_check">
                                            <span class="rating">
                                                <i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81"></i><i class="icon_set_1_icon-81"></i>
                                            </span>(22)
                                            <input type="checkbox">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="container_check">
                                            <span class="rating">
                                                <i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81"></i><i class="icon_set_1_icon-81"></i><i class="icon_set_1_icon-81"></i>
                                            </span>(08)
                                            <input type="checkbox">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="container_check">
                                            <span class="rating">
                                                <i class="icon_set_1_icon-81 voted"></i><i class="icon_set_1_icon-81"></i><i class="icon_set_1_icon-81"></i><i class="icon_set_1_icon-81"></i><i class="icon_set_1_icon-81"></i>
                                            </span>(08)
                                            <input type="checkbox">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                </ul>
                            </div>
                            <div class="filter_type">
                                <h6>Review Score</h6>
                                <ul>
                                    <li>
                                        <label class="container_check">
                                            Superb: 9+ (77)
                                            <input type="checkbox">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="container_check">
                                            Good: 7+ (909)
                                            <input type="checkbox">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="container_check">
                                            Pleasant: 6+ (1196)
                                            <input type="checkbox">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="container_check">
                                             No rating (198)
                                            <input type="checkbox">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                </ul>
                            </div>
                            <div class="filter_type">
                                <h6>Facility</h6>
                                <ul>
                                    <li>
                                        <label class="container_check">
                                             Pet allowed
                                            <input type="checkbox">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="container_check">
                                             Wifi
                                            <input type="checkbox">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="container_check">
                                             Spa
                                            <input type="checkbox">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="container_check">
                                             Restaurant
                                            <input type="checkbox">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="container_check">
                                             Pool
                                            <input type="checkbox">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="container_check">
                                             Parking
                                            <input type="checkbox">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                     <li>
                                        <label class="container_check">
                                             Fitness center
                                            <input type="checkbox">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                </ul>
                            </div>
                            <div class="filter_type">
                                <h6>District</h6>
                                <ul class="mb-0">
                                    <li>
                                        <label class="container_radio">
                                             Paris Centre
                                            <input type="radio" name="location">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="container_radio">
                                             La Defance
                                            <input type="radio" name="location">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="container_radio">
                                            La Marais
                                            <input type="radio" name="location">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="container_radio">
                                            Latin Quarter
                                            <input type="radio" name="location">
                                            <span class="checkmark"></span>
                                        </label>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!--End collapse -->
                    </div>
                    <!--End filters col-->
                    <div class="box_style_2 d-none d-sm-block">
                        <i class="icon_set_1_icon-57"></i>
                        <h4>Need <span>Help?</span></h4>
                        <a href="tel://004542344599" class="phone">+45 423 445 99</a>
                        <small>Monday to Friday 9.00am - 7.30pm</small>
                    </div>
				</aside>
				<!--End aside -->

				<div class="col-lg-9">

					<div id="tools">
						<div class="row justify-content-between">
                            <div class="col-md-3 col-sm-4">
                                <div class="styled-select-filters">
                                    <select name="sort_price" id="sort_price">
                                        <option value="" selected>Sort by price</option>
                                        <option value="lower">Lowest price</option>
                                        <option value="higher">Highest price</option>
                                    </select>
                                </div>
                            </div>
							<div class="col-md-6 col-sm-4 d-none d-sm-block text-end">
								<a href="#" class="bt_filters"><i class="icon-th"></i></a> <a href="all_hotels_list.html" class="bt_filters"><i class=" icon-list"></i></a>
							</div>
						</div>
					</div>
					<!--End tools -->

					<div class="row">
						<div class="col-md-4 wow zoomIn" data-wow-delay="0.1s">
							<div class="hotel_container">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="img_container">
									<a href="indexUsrTicketDetailInfo">
										<img src="/resources/assets/img/eastPalaceGarden.jpg" width="300" height="533" class="img-fluid" alt="Image">
										<div class="score"><span>7.5</span>Good</div>
										<div class="short_info hotel">
											<span class="price"><sup>$</sup>59</span>
										</div>
									</a>
								</div>
								<div class="hotel_title">
									<h3 ><strong>[경주]동궁원</strong></h3>
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
									</div>
									<!-- end rating -->
								
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
                        <div class="col-md-4 wow zoomIn" data-wow-delay="0.1s">
							<div class="hotel_container">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="img_container">
									<a href="indexUsrTicketDetailInfo">
										<img src="/resources/assets/img/knowledgeSpaceSeoyuguandBingheogak.jpg" width="300" height="533" class="img-fluid" alt="Image">
										<div class="score"><span>7.5</span>Good</div>
										<div class="short_info hotel">
											<span class="price"><sup>$</sup>59</span>
										</div>
									</a>
								</div>
								<div class="hotel_title">
									<h3 ><strong>[전주] 지식공간 서유구와빙허각</strong></h3>
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
									</div>
									<!-- end rating -->
									
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
                        <div class="col-md-4 wow zoomIn" data-wow-delay="0.1s">
							<div class="hotel_container">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="img_container">
									<a href="indexUsrTicketDetailInfo">
										<img src="/resources/assets/img/forestArboretum.jpg" width="300" height="533" class="img-fluid" alt="Image">
										<div class="score"><span>7.5</span>Good</div>
										<div class="short_info hotel">
											<span class="price"><sup>$</sup>59</span>
										</div>
									</a>
								</div>
								<div class="hotel_title">
									<h3 ><strong>[해남]포레스트수목원</strong></h3>
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
									</div>
									<!-- end rating -->
									
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
                        <div class="col-md-4 wow zoomIn" data-wow-delay="0.1s">
							<div class="hotel_container">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="img_container">
									<a href="indexUsrTicketDetailInfo">
										<img src="/resources/assets/img/aproksangsangSchool.jpg" width="300" height="533" class="img-fluid" alt="Image">
										<div class="score"><span>7.5</span>Good</div>
										<div class="short_info hotel">
											<span class="price"><sup>$</sup>59</span>
										</div>
									</a>
								</div>
								<div class="hotel_title">
									<h3 ><strong>[곡성] 압록상상스쿨(7/1~)</strong></h3>
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
									</div>
									<!-- end rating -->
									
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
                        <div class="col-md-4 wow zoomIn" data-wow-delay="0.1s">
							<div class="hotel_container">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="img_container">
									<a href="indexUsrTicketDetailInfo">
										<img src="/resources/assets/img/shushuBonbonKidsCafe.jpg" width="300" height="533" class="img-fluid" alt="Image">
										<div class="score"><span>7.5</span>Good</div>
										<div class="short_info hotel">
											<span class="price"><sup>$</sup>59</span>
										</div>
									</a>
								</div>
								<div class="hotel_title">
									<h3 ><strong>[인천 논현]슈슈봉봉키즈카페</strong></h3>
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
									</div>
									<!-- end rating -->
									
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
                        <div class="col-md-4 wow zoomIn" data-wow-delay="0.1s">
							<div class="hotel_container">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="img_container">
									<a href="indexUsrTicketDetailInfo">
										<img src="/resources/assets/img/high1WaterWorld.jpg" width="300" height="533" class="img-fluid" alt="Image">
										<div class="score"><span>7.5</span>Good</div>
										<div class="short_info hotel">
											<span class="price"><sup>$</sup>59</span>
										</div>
									</a>
								</div>
								<div class="hotel_title">
									<h3 ><strong>[강원 정선]하이원 워터월드...</strong></h3>
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
									</div>
									<!-- end rating -->
									
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
                        <div class="col-md-4 wow zoomIn" data-wow-delay="0.1s">
							<div class="hotel_container">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="img_container">
									<a href="indexUsrTicketDetailInfo">
										<img src="/resources/assets/img/kidsraraThemePark.jpg" width="300" height="533" class="img-fluid" alt="Image">
										<div class="score"><span>7.5</span>Good</div>
										<div class="short_info hotel">
											<span class="price"><sup>$</sup>59</span>
										</div>
									</a>
								</div>
								<div class="hotel_title">
									<h3 ><strong>[화순]키즈라라 테마파크</strong></h3>
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
									</div>
									<!-- end rating -->
									
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
						<div class="col-md-4 wow zoomIn" data-wow-delay="0.1s">
							<div class="hotel_container">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="img_container">
									<a href="indexUsrTicketDetailInfo">
										<img src="/resources/assets/img/magicFlowWonderRabbit.jpg" width="300" height="533" class="img-fluid" alt="Image">
										<div class="score"><span>7.5</span>Good</div>
										<div class="short_info hotel">
											<span class="price"><sup>$</sup>59</span>
										</div>
									</a>
								</div>
								<div class="hotel_title">
									<h3 ><strong>[고양]매직플로우 원더래빗(~7/31)...</strong></h3>
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
									</div>
									<!-- end rating -->
									
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
                        <div class="col-md-4 wow zoomIn" data-wow-delay="0.1s">
							<div class="hotel_container">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="img_container">
									<a href="indexUsrTicketDetailInfo">
										<img src="/resources/assets/img/oceanAdventure.jpg" width="300" height="533" class="img-fluid" alt="Image">
										<div class="score"><span>7.5</span>Good</div>
										<div class="short_info hotel">
											<span class="price"><sup>$</sup>59</span>
										</div>
									</a>
								</div>
								<div class="hotel_title">
									<h3 ><strong>[천안]오션어드벤처 인근 사랑티켓 렌탈샵</strong></h3>
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
									</div>
									<!-- end rating -->
									
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
                        <div class="col-md-4 wow zoomIn" data-wow-delay="0.1s">
							<div class="hotel_container">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="img_container">
									<a href="indexUsrTicketDetailInfo">
										<img src="/resources/assets/img/high1WaterWorldSnowCountryWaterPlayEquipmentRental.jpg" width="300" height="533" class="img-fluid" alt="Image">
										<div class="score"><span>7.5</span>Good</div>
										<div class="short_info hotel">
											<span class="price"><sup>$</sup>59</span>
										</div>
									</a>
								</div>
								<div class="hotel_title">
									<h3 ><strong>[정선]하이원 워터월드 눈의나라 ....</strong></h3>
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
									</div>
									<!-- end rating -->
									
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
                        <div class="col-md-4 wow zoomIn" data-wow-delay="0.1s">
							<div class="hotel_container">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="img_container">
									<a href="indexUsrTicketDetailInfo">
										<img src="/resources/assets/img/tinoljaAnimalPark.jpg" width="300" height="533" class="img-fluid" alt="Image">
										<div class="score"><span>7.5</span>Good</div>
										<div class="short_info hotel">
											<span class="price"><sup>$</sup>59</span>
										</div>
									</a>
								</div>
								<div class="hotel_title">
									<h3 ><strong>[대전]티놀자 애니멀파크</strong></h3>
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
									</div>
									<!-- end rating -->
									
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>
                        <div class="col-md-4 wow zoomIn" data-wow-delay="0.1s">
							<div class="hotel_container">
								<div class="ribbon_3 popular"><span>Popular</span>
								</div>
								<div class="img_container">
									<a href="indexUsrTicketDetailInfo">
										<img src="/resources/assets/img/nationalNakdonggangBiologicalResourcesCenter.jpg" width="300" height="533" class="img-fluid" alt="Image">
										<div class="score"><span>7.5</span>Good</div>
										<div class="short_info hotel">
											<span class="price"><sup>$</sup>59</span>
										</div>
									</a>
								</div>
								<div class="hotel_title">
									<h3 ><strong>[경북]국립낙동강생물자원관</strong></h3>
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
									</div>
									<!-- end rating -->
									
									<!-- End wish list-->
								</div>
							</div>
							<!-- End box tour -->
						</div>

						<!-- End col-md-6 -->

			<!-- End row -->
		</div>
		<!-- End container -->
	</main>
		<%@include file="../include/footer.jsp"%>

<%@include file="../include/script.jsp"%>
	<script src="/resources/assets/js/vegas.min.js"></script>
	<script src="/resources/assets/js/jquery-3.6.4.min.js"></script>
	<script src="/resources/assets/js/common_scripts_min.js"></script>
	<script src="/resources/assets/js/functions.js"></script>

	<!-- Map -->
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="/resources/assets/js/map_hotels.js"></script>
	<script src="/resources/assets/js/infobox.js"></script>


  </body>
</html>