<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">
<jsp:include page="../include/head.jsp"></jsp:include>
<jsp:include page="../include/header.jsp"></jsp:include>

	<main>
		<div id="carousel-home">
            <div class="owl-carousel owl-theme">
                 <div class="owl-slide cover" style="background: url(/resources/assets/img/20211129101952388_04mF1.jpg) center no-repeat; background-size: 100%; background-position: bottom;">
                    <div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.5)">
                        <div class="container">
                            <div class="row justify-content-center justify-content-md-start">
                                <div class="col-lg-12 static">
                                    <div class="slide-text text-center white">
                                        <h2 class="owl-slide-animated owl-slide-title">예약하기<br></h2>
                                        <p class="owl-slide-animated owl-slide-subtitle">
                                            기차편과 숙소, 기타 입장권을 한 번에 예약하세요!
                                        </p>
                                        <div class="owl-slide-animated owl-slide-cta"><a class="btn_1" href="" role="button">Read more</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/owl-slide-->
            </div>
            <div id="icon_drag_mobile"></div>
        </div>
        <!--/carousel-->
        	<div class="container margin_60 d-flex justify-content-around">
        	<aside class="col-lg-3">
        		<div id="bookingView" class="position-absolute" style="top: 1000px;">
					<div id="filters_col">
						<a data-bs-toggle="collapse" href="#collapseFilters" aria-expanded="false" aria-controls="collapseFilters" id="filters_col_bt"><i class="icon_set_1_icon-65"></i>예약상세</a>
						<div class="collapse show" id="collapseFilters">
							<div class="box_style_cat mt-3">
								<ul id="cat_nav">
									<li><a href="#train"><i class="icon_set_1_icon-51"></i><span>기차 : </span><span id="trainPriceF">0</span>원</a>
									</li>
									<li><a href="#hotel"><i class="icon_set_1_icon-51"></i><span>숙소 : </span><span id="hotelPriceF">0</span>원</a>
									</li>
									<li><a href="#tour"><i class="icon_set_1_icon-51"></i><span>입장권 : </span><span id="ticketPriceF">0</span>원</a>
									</li>
								</ul>
							</div>
						</div>
						<!--End collapse -->
					</div>
					<div class="box_style_cat">
						<p class="p-3" style="color: #333;">총결제금액</p>
						<p class="ps-5"><span id="totalPrice">0</span>원</p>
						<div class="d-flex justify-content-center my-3">
							<button type="button" class="btn btn-info">예매하기</button>
						</div>
					</div>
					<!--End filters col-->
					<div class="box_style_2 d-none d-sm-block">
						<i class="icon_set_1_icon-57"></i>
						<h4>Need <span>Help?</span></h4>
						<a href="tel://004542344599" class="phone">+45 423 445 99</a>
						<small>Monday to Friday 9.00am - 7.30pm</small>
					</div>
					</div>
				</aside>
				<!--End aside -->
				<div class="col-lg-1"></div>
				<div class="col-lg-8 d-flex flex-column" id="train">
					<div class="col-12 d-flex justify-content-between">
						<div class="d-flex me-3 text-nowrap justify-content-center align-items-center mb-3">
							<label class="me-3">여행일자</label>
							<div>
								<input class="date-pick form-control" type="text" placeholder="Select dates">
							</div>
						</div>
						<div class="d-flex">
							<div class="me-3">
								<input type="radio" name="itinerary" id="itineraryOne">
								<label for="itineraryOne">편도</label>
							</div>
							<div>
								<input type="radio" name="itinerary" id="itineraryTwo" checked>
								<label for="itineraryTwo">왕복</label>
							</div>
						</div>
					</div>
					<div class="d-flex justify-content-center mb-2">
						<div class="d-flex me-3 text-nowrap align-items-center fw-bold">가는편</div>
						<div class="d-flex me-3 text-nowrap align-items-center">
							<label class="me-3">출발역</label>
							<input type="text" class="form-control train" value="서울역" readonly>
						</div>
						<div class="d-flex me-3 text-nowrap align-items-center">
							<label class="me-3">도착역</label>
							<input type="text" class="form-control train" value="부산역" readonly>
						</div>
					</div>
					<div class="d-flex justify-content-center mb-2">
						<div class="d-flex me-3 text-nowrap align-items-center fw-bold">오는편</div>
						<div class="d-flex me-3 text-nowrap align-items-center">
							<label class="me-3">출발역</label>
							<input type="text" class="form-control train" value="서울역" readonly>
						</div>
						<div class="d-flex me-3 text-nowrap align-items-center">
							<label class="me-3">도착역</label>
							<input type="text" class="form-control train" value="부산역" readonly>
						</div>
					</div>
					<div class="d-flex justify-content-around pb-3 border-bottom">
						<div class="d-flex justify-content-center col-11">
							<div class="d-flex me-3 text-nowrap align-items-center fw-bold">예약 인원</div>
							<div class="d-flex me-3 text-nowrap align-items-center">
								<label>성인(만 13세 이상)</label>
								<select class="form-control">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
								</select>
							</div>
							<div class="d-flex me-3 text-nowrap align-items-center">
								<label>아동(만 6세 ~ 13세)</label>
								<select class="form-control">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
								</select>
							</div>
						</div>
						<button type="button" class="col-1 btn btn-secondary">조회</button>
					</div>
					<div>
						<h4 class="p-3 fw-bold">가는 철도편 선택</h4>
						<table class="table">
							<thead>
								<tr>
									<th>열차종</th>
									<th>출도착역</th>
									<th>여정시간</th>
									<th>소요시간</th>
									<th>예약여부</th>
									<th>요금</th>
									<th>좌석조회</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>ktx</th>
									<th>서울-부산</th>
									<th>05:12 - 07:49</th>
									<th>02:37</th>
									<th class="text-danger">예약여부</th>
									<th>성인:59,800원<br>아동:26,900원</th>
									<th><a>좌석조회</a></th>
								</tr>
							</tbody>
						
						</table>
					</div>
					<div>
						<h4 class="p-3 fw-bold">오는 철도편 선택</h4>
						<table class="table">
							<thead>
								<tr>
									<th>열차종</th>
									<th>출도착역</th>
									<th>여정시간</th>
									<th>소요시간</th>
									<th>예약여부</th>
									<th>요금</th>
									<th>좌석조회</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>ktx</th>
									<th>서울-부산</th>
									<th>05:12 - 07:49</th>
									<th>02:37</th>
									<th class="text-danger">예약여부</th>
									<th>성인:59,800원<br>아동:26,900원</th>
									<th><a>좌석조회</a></th>
								</tr>
							</tbody>
						
						</table>
					</div>
					<div class="d-flex flex-column border p-3 text-center">
						<div class="mb-1 d-flex">
							<span class="border border-danger rounded-pill px-2 col-1">가는편</span>
							<div class="d-flex justify-content-around col-11">
								<span>서울역 - 부산역</span>
								<span class="mx-3">ktx 1편</span>
								<span>07/24(월) 05:12 출발</span>
								<span class="ms-3">좌석정보 : </span>
								<span class="me-3">7호차 14B</span>
								<span>59,800원</span>
							</div>
						</div>
						<div class="mb-1 d-flex">
							<span class="border border-info rounded-pill px-2 col-1">오는편</span>
							<div class="d-flex justify-content-around col-11">
								<span>부산역 - 서울역</span>
								<span class="mx-3">ktx 2편</span>
								<span>07/26(월) 05:12 출발</span>
								<span class="ms-3">좌석정보 : </span>
								<span class="me-3">8호차 15B</span>
								<span>59,800원</span>
							</div>
						</div>
					</div>
			        <div class="border-bottom border-primary py-3 mb-3"></div>
			        <div class="col-12 d-flex justify-content-end mb-3">
						<div>
							<input type="radio" name="Slprice" id="SlpriceLow">
							<label for="itineraryOne">저가순</label>
						</div>
						<div class="mx-3">
							<input type="radio" name="Slprice" id="SlpriceHig">
							<label for="itineraryTwo">고가순</label>
						</div>
						<div>
							<input type="radio" name="Slprice" id="SlpriceSta" checked>
							<label for="itineraryThr">추천순</label>
						</div>
					</div>
					<div class="col-12 d-flex justify-content-around align-items-center mb-3" id="hotel">
						<label class="fw-bold">유형</label>
						<div>
							<label for="SltypeAll">전체</label>
							<input type="checkbox" name="SlType" id="SltypeAll">
						</div>
						<div class="mx-3">
							<label for="SltypeHot">호텔</label>
							<input type="checkbox" name="SlType" id="SltypeHot">
						</div>
						<div>
							<label for="SltypePen">펜션</label>
							<input type="checkbox" name="SlType" id="SltypePen">
						</div>
						<div class="mx-3">
							<label for="SltypeCon">콘도</label>
							<input type="checkbox" name="SlType" id="SltypeCon">
						</div>
						<div>
							<label for="SltypeCam">캠핑카</label>
							<input type="checkbox" name="SlType" id="SltypeCam">
						</div>
						<div class="d-flex align-items-center">
							<label for="SltypeName" class="me-3">숙박지명</label>
							<div>
								<input type="text" name="SltypeName" id="SltypeName" class="form-control">
							</div>
						</div>
				</div>
				<div class="col-12 d-flex justify-content-around align-items-center border-bottom pb-3 mb-3">
						<label class="fw-bold">지역</label>
						<div>
							<select class="form-control">
								<option>-도/특별시-</option>
							</select>
						</div>
						<div class="mx-3">
							<select class="form-control">
								<option>-시/구/지역-</option>
							</select>
						</div>
						<div>
							<span class="me-2">입실일</span>
							<input type="text">
						</div>
						<div>
							<span class="me-2">퇴실일</span>
							<input type="text">
						</div>
						<button type="button" class="btn btn-sm btn-secondary" id="SlBtn">조회</button>
				</div>
				<div class="overflow-auto mb-3 ticketBox" style="height: 650px;">
					<div class="d-flex flex-wrap pt-2">
							<div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
							<div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
			<!-- 				상세정보 				 -->
			</div>
			<div class="overflow-auto mb-3 border d-none ticketDetail hotelSelect" style="height: 650px;">
				<div class="d-flex flex-column">
					<div class="p-4 border-bottom d-flex justify-content-between align-items-center">
						숙소상세정보
						<a class="btn btn-light text-secondary detailCloseBtn">X</a>
					</div>
					<div class="d-flex p-3">
						<div class="col-4 p-3 border-bottom">
							<img src="/resources/assets/img/2022011314264525694731.jpg" width="300" height="533" class="img-fluid" alt="Image">
						</div>
						<div class="col-6 d-flex flex-column border-bottom justify-content-around">
							<span class="h4 fw-bold text-center border-bottom pb-3">글래드 강남 코엑스센터</span>
							<span>주소 : 서울 강남구 테헤란로 610</span>
							<span>객 실수 : 10</span>
							<span>특이사항 : 삼성역 주변</span>
						</div>
						<div class="col-2 p-3">
							<a class="btn btn-secondary">지도보기</a>
						</div>
					</div>
					<div class="px-3">
						아래에서 원하는 객실을 선택하세요
					</div>
					<div class="p-3">
						<table class="col-12 text-center">
							<thead class="border-bottom">
								<tr>
									<th>객실 타입</th>
									<th>날짜</th>
									<th>비용(원)</th>
									<th>예약가능</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>스탠다드 트원</td>
									<td>07/24(월)</td>
									<td>113637</td>
									<td>O</td>
								</tr>
								<tr>
									<td>스탠다드 더블</td>
									<td>07/24(월)</td>
									<td>118182</td>
									<td>O</td>
								</tr>
							</tbody>
						</table>
						<div class="detail">
							<div class="d-flex align-items-center justify-content-around">
								<div class="col-2">
									<span >옵션선택</span>
								</div>
								<div class="col-8 px-5 py-2">
									<input type="text" value="트윈(싱글+싱글)" class="form-control" readonly>
								</div>
								<div class="col-2 p-2">
									<select class="form-select" id="sleep">
										<option value="1" selected>1객실</option>
										<option value="2">2객실</option>
										<option value="3">3객실</option>
									</select>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="d-flex flex-column border p-3">
				<div><h5 class="ms-2 mb-2">글래드 강남 코엑스센터</h5></div>
				<div class="d-flex justify-content-between align-items-center">
					<div class="col-6 d-flex justify-content-around flex-wrap">
						<div class="col-5">객실명 : </div>
						<div class="col-5">이용박수 : </div>
						<div class="col-5">입실일 : </div>
						<div class="col-5">객실수 : </div>
					</div>
					<div class="col-3 d-flex justify-content-between">
						<div>
							<div style="font-size: 9px;">선택된 총 숙박요금</div>
							<div class="mx-2"><span id="hotelTotal"></span>원</div>
						</div>
						<button type="button" class="btn btn-sm btn-primary" id="hotelBtn">선택완료</button>
					</div>
				</div>
			</div>
			
			<div class="border-bottom border-primary py-3 mb-3"></div>
			<!--------------------입장권----------------------------- -->
			<div class="col-12 d-flex justify-content-end mb-3" id="tour">
						<div>
							<input type="radio" name="Slprice" id="SlpriceLow">
							<label for="itineraryOne">저가순</label>
						</div>
						<div class="mx-3">
							<input type="radio" name="Slprice" id="SlpriceHig">
							<label for="itineraryTwo">고가순</label>
						</div>
						<div>
							<input type="radio" name="Slprice" id="SlpriceSta" checked>
							<label for="itineraryThr">추천순</label>
						</div>
					</div>
					<div class="col-12 d-flex justify-content-around align-items-center mb-3">
						<label class="fw-bold">유형</label>
						<div>
							<label for="tourAll">전체</label>
							<input type="checkbox" name="tour" id="tourAll">
						</div>
						<div class="mx-3">
							<label for="tourEx">레저/액티비티</label>
							<input type="checkbox" name="tour" id="tourEx">
						</div>
						<div>
							<label for="tourTicket">입장권/티켓</label>
							<input type="checkbox" name="tour" id="tourTicket">
						</div>
						<div class="mx-3">
							<label for="tourEat">미식/맛집</label>
							<input type="checkbox" name="tour" id="tourEat">
						</div>
						<div>
							<select class="form-control">
								<option selected>전체지역</option>
							</select>
						</div>
						<button type="button" class="btn btn-sm btn-secondary" id="SlBtn">조회</button>
				</div>
				<div class="overflow-auto mb-3 ticketBox" style="height: 650px;">
					<div class="d-flex flex-wrap pt-2">
							<div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
							<div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
	                        <div class="col-md-4 px-2">
								<div class="hotel_container">
									<div class="ribbon_3 popular"><span>Popular</span>
									</div>
									<div class="img_container">
										<a>
											<img src="/resources/assets/img/서울.jpg" width="300" height="533" class="img-fluid" alt="Image">
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
			</div>
			<div class="overflow-auto mb-3 border d-none ticketDetail ticketSelect" style="height: 650px;">
				<div class="d-flex flex-column">
					<div class="p-4 border-bottom d-flex justify-content-between align-items-center">
						상품상세정보
						<a class="btn btn-light text-secondary detailCloseBtn">X</a>
					</div>
					<div class="d-flex p-3">
						<div class="col-4 p-3 border-bottom">
							<img src="/resources/assets/img/2022011314264525694731.jpg" width="300" height="533" class="img-fluid" alt="Image">
						</div>
						<div class="col-6 d-flex flex-column border-bottom justify-content-around">
							<span class="h4 fw-bold text-center border-bottom pb-3">글래드 강남 코엑스센터</span>
							<span>주소 : 서울 강남구 테헤란로 610</span>
							<span>객 실수 : 10</span>
							<span>특이사항 : 삼성역 주변</span>
						</div>
						<div class="col-2 p-3">
							<a class="btn btn-secondary">지도보기</a>
						</div>
					</div>
					<div class="px-3">
						아래에서 원하는 날짜와 입장권을 선택하세요
					</div>
					<div class="d-flex justify-content-end px-3">
						<div class="me-2">
							<label>07/25</label>
							<input type="radio" name="ticketDate" checked>
						</div>
						<div class="me-2">
							<label>07/26</label>
							<input type="radio" name="ticketDate">
						</div>
					</div>
					<div class="p-3">
						<div class="border p-3">
							<div class="mb-2">성인</div>
							<div class="d-flex justify-content-between">
								<div class="d-flex justify-content-center align-items-center" id="18up">
									<div><h3 class="m-0 MBtn">-</h3></div>
									<div><h3 class="my-0 mx-3 fw-bold"></h3></div>
									<div><h3 class="m-0 PBtn">+</h3></div>
								</div>
								<div>
									<span>3000</span>원
								</div>
							</div>
						</div>
						<div class="border p-3">
							<div class="mb-2">청소년</div>
							<div class="d-flex justify-content-between">
								<div class="d-flex justify-content-center align-items-center" id="18down">
									<div><h3 class="m-0 MBtn">-</h3></div>
									<div><h3 class="my-0 mx-3 fw-bold">0</h3></div>
									<div><h3 class="m-0 PBtn">+</h3></div>
								</div>
								<div>
									<span>2000</span>원
								</div>
							</div>
						</div>
					</div>
					<button type="button" class="btn btn-info" id="selectTicket">선택 완료</button>
				</div>
			</div>
			<div class="d-flex flex-column border p-3">
				<table class="mb-3 text-center">
					<thead class="border-bottom">
						<tr>
							<td>지역</td>
							<td>상품명</td>
							<td>매수</td>
							<td>가격</td>
							<td>선택 취소</td>
						</tr>
					</thead>
					<tbody id="ticketView">
					</tbody>
				</table>
				<div class="d-flex justify-content-end align-items-center">
					<div style="font-size: 9px;">선택된 총 입장권요금</div>
					<div class="mx-2"><span id="ticketTotal"></span><span>원</span></div>
					<button type="button" class="btn btn-sm btn-primary" id="ticketBtn">선택완료</button>
				</div> 
			</div>
			
			<div class="border-bottom border-primary py-3 mb-3"></div>
			<!--------------------입장권----------------------------- -->
			
        </div>
     </div>   
	</main>
	
	<!-- 시/도 선택 -->
