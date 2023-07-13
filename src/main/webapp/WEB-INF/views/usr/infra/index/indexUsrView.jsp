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
                 <div class="owl-slide cover" style="background-image: url(/resources/assets/img/slides/slide_home_3.jpg); height: 20vh;">
                    <div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.5)">
                        <div class="container">
                            <div class="row justify-content-center justify-content-md-start">
                                <div class="col-lg-12 static">
                                    <div class="slide-text text-center white">
                                        <h2 class="owl-slide-animated owl-slide-title">Going Inside<br>The Louvre Museum</h2>
                                        <p class="owl-slide-animated owl-slide-subtitle">
                                            Discover hidden wonders on trips curated by Citytours Tours Experts
                                        </p>
                                        <div class="owl-slide-animated owl-slide-cta"><a class="btn_1" href="all_tours_list.html" role="button">Read more</a></div>
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
        <div class="d-flex justify-content-around p-5" style="height: 80vh;">
        	<div class="col-6 text-center">
        		<img alt="경부선" src="/resources/assets/img/map_ktx01.png" class="position-relative" style="height: 100%;">
        	</div>
        	<div class="col-5 d-flex flex-column position-relative">
        		<div class="position-absolute top-10 start-50 translate-middle">
        			<iframe width="560" height="315" src="https://www.youtube.com/embed/oJNgLwibVO4?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        		</div>
        		<div>
        			
        		</div>
        		
        	</div>
        </div>
        

	</main>
	<!-- End main -->
    
    <jsp:include page="../include/footer.jsp"></jsp:include>
	<jsp:include page="../include/script.jsp"></jsp:include>
	<script>
		new CBPFWTabs(document.getElementById('tabs'));
	</script>
    

</body>

</html>