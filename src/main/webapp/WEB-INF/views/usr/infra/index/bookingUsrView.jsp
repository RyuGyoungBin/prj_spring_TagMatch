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
                                        <h2 class="owl-slide-animated owl-slide-title backFonts">예약하기<br></h2>
                                        <p class="owl-slide-animated owl-slide-subtitle backFonts">
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
								<input class="date-pick form-control" type="text" placeholder="Select dates" id="datePick" value="20230905>20230908">
							</div>
						</div>
						<div class="d-flex">
							<div class="me-3">
								<input type="radio" name="itinerary" id="itineraryOne" value="0">
								<label for="itineraryOne">편도</label>
							</div>
							<div>
								<input type="radio" name="itinerary" id="itineraryTwo" value="1" checked>
								<label for="itineraryTwo">왕복</label>
							</div>
						</div>
					</div>
					<div class="d-flex justify-content-center mb-2">
						<div class="d-flex me-3 text-nowrap align-items-center fw-bold">가는편</div>
						<div class="d-flex me-3 text-nowrap align-items-center">
							<label class="me-3">출발역</label>
							<input type="text" class="form-control train" value="서울역" readonly name="t1departStation">
							<input type="hidden" id="t1departStation" value="NAT010000">
						</div>
						<div class="d-flex me-3 text-nowrap align-items-center">
							<label class="me-3">도착역</label>
							<input type="text" class="form-control train" value="부산역" readonly name="t1arriveStation">
							<input type="hidden" id="t1arriveStation" value="NAT014445">
						</div>
					</div>
					<div class="d-flex justify-content-center mb-2">
						<div class="d-flex me-3 text-nowrap align-items-center fw-bold">오는편</div>
						<div class="d-flex me-3 text-nowrap align-items-center">
							<label class="me-3">출발역</label>
							<input type="text" class="form-control train" value="부산역" readonly name="t2departStation">
							<input type="hidden" id="t2departStation" value="NAT014445">
						</div>
						<div class="d-flex me-3 text-nowrap align-items-center">
							<label class="me-3">도착역</label>
							<input type="text" class="form-control train" value="서울역" readonly name="t2arriveStation">
							<input type="hidden" id="t2arriveStation" value="NAT010000">
						</div>
					</div>
					<div class="d-flex justify-content-around pb-3 border-bottom">
						<div class="d-flex justify-content-center col-11">
							<div class="d-flex me-3 text-nowrap align-items-center fw-bold">예약 인원</div>
							<div class="d-flex me-3 text-nowrap align-items-center">
								<label>성인(만 13세 이상)</label>
								<select class="form-control" id="trainAdult">
									<option value="0">0</option>
									<option value="1" selected>1</option>
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
								<select class="form-control" id="trainChild">
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
						<button type="button" class="col-1 btn btn-secondary" id="searchTrain">조회</button>
					</div>
					<div>
						<h4 class="p-3 fw-bold">가는 철도편 선택</h4>
						<table class="table text-center">
							<thead>
								<tr>
									<th>열차종</th>
									<th>출도착역</th>
									<th>여정시간</th>
									<th>요금</th>
									<th>좌석</th>
								</tr>
							</thead>
							<tbody id="t1trainDate" class="trainDate">
							</tbody>
						
						</table>
					</div>
					<div>
						<h4 class="p-3 fw-bold">오는 철도편 선택</h4>
						<table class="table text-center">
							<thead>
								<tr>
									<th>열차종</th>
									<th>출도착역</th>
									<th>여정시간</th>
									<th>요금</th>
									<th>좌석</th>
								</tr>
							</thead>
							<tbody id="t2trainDate" class="trainDate">
							</tbody>
						
						</table>
					</div>
					<div class="d-flex flex-column border p-3 text-center">
						<div class="mb-1 d-flex align-items-center">
							<span class="border border-danger rounded-pill px-2 col-1">가는편</span>
							<div class="d-flex justify-content-around col-11 align-items-center">
								<span></span>
								<span class="mx-3"></span>
								<span></span>
								<span class="ms-3"></span>
								<span class="me-3"></span>
								<span id="t1Price"></span>원
								<button type="button" class="trainClose btn btn-danger">X</button>
							</div>
						</div>
						<div class="mb-1 d-flex align-items-center">
							<span class="border border-info rounded-pill px-2 col-1">오는편</span>
							<div class="d-flex justify-content-around col-11 align-items-center">
								<span></span>
								<span class="mx-3"></span>
								<span></span>
								<span class="ms-3"></span>
								<span class="me-3"></span>
								<span id="t2Price"></span>원
								<button type="button" class="trainClose btn btn-danger">X</button>
							</div>
						</div>
						<div class="mb-1 d-flex justify-content-between align-items-center">
						<div class="d-flex align-items-center">
							<div style="font-size: 9px;">선택된 총 기차요금</div>
							<div class="mx-2"><span id="trainTotal"></span>원</div>
						</div>
						<button type="button" class="btn btn-sm btn-primary" id="trainBtn">선택완료</button>
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
						<c:forEach items="${hotel}" var="hotel" varStatus="statusUploaded">
								<div class="col-md-4 px-2">
									<div class="hotel_container">
										<div class="img_container">
											<a class="hotelModal" name="<c:out value="${hotel.seq }"></c:out>">
												<img src="<c:out value="${hotel.path }"/><c:out value="${hotel.uuidName }"/>" width="300" height="533" class="img-fluid" alt="Image">
												<div class="score"><span><c:out value="${hotel.starRating }"></c:out></span>Good</div>
											</a>
										</div>
										<div class="hotel_title">
											<h3 style="display:block;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" ><strong>[<c:out value="${hotel.sido }"/>]<c:out value="${hotel.name }"/></strong></h3>
											<div class="rating" id="hotelRating<c:out value="${hotel.seq }"/>">
											</div>
										</div>
									</div>
								</div>
						</c:forEach>
					<!-- End row -->
				</div>
			</div>
			<div class="overflow-auto mb-3 border d-none ticketDetail ticketSelect" style="height: 650px;" id="hotelModal">
				<div class="d-flex flex-column">
					<div class="p-4 border-bottom d-flex justify-content-between align-items-center">
						숙소상세정보
						<a class="btn btn-light text-secondary detailCloseBtn">X</a>
					</div>
					<div class="d-flex p-3">
						<div class="col-4 p-3 border-bottom">
							<img src="" width="300" height="533" class="img-fluid" alt="Image">
						</div>
						<div class="col-6 d-flex flex-column border-bottom justify-content-around">
							<span class="h4 fw-bold text-center border-bottom pb-3"> </span>
							<span>주소 : </span>
							<span>객 실수 : </span>
							<span>특이사항 : </span>
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
									<td></td>
									<td>O</td>
								</tr>
								<tr>
									<td>스탠다드 더블</td>
									<td>07/24(월)</td>
									<td></td>
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
			
			
			
			
			
			
<!-- 			<div class="d-flex flex-column border p-3"> -->
<!-- 				<div><h5 class="ms-2 mb-2">글래드 강남 코엑스센터</h5></div> -->
<!-- 				<div class="d-flex justify-content-between align-items-center"> -->
<!-- 					<div class="col-6 d-flex justify-content-around flex-wrap"> -->
<!-- 						<div class="col-5">객실명 : </div> -->
<!-- 						<div class="col-5">이용박수 : </div> -->
<!-- 						<div class="col-5">입실일 : </div> -->
<!-- 						<div class="col-5">객실수 : </div> -->
<!-- 					</div> -->
<!-- 					<div class="col-3 d-flex justify-content-between"> -->
<!-- 						<div> -->
<!-- 							<div style="font-size: 9px;">선택된 총 숙박요금</div> -->
<!-- 							<div class="mx-2"><span id="hotelTotal"></span>원</div> -->
<!-- 						</div> -->
<!-- 						<button type="button" class="btn btn-sm btn-primary" id="hotelBtn">선택완료</button> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
			
			<div class="d-flex flex-column border p-3">
				<div><h5 class="ms-2 mb-2"></h5></div>
				<table class="mb-3 text-center">
					<thead class="border-bottom">
						<tr>
							<td>객실명</td>
							<td>이용일수</td>
							<td>매수</td>
							<td>입실일</td>
							<td>객실수</td>
							<td>선택 취소</td>
						</tr>
					</thead>
					<tbody id="hotelView">
					</tbody>
				</table>
				<div class="d-flex justify-content-end align-items-center">
					<div style="font-size: 9px;">선택된 총 숙소요금</div>
					<div class="mx-2"><span id="hotelTotal"></span><span>원</span></div>
					<button type="button" class="btn btn-sm btn-primary" id="hotelBtn">선택완료</button>
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
						<c:forEach items="${spot}" var="spot" varStatus="statusUploaded">
								<div class="col-md-4 px-2">
									<div class="hotel_container">
										<div class="img_container">
											<a class="spotModal" name="<c:out value="${spot.seq }"></c:out>">
												<img src="<c:out value="${spot.path }"/><c:out value="${spot.uuidName }"/>" width="300" height="533" class="img-fluid" alt="Image">
												<div class="score"><span><c:out value="${spot.starRating }"></c:out></span></div>
											</a>
										</div>
										<div class="hotel_title">
											<h3 style="display:block;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" ><strong><c:out value="${spot.name }"></c:out></strong></h3>
											<div class="rating" id="spotRating<c:out value="${spot.seq }"/>">
											</div>
										</div>
									</div>
									<!-- End box tour -->
								</div>
						</c:forEach>
				</div>
			</div>
			<div class="overflow-auto mb-3 border d-none ticketDetail ticketSelect" style="height: 650px;" id="spotModal">
				<div class="d-flex flex-column" >
					<div class="p-4 border-bottom d-flex justify-content-between align-items-center">
						상품상세정보
						<a class="btn btn-light text-secondary detailCloseBtn">X</a>
					</div>
					<div class="d-flex p-3">
						<div class="col-4 p-3 border-bottom">
							<img src="" width="300" height="533" class="img-fluid" alt="Image">
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
        <ul class="d-flex flex-wrap justify-content-around p-0 text-center" id="sido">
			<c:forEach items="${item}" var="item" varStatus="status">
				<li class="mb-2 col-5">
					<label for="<c:out value="${item.cityname }"/>" class="form-control"><c:out value="${item.cityname }"/></label>
					<input type="hidden" class="form-control" value="<c:out value="${item.citycode }"/>" name="<c:out value="${item.citycode }"/>" readonly>
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
	      			<h1 class="modal-title fs-5">기차역 선택</h1>
	        		<button type="button" class="btn-close" data-toggle="modal" data-bs-dismiss="modal" aria-label="Close"></button>
	      		</div>
	      		<div class="modal-body">
		      		<ul class="d-flex flex-wrap justify-content-around p-0 text-center" id="trainStation">
		      			
		      		</ul>
	      		</div>
	    	</div>
	 	</div>