<div class="modal fade" id="trainModal" aria-hidden="true" aria-labelledby="trainModalLabel" role="dialog" aria-hidden="true" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5">시/도 선택</h1>
        <button type="button" class="btn-close" data-toggle="modal" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <ul class="d-flex flex-wrap justify-content-around p-0" id="sido">
			<c:forEach items="${item}" var="item" varStatus="status">
				<li class="mb-2">
					<label><c:out value="${item.cityname }"/></label>
					<input type="hidden" class="form-control" value="<c:out value="${item.cityname }"/>" name="<c:out value="${item.cityname }"/>" readonly>
				</li>
			</c:forEach>
   		</ul>
      </div>
    </div>
  </div>
</div>	
	<!-- 출발역 선택 -->	
<div class="modal fade" id="trainStationModal" aria-hidden="true" aria-labelledby="trainStationModalLabel" role="dialog" aria-hidden="true" tabindex="-1">
	<div class="modal-dialog modal-dialog-centered" role="document">
    	<div class="modal-content">
   			<div class="modal-header">
      			<h1 class="modal-title fs-5">출발역 선택</h1>
        		<button type="button" class="btn-close" data-toggle="modal" data-bs-dismiss="modal" aria-label="Close"></button>
      		</div>
      		<div class="modal-body">
	      		<ul class="d-flex flex-wrap justify-content-around p-0">
	      			<c:forEach items="${item}" var="item" varStatus="status">
					  	<li class="mb-2">
					  		<label>"><c:out value="${item.nodeName }"/></label>
					  		<input type="hidden" class="form-control" value="<c:out value="${item.nodeName }"/>" name="<c:out value="${item.nodeName }"/>" readonly>
					  	</li>
					  </c:forEach>
	      		</ul>
      		</div>
      		<div class="modal-footer">
      			<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
     				<button type="button" class="btn btn-primary">Save changes</button>
      		</div>
    	</div>
 	</div>
