<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<%@include file="../include/head.jsp"%>
<%@include file="../include/header.jsp"%>

    <section id="hero" class="kenburns_slider">
        <div class="opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.6)" >
            <div class="intro_title" >
                <img src="resources/assets/img/view123.jpg" style = 'background-size:contain; width: 100%; height: 600px;' alt="">
            </div>
        </div>
        <!-- End opacity-mask-->
    </section>

    <!-- End section -->

	<main>
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
	<div class="container margin_60">
    
        <div class="main_title">
            <h2>신나는 <span>기차</span> 여행~</h2>
            <p></p>
        </div>
        
        <div class="row">
        
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>d
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            <div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.1s">
                <div class="tour_container">
					<div class="ribbon_3 popular"><span>Popular</span></div>
                    <div class="img_container">
                        <a href="single_tour.html">
                        <img src="resources/assets/img/view123.jpg" width="800" height="533" class="img-fluid" alt="Image">
                        <div class="short_info">
                            <i class="icon_set_1_icon-44"></i>Historic Buildings<span class="price"><sup>$</sup>39</span>
                        </div>
                        </a>
                    </div>
                </div><!-- End box tour -->
            </div><!-- End col -->
            
            
        </div><!-- End row -->
    </div><!-- End container -->
    </main>
		<%@include file="../include/footer.jsp"%>

<%@include file="../include/script.jsp"%>
	<script src="/resources/assets/js/vegas.min.js"></script>
    <script>
        
    </script>

  </body>
</html>