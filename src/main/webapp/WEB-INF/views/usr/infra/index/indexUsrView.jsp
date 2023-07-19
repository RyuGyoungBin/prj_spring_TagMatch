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
                                        <h2 class="owl-slide-animated owl-slide-title">Going Inside<br>The Louvre Museum</h2>
                                        <p class="owl-slide-animated owl-slide-subtitle">
                                            Discover hidden wonders on trips curated by Citytours Tours Experts
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
					<div class="box_style_cat">
						<ul id="cat_nav">
							<li><a href="#" id="active"><i class="icon_set_1_icon-51"></i>기차</a>
							</li>
							<li><a href="#" id="active"><i class="icon_set_1_icon-51"></i>숙소</a>
							</li>
							<li><a href="#" id="active"><i class="icon_set_1_icon-51"></i>입장권</a>
							</li>
						</ul>
					</div>

					<div id="filters_col">
						<a data-bs-toggle="collapse" href="#collapseFilters" aria-expanded="false" aria-controls="collapseFilters" id="filters_col_bt"><i class="icon_set_1_icon-65"></i>예약상세</a>
						<div class="collapse show" id="collapseFilters">
							<div class="box_style_cat mt-3">
								<ul id="cat_nav">
									<li style="padding: 15px 10px;"><i class="icon_set_1_icon-51"></i><span>기차 : </span><span>0원</span>
									</li>
									<li style="padding: 15px 10px;"><i class="icon_set_1_icon-51"></i><span>숙소 : </span><span>0원</span>
									</li>
									<li style="padding: 15px 10px;"><i class="icon_set_1_icon-51"></i><span>입장권 : </span><span>0원</span>
									</li>
								</ul>
							</div>
						</div>
						<!--End collapse -->
					</div>
					<div class="box_style_cat">
						<p class="p-3" style="color: #333;">총결제금액</p>
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
				<div class="col-lg-1"></div>
				<div class="col-lg-8 d-flex flex-column">
					<div class="col-12 d-flex justify-content-end">
						<div class="me-3">
							<input type="radio" name="itinerary" id="itineraryOne">
							<label for="itineraryOne">편도</label>
						</div>
						<div>
							<input type="radio" name="itinerary" id="itineraryTwo" checked>
							<label for="itineraryTwo">왕복</label>
						</div>
					</div>
					<div class="d-flex justify-content-center mb-2">
						<div class="d-flex me-3 text-nowrap align-items-center fw-bold">가는편</div>
						<div class="d-flex me-3 text-nowrap align-items-center">
							<label class="me-3">출발역</label>
							<input type="text" class="form-control" value="서울역" readonly>
						</div>
						<div class="d-flex me-3 text-nowrap align-items-center">
							<label class="me-3">도착역</label>
							<input type="text" class="form-control" value="부산역" readonly>
						</div>
						<div class="d-flex me-3 text-nowrap align-items-center">
							<label class="me-3">가는일자</label>
							<div></div>
						</div>
					</div>
					<div class="d-flex justify-content-center mb-2">
						<div class="d-flex me-3 text-nowrap align-items-center fw-bold">오는편</div>
						<div class="d-flex me-3 text-nowrap align-items-center">
							<label class="me-3">출발역</label>
							<input type="text" class="form-control" value="서울역" readonly>
						</div>
						<div class="d-flex me-3 text-nowrap align-items-center">
							<label class="me-3">도착역</label>
							<input type="text" class="form-control" value="부산역" readonly>
						</div>
						<div class="d-flex me-3 text-nowrap align-items-center">
							<label class="me-3">가는일자</label>
							<div></div>
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
			        <div class="border-bottom border-primary py-3 mb-3"></div>
			        <form name="SlForm" method="post">
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
					<div class="col-12 d-flex justify-content-around align-items-center mb-3">
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
				<div class="col-12 d-flex justify-content-around align-items-center">
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
				</form>
				
        </div>
        

	</main>
	<!-- End main --> 
    
    <jsp:include page="../include/footer.jsp"></jsp:include>
	<jsp:include page="../include/script.jsp"></jsp:include>
	<script>
// 		new CBPFWTabs(document.getElementById('tabs'));
		
	</script>
    

</body>

</html>