</div>
	
	


	
	
	<!-- End main --> 
    
    <jsp:include page="../include/footer.jsp"></jsp:include>
	<jsp:include page="../include/script.jsp"></jsp:include>
	<script>
// 		new CBPFWTabs(document.getElementById('tabs'));
	$(".ticketBox a").on("click", function(){
		$(this).parent().parent().parent().parent().parent().addClass("d-none");
		$(this).parent().parent().parent().parent().parent().next().removeClass("d-none");
	})
	$(".detailCloseBtn").on("click", function(){
		$(this).parent().parent().parent().prev().removeClass("d-none");
		$(this).parent().parent().parent().addClass("d-none");
	})
	
	$(function(){
		var hotelPrice = 113637;
		var hotelLen = parseInt($("#sleep").val());
		$("#hotelTotal").text(hotelPrice * hotelLen);
		$(".hotelSelect tbody tr").on("click", $("tbody tr"), function(){
			$("tr").removeClass("bg-warning");
			$(this).toggleClass("bg-warning");
// 			hotelPrice = ;
		})
		$("#sleep").on("change", function(){
			hotelLen =  parseInt($("#sleep").val());
			$("#hotelTotal").text(hotelPrice * hotelLen); 
		});
		
	})
	$(document).on("click", ".delBtn", function(){
		$(this).parent().parent().remove();
	})
	var ageup = 0;
	var agedown = 0;
	var ageupPrice = 3000;
	var agedownPrice = 2000;
	
	$("#18up").find(".fw-bold").text(ageup);
	$("#18down").find(".fw-bold").text(agedown);
	
	$("#18up .PBtn").on("click",function(){
		ageup ++;
		$("#18up").find(".fw-bold").text(ageup);
	})
	
	$("#18up .MBtn").on("click",function(){
		if(ageup > 0){
			ageup --;
			$("#18up").find(".fw-bold").text(ageup);
		} else {
			
		}
	})
	
	$("#18down .PBtn").on("click",function(){
		agedown ++;
		$("#18down").find(".fw-bold").text(agedown);
	})
	
	$("#18down .MBtn").on("click",function(){
		if(agedown > 0){
			agedown --;
			$("#18down").find(".fw-bold").text(agedown);
		} else {
			
		}
	})
	$("#selectTicket").on("click", function(){
		if(ageup == 0 && agedown == 0) {
			
		} else {
			var ticketPrice = ageup * ageupPrice + agedown * agedownPrice;
			$("#ticketView").append('<tr><td><span>[강원 속초]</span></td><td><span class="mx-3">파아란 스쿠버 다이빙 프리다이빙 자격증 체험 2인이상</span></td><td><span>('+ (ageup+agedown) +'명)</span></td><td><span class="me-3 ticketPrice">'+ticketPrice+'</span><span>원</span></td><td><a class="btn btn-light text-danger delBtn">X</a></td></tr>');
		}
		var allTicketPrice = 0;
		console.log($(".ticketPrice").length)
		for(var i = 0; i<$(".ticketPrice").length; i++){
			allTicketPrice += parseInt($(".ticketPrice").eq(i).text());
		}
		console.log(allTicketPrice)
		$("#ticketTotal").text(allTicketPrice);
		
	})
	$("#hotelBtn").on("click", function(){
		$("#hotelPriceF").text($("#hotelTotal").text());
		$("#totalPrice").text(parseInt($("#ticketPriceF").text()) + parseInt($("#hotelPriceF").text()) + parseInt($("#trainPriceF").text()));
	})
	$("#ticketBtn").on("click", function(){
		$("#ticketPriceF").text($("#ticketTotal").text());
		$("#totalPrice").text(parseInt($("#ticketPriceF").text()) + parseInt($("#hotelPriceF").text()) + parseInt($("#trainPriceF").text()));
	})
	
	$(window).scroll(function(){
        var sectionTop = $("#train").offset().top;
        var secPos = Math.abs($(window).scrollTop() - sectionTop);
        

        if ($(window).scrollTop() > 600 && $(window).scrollTop() < 2400) {
    
            $("#bookingView").css({

                top: secPos + 900 +"px"
            });
    
        }


    });
		
	$(function() {
	      'use strict';
	      $('input.date-pick').daterangepicker({
	          autoUpdateInput: false,
	          opens: 'left',
	          minDate:new Date(),
	          locale: {
	              cancelLabel: 'Clear'
	          }
	      });
	      $('input.date-pick').on('apply.daterangepicker', function(ev, picker) {
	          $(this).val(picker.startDate.format('MM-DD-YY') + ' > ' + picker.endDate.format('MM-DD-YY'));
	      });
	      $('input.date-pick').on('cancel.daterangepicker', function(ev, picker) {
	          $(this).val('');
	      });
	    });
	
	
