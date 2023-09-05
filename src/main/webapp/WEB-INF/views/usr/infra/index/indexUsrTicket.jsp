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
				<h1 class="backFonts">입장권</h1>
				<p class="backFonts">즐기고 싶은 이벤트 / 축제를 직접 골라보세요.</p>
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
					<div class="box_style_cat">
						<ul id="cat_nav">
							<li><a href="/indexUsrTicket?spotType=1" data-hotel-type="1"><i class="icon_set_1_icon-51"></i>입장권/티켓 <span>(...)</span></a></li>
							<li><a href="/indexUsrTicket?spotlType=2" data-hotel-type="2"><i class="icon_set_1_icon-3"></i>미식/맛집 <span>(...)</span></a></li>
							<li><a href="/indexUsrTicket?spotlType=3" data-hotel-type="3"><i class="icon_set_1_icon-4"></i>뷰티/힐링<span>(...)</span></a></li>
							<li><a href="/indexUsrTicket?spotType=4" data-hotel-type="4"><i class="icon_set_1_icon-44"></i>투어<span>(...)</span></a></li>
						</ul>
						<input type="hidden" name="spotType" value="${vo.spotType }"></input>
					</div>

					<div id="filters_col">
						<a data-bs-toggle="collapse" href="#collapseFilters"
							aria-expanded="false" aria-controls="collapseFilters"
							id="filters_col_bt"><i class="icon_set_1_icon-65"></i>Filters</a>
						<div class="collapse show" id="collapseFilters">
							<div class="filter_type">
								<h6>Rating</h6>
								<input type="text" id="starRatingVo" value="" name="starRatingVo">
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
											disabled <input type="checkbox"><span
											class="checkmark"></span>
									</label></li>
								</ul>
							</div>
						</div>
						<!--End collapse -->
					</div>
					<!--End filters col-->
					
				</aside>
				<!--End aside -->

				<div class="col-lg-9">
				<form autocomplete="off" action="indexUsrTicket" method="post" name="formList">
			  <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
			  <input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
					<div id="tools">
						<div class="d-flex justify-content-between">
							<select class="form-select selectCity" aria-label="Default select example" name="sido">
								<option value="">---전체---</option>
							  <c:forEach items="${item}" var="item" varStatus="status">
							  	<option value="<c:out value="${item.cityname }"/>" <c:if test="${item.cityname eq vo.sido }">selected</c:if> ><c:out value="${item.cityname }"/></option>
							  </c:forEach>
						 	</select>
							<div class="col-md-6 col-sm-4 d-none d-sm-block text-end">
								<button type="button" class="btn btn-light" id="hotelListBtn"><i class="bi bi-search"></i></button> 
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
										    <c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
										        <c:if test="${list.seq eq listUploaded.pseq && listUploaded.type eq 1}">
											            <img src="${listUploaded.path}${listUploaded.uuidName}">
									             </c:if>
										    </c:forEach>
										</a>
										<div class="short_info hotel">
											<span class="price"><c:out value="${list.adultPrice}"></c:out></span>
										</div>
								</div>
								<div class="hotel_title">
									<h3><strong><a  style="color: black;max-width: 330px; display:block;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;" href="indexUsrTicketDetailInfo?seq=<c:out value="${list.seq}"/>"><c:out value="${list.name}"></c:out></a></strong></h3>
									<div>
											<span id="rating<c:out value="${list.seq }"/>" class="rating"></span><small><c:out value="${list.starRating}"/></small>
									</div>
								</div>
							</div>
						  </c:forEach>
						</div>
					</form>
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


document.addEventListener("DOMContentLoaded", function() {
    const priceElements = document.querySelectorAll(".price");
    
    function addCommasToPrice(price) {
        return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }

    priceElements.forEach(function(priceElement) {
        const productPrice = parseFloat(priceElement.textContent.replace("원", "").replace(/,/g, ""));
        priceElement.textContent = addCommasToPrice(productPrice) + "원";
    });
});

/* 별점 표시 부분 시작 */
		<c:forEach items="${list}" var="list" varStatus="statusUploaded">
			var ratingStar<c:out value="${list.seq }"/> = $("#rating<c:out value="${list.seq }"/>");
			var rating<c:out value="${list.seq }"/> = Math.floor(<c:out value="${list.starRating}"/>);
			
			for(var i=0; i<rating<c:out value="${list.seq }"/> ; i++){
				ratingStar<c:out value="${list.seq }"/>.append('<i class="icon-smile voted"></i>')
			}
			for(var j=0; j<5-i; j++){
				ratingStar<c:out value="${list.seq }"/>.append('<i class="icon-smile"></i>');

			}
		</c:forEach>
/* 별점 표시 부분 끝 */	
</script>

  </body>
</html>