</div>
	
	


	
	
	<!-- End main --> 
    
    <jsp:include page="../include/footer.jsp"></jsp:include>
	<jsp:include page="../include/script.jsp"></jsp:include>
	<!-- kakao map -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=85c0c885a814cd3619fd903a7c7f6b2d"></script>
 	<script type="text/javascript">
  	  var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
 	  var options = { //지도를 생성할 때 필요한 기본 옵션
 	  center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
 	  level: 3 //지도의 레벨(확대, 축소 정도)
 	  var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	  };
	  </script>
	  
	<script>
// 		new CBPFWTabs(document.getElementById('tabs'));
	$(".ticketBox a").on("click", function(){
		$(this).parent().parent().parent().parent().parent().addClass("d-none");
		$(this).parent().parent().parent().parent().parent().next().removeClass("d-none");
	})
	$(document).on("click",".detailCloseBtn", function(){
		$(this).parent().parent().parent().prev().removeClass("d-none");
		$(this).parent().parent().parent().addClass("d-none");
	})
	$(function(){
		var hotelPrice = 0;
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
		
		$(document).on("click", ".delBtn", function(){
			allHotelPrice = 0;
			$(this).parent().parent().remove();
			for(var i = 0; i<$(".hotelPrice").length; i++){
				allHotelPrice += parseInt($(".hotelPrice").eq(i).text());
			}
			$("#hotelTotal").text(allHotelPrice);
		})
			
		$(document).on("click", ".delBtn", function(){
			 allTicketPrice = 0;
			$(this).parent().parent().remove();
			for(var i = 0; i<$(".ticketPrice").length; i++){
				allTicketPrice += parseInt($(".ticketPrice").eq(i).text());
			}
			$("#ticketTotal").text(allTicketPrice);
		})
		
		
	})
		var adultCount  = 0;
		var youthCount  = 0;
		var ageupPrice = 0;
		var agedownPrice = 0;
	$(document).on("click","#selectTicket", function(){
		if(adultCount == 0 || youthCount == 0) {
			
		} else {
			var ticketPrice = adultCount  * ageupPrice + youthCount  * agedownPrice;
			$("#ticketView").append('<tr><td><span>[강원 속초]</span></td><td><span class="mx-3">파아란 스쿠버 다이빙 프리다이빙 자격증 체험 2인이상</span></td><td><span>('+ (adultCount +youthCount ) +'명)</span></td><td><span class="me-3 ticketPrice">'+ticketPrice+'</span><span>원</span></td><td><a class="btn btn-light text-danger delBtn">X</a></td></tr>');
		}
		var allTicketPrice = 0;
		console.log($(".ticketPrice").length)
		for(var i = 0; i<$(".ticketPrice").length; i++){
			allTicketPrice += parseInt($(".ticketPrice").eq(i).text());
		}
		console.log(allTicketPrice)
		$("#ticketTotal").text(allTicketPrice);
	})
	$("#trainBtn").on("click", function(){
		$("#trainPriceF").text($("#trainTotal").text());
		$("#totalPrice").text(parseInt($("#ticketPriceF").text()) + parseInt($("#hotelPriceF").text()) + parseInt($("#trainPriceF").text()));
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
	          $(this).val(picker.startDate.format('YYYYMMDD') + '>' + picker.endDate.format('YYYYMMDD'));
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
		var target = "";
		$(".train").on("click",function(){
			target = "#"+$(this).attr("name");
			console.log(target);
			TrainModal.toggle();
		})
		
		$("#sido li label").on("click",function(){
			
			 $.ajax({
				async: true,
				cache:false,
				type:"post",
				url:"/trainStation",
				data: {"citycode" : $(this).next().val()},
				success:function(response){
					console.log(response.rtTrain);
					$("#trainStation").empty();
			 		stationLi = "";
			 		$.each(response.rtTrain,function(index, value) {
				 		stationLi += "<li class='mb-2 col-5'><span class='form-control station'>"+value.nodename+"</span></li>";
				 		stationLi += "<input hidden='hidden' value="+value.nodeid+">";
		 			})
			 		$("#trainStation").append(stationLi);
			 		$("#searchTrain").removeClass("btn-secondary").addClass("btn-info");
					
				},
				error: function(jqXHR, textStatus, errorThrown) {
		            alert("ajaxUpdate " + textStatus + " : " + errorThrown);
			}
		});
			TrainModal2.toggle();
		});
		
		$(document).on("click", "#trainStation span", function(){
			$(target).prev().val($(this).text());
			$(target).val($(this).parent().next().val());
			TrainModal2.hide();
			TrainModal.hide();
		})
		
		
		
		

		
		$("#searchTrain").on("click", function(){
			console.log($("#datePick").val())
			$(".trainClose").click();
			$.ajax({
				async: true,
				cache:false,
				type:"post",
				url:"/trainStationYY",
				
				data: {
						   "depPlandTime" : $("#datePick").val(),
						   "depPlaceId": $("#t1departStation").val(),
						   "arrPlaceId": $("#t1arriveStation").val()
					},
				success:function(response){
					console.log(response.rtTrain);
					$("#t1trainDate").empty();
			 		stationLi = "";
			 		$.each(response.rtTrain,function(index, value) {
		 				var depplandtime = (value.depplandtime.toString()).substr(8,2);
		 				var arrplandtime = (value.arrplandtime.toString()).substr(8,2);
		 				var depplandMin = (value.depplandtime.toString()).substr(10,2);
		 				var arrplandMin = (value.arrplandtime.toString()).substr(10,2);
				 		stationLi += "<tr>";
				 		stationLi += "<th>"+value.traingradename+"</th>";
				 		stationLi += "<th>"+value.depplacename+" - "+value.arrplacename+"</th>";
				 		stationLi += "<th>"+arrplandtime+" : "+arrplandMin+" - "+depplandtime+" : "+depplandMin+"</th>";
				 		stationLi += "<th>성인:30,000원<br>아동:15,000원</th>";
				 		stationLi += "<th>입석</th>";
				 		stationLi +=  "</tr>";
				 		if($("input:radio[name=itinerary]:checked").val() == 0){
				 			$("#searchTrain").removeClass("btn-info").addClass("btn-secondary");
				 		}
		 			})
			 		$("#t1trainDate").append(stationLi);
			 		
				},
				error: function(jqXHR, textStatus, errorThrown) {
					$("#t1trainDate").empty();
		            alert("기차가 없습니다");
			}
			});
			if($("input:radio[name=itinerary]:checked").val() == 1){
				$.ajax({
					async: true,
					cache:false,
					type:"post",
					url:"/trainStationXX",
					
					data: {
							   "depPlandTime" : $("#datePick").val(),
							   "depPlaceId": $("#t2departStation").val(),
							   "arrPlaceId": $("#t2arriveStation").val()
						},
					success:function(response){
						console.log(response.rtTrain);
						$("#t2trainDate").empty();
				 		stationLi2 = "";
				 		$.each(response.rtTrain2,function(index, value) {
			 				var depplandtime = (value.depplandtime.toString()).substr(8,2);
			 				var arrplandtime = (value.arrplandtime.toString()).substr(8,2);
			 				var depplandMin = (value.depplandtime.toString()).substr(10,2);
			 				var arrplandMin = (value.arrplandtime.toString()).substr(10,2);
					 		stationLi2 += "<tr>";
					 		stationLi2 += "<th>"+value.traingradename+"</th>";
					 		stationLi2 += "<th>"+value.depplacename+" - "+value.arrplacename+"</th>";
					 		stationLi2 += "<th>"+arrplandtime+" : "+arrplandMin+" - "+depplandtime+" : "+depplandMin+"</th>";
					 		stationLi2 += "<th>성인:30,000원<br>아동:15,000원</th>";
					 		stationLi2 += "<th>입석</th>";
					 		stationLi2 +=  "</tr>";
			 			})
				 		$("#t2trainDate").append(stationLi2);
				 		$("#searchTrain").removeClass("btn-info").addClass("btn-secondary");
					},
					error: function(jqXHR, textStatus, errorThrown) {
						alert("기차가 없습니다");
					}
				})
				
			} else {
				$("#t2trainDate").empty();
			}
			$("#searchTrain").removeClass("btn-info").addClass("btn-secondary");
			
		})
		
			var trainArr ;
			var trainStr ;
			var trainDatArr ; 
			var trainDatMM ;
			var trainDatDD ; 
			var trainAdult ; 
			var trainChild ; 
		
		$(document).on("click", "#t1trainDate tr", function(){
			 trainArr = $(this).children("th:eq(2)").text().split("-");
			 trainStr = trainArr[0];
			 trainDatArr = $("#datePick").val().split(">");
			 trainDatMM = trainDatArr[0].substr(4,2);
			 trainDatDD = trainDatArr[0].substr(6,2);
			 trainAdult = $("#trainAdult").val();
			 trainChild = $("#trainChild").val();
			
			$("#t1Price").prev().prev().prev().prev().prev().text($(this).children("th:eq(1)").text());
			$("#t1Price").prev().prev().prev().prev().text($(this).children("th:eq(0)").text());
			$("#t1Price").prev().prev().prev().text(trainDatMM +"/"+trainDatDD+" "+trainStr+" 출발");
			$("#t1Price").prev().prev().text("좌석정보 : ");
			$("#t1Price").prev().text($(this).children("th:eq(4)").text());
			$("#t1Price").text((30000*trainAdult + 15000*trainChild));
			$("#trainTotal").text($("#t1Price").text()+$("#t2Price").text())
		})
		
		$(document).on("click", "#t2trainDate tr", function(){
			 trainArr = $(this).children("th:eq(2)").text().split("-");
			 trainStr = trainArr[0];
			 trainDatArr = $("#datePick").val().split(">");
			 trainDatMM = trainDatArr[1].substr(4,2);
			 trainDatDD = trainDatArr[1].substr(6,2);
			 trainAdult = $("#trainAdult").val();
			 trainChild = $("#trainChild").val();
			
			$("#t2Price").prev().prev().prev().prev().prev().text($(this).children("th:eq(1)").text());
			$("#t2Price").prev().prev().prev().prev().text($(this).children("th:eq(0)").text());
			$("#t2Price").prev().prev().prev().text(trainDatMM +"/"+trainDatDD+" "+trainStr+" 출발");
			$("#t2Price").prev().prev().text("좌석정보 : ");
			$("#t2Price").prev().text($(this).children("th:eq(4)").text());
			$("#t2Price").text((30000*trainAdult + 15000*trainChild));
			
			$("#trainTotal").text((parseInt($("#t1Price").text())+parseInt($("#t2Price").text())))
		})
		
		$(".trainClose").on("click", function(){
			$(this).siblings("span").empty();
		})
		<c:forEach items="${hotel}" var="hotel" varStatus="statusUploaded">
			var ratingStar<c:out value="${hotel.seq }"/> = $("#rating<c:out value="${hotel.seq }"/>");
			var rating<c:out value="${hotel.seq }"/> = Math.floor(<c:out value="${hotel.starRating }"/>);
			
			for(var i=0; i<rating<c:out value="${hotel.seq }"/> ; i++){
				ratingStar<c:out value="${hotel.seq }"/>.append('<i class="icon-smile voted"></i>')
			}
			for(var j=0; j<5-i; j++){
				ratingStar<c:out value="${hotel.seq }"/>.append('<i class="icon-smile"></i>');
			}
		</c:forEach>
		
		/*spot 별점 S*/
		<c:forEach items="${spot}" var="spot" varStatus="statusUploaded">
		var ratingStar<c:out value="${spot.seq }"/> = $("#spotRating<c:out value="${spot.seq }"/>");
		var rating<c:out value="${spot.seq }"/> = Math.floor(<c:out value="${spot.starRating }"/>);
		
		for(var i=0; i<rating<c:out value="${spot.seq }"/> ; i++){
			ratingStar<c:out value="${spot.seq }"/>.append('<i class="icon-smile voted"></i>')
		}
		for(var j=0; j<5-i; j++){
			ratingStar<c:out value="${spot.seq }"/>.append('<i class="icon-smile"></i>');
		}
		</c:forEach>
	  /*spot 별점 E*/
	  
	  //Ticket 수량 증감 S
	  // 성인 수량 증가
$(document).on("click", "#18up .PBtn", function(){
    console.log("aaaaaaaaaa");
     adultCount = parseInt($(this).parent().siblings().find(".fw-bold").text()); // 현재 수량 가져오기
    adultCount++; // 수량 증가
    $(this).parent().siblings().find(".fw-bold").text(adultCount); // 수량 업데이트
});

// 성인 수량 감소
$(document).on("click", "#18up .MBtn", function(){
    console.log("bbbbbbbbb");
     adultCount = parseInt($(this).parent().siblings().find(".fw-bold").text()); // 현재 수량 가져오기
    if (adultCount > 0) {
        adultCount--; // 수량 감소 (0보다 작아지지 않도록 확인)
        $(this).parent().siblings().find(".fw-bold").text(adultCount); // 수량 업데이트
    }
});

// 청소년 수량 증가
$(document).on("click", "#18down .PBtn", function(){
    console.log("ccccccccc");
     youthCount = parseInt($(this).parent().siblings().find(".fw-bold").text()); // 현재 수량 가져오기
    youthCount++; // 수량 증가
    $(this).parent().siblings().find(".fw-bold").text(youthCount); // 수량 업데이트
});

// 청소년 수량 감소
$(document).on("click", "#18down .MBtn", function(){
    console.log("ddddddddd");
     youthCount = parseInt($(this).parent().siblings().find(".fw-bold").text()); // 현재 수량 가져오기
    if (youthCount > 0) {
        youthCount--; // 수량 감소 (0보다 작아지지 않도록 확인)
        $(this).parent().siblings().find(".fw-bold").text(youthCount); // 수량 업데이트
    }
});
//Ticket 수량 증감 E
	  
	  
// 	  $(document).on("click", "#18down .PBtn", function(){
// 		  console.log("aaaaaaaaaa")
// 			agedown ++;
// 		$(this).find(".fw-bold").text(agedown);
// 	  })
	  
	  $(document).on()
	  
    $(".spotModal").click(function(){
            $.ajax({
                type : "POST",            
                url : "/spotModal",    
                data :{
                   "seq" : $(this).attr("name")
                },
                success : function(res){ 
//                     alert(res);
                	$("#spotModal").empty();
                	ageupPrice = res.spot.adultPrice;
                	agedownPrice = res.spot.childPrice;
                	spotModal = "";
				console.log(res)
                    spotModal="";
                    spotModal +='<div class="d-flex flex-column">';
                    spotModal +='<div class="p-4 border-bottom d-flex justify-content-between align-items-center">';
                    spotModal +='상품상세정보';
                    spotModal +='<a class="btn btn-light text-secondary detailCloseBtn">X</a>';
                    spotModal +='</div>';
                    spotModal +='<div class="d-flex p-3">';
                    spotModal +='<div class="col-4 p-3 border-bottom">';
                    spotModal +='<img src="'+res.spot.path+res.spot.uuidName+'" width="300" height="533" class="img-fluid" alt="Image">';
                    spotModal +='</div>';
                    spotModal +='<div class="col-6 d-flex flex-column border-bottom justify-content-around">';
                    spotModal +='<span class="h4 fw-bold text-center border-bottom pb-3">'+res.spot.name+'</span>';
                    spotModal +='<span>주소 : '+res.spot.address+" "+res.spot.addressDetail+'</span>';
                    spotModal +='</div>';
                    spotModal +='<div class="col-2 p-3">';
                    spotModal +='<a class="btn btn-secondary">지도보기</a>';
                    spotModal +='</div>';
                    spotModal +='</div>';
                    spotModal +='<div class="px-3">';
                    spotModal +='<p>'+res.spot.detailText+'</p>';
                    spotModal +='아래에서 원하는 입장권을 선택하세요';
                    spotModal +='</div>';
                    spotModal +='<div class="p-3">';
                    spotModal +='<div class="border p-3">';
                    spotModal +='<div class="mb-2">성인</div>';
                    spotModal +='<div class="d-flex justify-content-between">';
                    spotModal +='<div class="d-flex justify-content-center align-items-center" id="18up">';
                    spotModal +='<div><h3 class="m-0 MBtn">-</h3></div>';
                    spotModal +='<div><h3 class="my-0 mx-3 fw-bold">0</h3></div>';
                    spotModal +='<div><h3 class="m-0 PBtn">+</h3></div>';
                    spotModal +='</div>';
                    spotModal +='<div>';
                    spotModal +='<span>'+res.spot.adultPrice+'</span>원';
                    spotModal +='</div>';
                    spotModal +='</div>';
                    spotModal +='</div>';
                    spotModal +='<div class="border p-3">';
                    spotModal +='<div class="mb-2">청소년</div>';
                    spotModal +='<div class="d-flex justify-content-between">';
                    spotModal +='<div class="d-flex justify-content-center align-items-center" id="18down">';
                    spotModal +='<div><h3 class="m-0 MBtn">-</h3></div>';
                    spotModal +='<div><h3 class="my-0 mx-3 fw-bold">0</h3></div>';
                    spotModal +='<div><h3 class="m-0 PBtn">+</h3></div>';
                    spotModal +='</div>';
                    spotModal +='<div>';
                    spotModal +='<span>'+res.spot.childPrice+'</span>원';
                    spotModal +='</div>';
                    spotModal +='</div>';
                    spotModal +='</div>';
                    spotModal +='</div>';
                    spotModal +='<button type="button" class="btn btn-info" id="selectTicket">선택 완료</button>';
                    spotModal +='</div>';
                    $("#spotModal").append(spotModal);
                },
                error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                    alert("통신 실패.")
                }
            })
    });
    
	  $(".hotelModal").click(function(){
          $.ajax({
              type : "POST",            
              url : "/hotelModal",    
              data :{
                 "seq" : $(this).attr("name")
              },
              success : function(res){ 
//                   alert("1");
              	$("#hotelModal").empty()
//               	ageupPrice = res.hotel.adultPrice;
//               	agedownPrice = res.hotel.childPrice;
              	hotelModal = "";
				console.log(res)
                hotelModal="";
				hotelModal +='<div class="d-flex flex-column">';
				hotelModal +='<div class="p-4 border-bottom d-flex justify-content-between align-items-center">';
				hotelModal +='숙소상세정보';
				hotelModal +='<a class="btn btn-light text-secondary detailCloseBtn">X</a>';
				hotelModal +='</div>';
				hotelModal +='<div class="d-flex p-3">';
				hotelModal +='<div class="col-4 p-3 border-bottom">';
				hotelModal +='<img src="'+res.hotelMap.hotel.path+res.hotelMap.hotel.uuidName+'" width="300" height="533" class="img-fluid" alt="Image">';
				hotelModal +='</div>';
                hotelModal +='<div class="col-6 d-flex flex-column border-bottom justify-content-around">';
                hotelModal +='<span class="h4 fw-bold text-center border-bottom pb-3">'+res.hotelMap.hotel.name+'</span>';
                hotelModal +='<span>주소 : '+res.hotelMap.hotel.address+" "+res.hotelMap.hotel.addressDetail+'</span>';
                hotelModal +='</div>';
                hotelModal +='<div class="col-2 p-3">';
                hotelModal +='<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#map">지도보기</button>';
//                 hotelModal +='<div class="modal fade" id="map"  tabindex="-1" aria-labelledby="mapLabel" aria-hidden="true" style="width:500px;height:400px;">
//             	hotelModal +='<div class="modal-dialog">';
//                	hotelModal +='<div class="modal-content">';
//                	hotelModal +='<div class="modal-header">';
//                 hotelModal +='<h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>';
//                 hotelModal +='<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>';
//                 hotelModal +='</div>';
//                 hotelModal +='<div class="modal-body">';
//                 hotelModal +='<span></span>';
//                 hotelModal +='</div>';
//                 hotelModal +='<div class="modal-footer">';
//                 hotelModal +='<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>';
//                 hotelModal +='<button type="button" class="btn btn-primary">Save changes</button>';
//                 hotelModal +='</div>';
//                 hotelModal +='</div>';
//                 hotelModal +='</div>';
//                 hotelModal +='</div>';
                hotelModal +='</div>';
                hotelModal +='</div>';
                hotelModal +='<div class="px-3">';
                hotelModal +='<p>'+res.hotelMap.hotel.detailText+'</p>';
                hotelModal +='아래에서 원하는 객실을 선택하세요';
                hotelModal +='</div>';
                hotelModal +='<div class="p-3">';
                hotelModal +='<div class="d-flex flex-column border p-3">';
              	hotelModal +='<div><h5 class="ms-2 mb-2"></h5></div>';
          		hotelModal +='<table class="mb-3 text-center">';
       			hotelModal +='<thead class="border-bottom">';

				hotelModal +='</thead>';
				hotelModal +='<tbody id="hotelView">';
				hotelModal +='</tbody>';
				hotelModal +='</table>';
				hotelModal +='<div class="p-3">';
				hotelModal +='<table class="col-12 text-center">';
				hotelModal +='<thead class="border-bottom">';
				hotelModal +='	<tr>';
				hotelModal +='<th>객실 타입</th>';
				hotelModal +='									<th>날짜</th>';
				hotelModal +='										<th>비용(원)</th>';
				hotelModal +='	<th>예약가능</th>';
				hotelModal +='</tr>';
				hotelModal +='</thead>';
				hotelModal +='<tbody;>';
				$.each(res.hotelList.hotelRoom,function(index, value) {
				hotelModal +='<tr>';
				hotelModal +='<td>'+value.roomName+'</td>';
				hotelModal +='<td></td>';
				hotelModal +='<td>'+value.price+'</td>';
				hotelModal +='<td>O</td>';
				hotelModal +='			</tr>';
				})
				hotelModal +='</tbody>';
				hotelModal +='	</table>';
				hotelModal +='<div class="detail">';
				hotelModal +='<div class="d-flex align-items-center justify-content-around">';
				hotelModal +='<div class="col-2">';
				hotelModal +=	'<span >옵션선택</span>';
				hotelModal +=	'</div>';
				hotelModal +=	'<div class="col-8 px-5 py-2">';
				hotelModal +=	'<input type="text" value="" class="form-control" readonly>';
				hotelModal +=	'</div>';
				hotelModal +=	'<div class="col-2 p-2">';
				hotelModal +=	'<select class="form-select" id="sleep">';
				hotelModal +=									'<option value="1" selected>1객실</option>';
				hotelModal +=									'<option value="2">2객실</option>';
				hotelModal +=									'<option value="3">3객실</option>';
				hotelModal +=	'</select>';
				hotelModal +=	'</div>';
				hotelModal +='</div>';
				hotelModal +=	'</div>';
				hotelModal +=	'</div>';
				hotelModal +='<div class="d-flex justify-content-end align-items-center">';
				hotelModal +='<div style="font-size: 9px;">선택된 총 숙소요금</div>';
				hotelModal +='<div class="mx-2"><span id="hotelTotal"></span><span>원</span></div>';
				hotelModal +='<button type="button" class="btn btn-sm btn-primary" id="hotelBtn">선택완료</button>';
				hotelModal +='</div>'; 
				hotelModal +='</div 	>';
                $("#hotelModal").append(hotelModal);
              },
              error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                  alert("통신 실패.")
              }
          })
  });
	  

	  
	  
	  
	  
	  

	  
	  	



</script>
	

</body>