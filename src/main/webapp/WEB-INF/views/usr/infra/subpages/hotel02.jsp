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
			src="/resources/assets/img/shillaHotel.jpg;"
			alt="" style="width: 100%; height: 470px;">
		<div class="parallax-content-1 opacity-mask"
			data-opacity-mask="rgba(0, 0, 0, 0.6)">

			<div class="animated fadeInDown">

				<h1>호텔</h1>
				<p></p>
			</div>
		</div>
	</section>
	<!-- End section -->
	
	<main>
	<form method="post" name="formList" >

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
							<li><a href="/hotel?hotelType=1" id="active"><i
									class="icon_set_1_icon-51"></i>호텔 <span>(...)</span></a></li>
							<li><a href="/hotel?hotelType=2"><i class="icon_set_1_icon-3"></i>펜션 <span>(...)</span></a>
							</li>
							<li><a href="/hotel?hotelType=3"><i class="icon_set_1_icon-4"></i>콘도<span>(...)</span></a>
							</li>
							<li><a href="/hotel?hotelType=4"><i class="icon_set_1_icon-44"></i>레지던스<span>(...)</span></a>
							</li>
							<li><a href="/hotel?hotelType=5"><i class="icon_set_1_icon-37"></i>캠핑카<span>(...)</span></a>
							</li>
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
							<select class="form-select selectCity" aria-label="Default select example" name="sido">
								<option value="">---전체---</option>
							  <c:forEach items="${item}" var="item" varStatus="status">
							  	<option value="<c:out value="${item.cityname }"/>"><c:out value="${item.cityname }"/></option>
							  </c:forEach>
						 </select>
						<div class="col-md-6 col-sm-4 d-none d-sm-block text-end">
							<a href="all_tours_grid.html" class="bt_filters"><i
								class="icon-th"></i></a> <a href="#" class="bt_filters"><i
								class=" icon-list"></i></a>
						</div>

						</div>
					</div>
					<!--/tools -->
					 <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
					  <input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
					<c:forEach items="${list }" var="list" varStatus="status">
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
									<a href="/roomDetailInfo?seq=<c:out value="${list.seq }"/>"><img
										src="<c:out value="${list.path }"/><c:out value="${list.uuidName }"/>"
										alt="Image">
										<div class="short_info">
											<i class="icon_set_1_icon-51"></i>
										</div> </a>
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
										<strong><c:out value="${list.name }"/></strong>
									</h3>
									<p><c:out value="${list.detailText }"/></p>
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
													<c:out value="${list.address }"/>, <c:out value="${list.addressDetail }"/> <br>
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
								<div class="price_list">
									<div>
										₩<c:out value="${list.price }"/>~<span class="normal_price_list"></span><small>*1인 <c:out value="${list.roomName }"/>
											기준</small>
										<p>
											<a href="/roomDetailInfo?seq=<c:out value="${list.seq }"/>" class="btn_1">Details</a>
										</p>
									</div>

								</div>
							</div>
						</div>
					</div>
					<!--End strip -->
					</c:forEach>
					<div class="container-fluid px-0 mt-2">
						    <div class="row">
						        <div class="col">
						            <!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
						            <ul class="pagination justify-content-center mb-0">
						                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
						<c:if test="${vo.startPage gt vo.pageNumToShow}">
						                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="fa-solid fa-angle-left"></i></a></li>
						</c:if>
						<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
							<c:choose>
								<c:when test="${i.index eq vo.thisPage}">
						                <li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
								</c:when>
								<c:otherwise>             
						                <li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>                
						<c:if test="${vo.endPage ne vo.totalPages}">                
						                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="fa-solid fa-angle-right"></i></a></li></c:if>
						                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
						            </ul>
						        </div>
						    </div>
						</div>
					<!-- end pagination-->

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
		//paging
		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			$("form[name=formList]").attr("action", "/hotel").submit();
		}
	</script>
	


</body>

</html>