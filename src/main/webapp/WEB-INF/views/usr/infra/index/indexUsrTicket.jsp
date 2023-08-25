<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!DOCTYPE html>
<html lang="ko">
<%@include file="../include/head.jsp"%>
<%@include file="../include/header.jsp"%>

   <section class="parallax-window" data-parallax="scroll" data-image-src="/resources/assets/img/view123.jpg" data-natural-width="1400" data-natural-height="470">
		<div class="parallax-content-1 opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.6)">
			<div class="animated fadeInDown" >
				<h1>입장권</h1>
				<p>즐기고 싶은 이벤트 / 축제를 직접 골라보세요.</p>
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
<div class=" text-bg-dark p-3">
    <span class="d-flex justify-content-center me-2">카테고리</span>
	   <div class="d-flex justify-content-center me-2 text-bg-dark p-3">
		   <div class="form-check form-check-inline">
		       <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
		       <label class="form-check-label" for="inlineCheckbox1">전체</label>
		     </div>
		     <div class="form-check form-check-inline">
		       <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
		       <label class="form-check-label" for="inlineCheckbox2">레저/액티비티</label>
		     </div>
		     <div class="form-check form-check-inline">
		       <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
		       <label class="form-check-label" for="inlineCheckbox2">입장권/티켓</label>
		     </div>
		     <div class="form-check form-check-inline">
		       <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
		       <label class="form-check-label" for="inlineCheckbox2">투어</label>
		     </div>
		     <div class="form-check form-check-inline">
		       <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
		       <label class="form-check-label" for="inlineCheckbox2">클래스</label>
		     </div>
		     <div class="form-check form-check-inline">
		       <input class="form-check-input " type="checkbox" id="inlineCheckbox2" value="option2">
		       <label class="form-check-label" for="inlineCheckbox2">미식/맛집</label>
		     </div>
		     <div class="form-check form-check-inline">
		       <input class="form-check-input " type="checkbox" id="inlineCheckbox2" value="option2">
		       <label class="form-check-label" for="inlineCheckbox2">뷰티/힐링</label>
		     </div>
		     <div class="d-grid gap-2 d-md-block">
				  <button class="btn btn-dark" type="button"><i class="bi bi-search">조회</i></button>
			</div>
    </div>
    <div class="d-flex justify-content-center me-2 text-bg-dark p-3">
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
            <label class="form-check-label" for="inlineCheckbox1">공연/전시</label>
          </div>
          <div class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
            <label class="form-check-label" for="inlineCheckbox2">웨딩/스냅</label>
          </div>
          <div class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
            <label class="form-check-label" for="inlineCheckbox2">여행/교통편의</label>
          </div>
          <div class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
            <label class="form-check-label" for="inlineCheckbox2">숙박권</label>
          </div>
          <div class="form-floating mb-3">
            <input type="text" class="form-control text-bg-secondary p-2" id="floatingInput" >
            <label for="floatingInput">출발</label>
        </div>
        <div class="dropdown ms-3">
		  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
		    전체지역
		  </button><!-- 정체를 알 수 없음 -->
			  <ul class="dropdown-menu">
				    <li><a class="dropdown-item" href="#">==전체==</a></li>
				    <li><a class="dropdown-item" href="#">서울특별시</a></li>
				    <li><a class="dropdown-item" href="#">부산광역시</a></li>
				    <li><a class="dropdown-item" href="#">인천광역시</a></li>
				    <li><a class="dropdown-item" href="#">대구 광역시</a></li>
				    <li><a class="dropdown-item" href="#">강원도</a></li>
				    <li><a class="dropdown-item" href="#">경기도</a></li>
				    <li><a class="dropdown-item" href="#">경남/울산</a></li>
				    <li><a class="dropdown-item" href="#">경상북도</a></li>
			     	<li><a class="dropdown-item" href="#">전남/광주</a></li>
				    <li><a class="dropdown-item" href="#">전라북도</a></li>
				    <li><a class="dropdown-item" href="#">충남/대전/세종</a></li>
				    <li><a class="dropdown-item" href="#">충천북도</a></li>
			  </ul>
		</div>
	</div>
</div>
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
			  <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
			  <input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
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
					<c:forEach items="${list}" var="list" varStatus="status">
						<div class="col-md-4 wow zoomIn" data-wow-delay="0.1s">
							<div class="hotel_container">
								
								</div>
								<div class="img_container">
<%-- 									<a href="indexUsrTicketDetailInfo?seq=<c:out value="${list.seq}"/>"> --%>
<%-- 										<c:set var="type" value="1"/>		<!-- #-> --> --%>
<%-- 			        					<c:set var="name" value="uploadImg"/>		<!-- #-> --> --%>
<%-- 										<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded"> --%>
<%-- 											<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>"> --%>
<%-- 										</c:forEach> --%>
<!-- 									</a> -->
									
										<a href="indexUsrTicketDetailInfo?seq=${list.seq}">
										    <c:set var="type" value="1"/>
										    <c:set var="name" value="uploadImg"/>
										    <c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
										        <img src="${listUploaded.path}${listUploaded.uuidName}">
										    </c:forEach>
										</a>
										<div class="score"><span>7.5</span>Good</div>
										<div class="short_info hotel">
											<span class="price"><sup>3000</sup>원</span>
										</div>
								</div>
								<div class="hotel_title">
									<h3><strong><a  style="color: black;" href="indexUsrTicketDetailInfo?seq=<c:out value="${list.seq}"/>"><c:out value="${list.name}"></c:out></a></strong></h3>
									<div class="rating">
										<i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star-empty"></i>
									</div>
								</div>
							</div>
						  </c:forEach>
						</div>

				</div>
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
								                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="fa-solid fa-angle-right"></i></a></li>
								</c:if> 
			                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
			            </ul>
			        </div>
			    </div>
			</div>
		</div>
	</div>

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

<script type="text/javascript">
//paging
goList = function(thisPage) {
	$("input:hidden[name=thisPage]").val(thisPage);
	$("form[name=formList]").attr("action", "indexUsrTicket").submit();
}
</script>

  </body>
</html>