// 	modal
	var TrainModal = new bootstrap.Modal(document.getElementById('trainModal'), {
		  keyboard: true,
		  backdrop: "static"
		});
		
	var TrainModal2 = new bootstrap.Modal(document.getElementById('trainStationModal'), {
		  keyboard: true,
		  backdrop: "static"
		});
		
		$(".train").on("click",function(){
			TrainModal.toggle();
		})
		
		$("#sido li label").on("click",function(){
			var sidoval = $(this).val();
			alert(sidoval);
			
			TrainModal.hide();
			

			 var cityMap = {
				        "서울특별시": 11,
				        "세종특별시": 12,
				        "부산광역시": 21,
				        "대구광역시": 22,
				        "인천광역시": 23,
				        "광주광역시": 24,
				        "대전광역시": 25,
				        "울산광역시": 26,
				        "경기도": 31,
				        "강원도": 32,
				        "충청북도": 33,
				        "충청남도": 34,
				        "전라북도": 35,
				        "전라남도": 36,
				        "경상북도": 37,
				        "경상남도": 38
				        // ... 나머지 도시들의 매핑 정보 추가
				    };

				    // 선택한 도시 이름을 도시 코드로 변환
				    var cityCode = cityMap[sidoval];
						alert(cityCode);
			
			
			 $.ajax({
				async: true,
				cache:false,
				type:"post",
				url:"trainProc"
				data: {
					"citycode" : $(this).next().val();
				},
				success:function(response){
					if(response.rt === "success"){
						
					}else{
						alert("실패");
					}
						
				},
				error: function(jqXHR, textStatus, errorThrown) {
		            alert("ajaxUpdate " + textStatus + " : " + errorThrown);
		            
			}) 
			
			
			TrainModal2.toggle();
		});
		
		
		
		
		
		
</script>
	

</body>