<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Tables / Data </title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/resources/assets/img/favicon.png" rel="icon">
  <link href="/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <%@include file = "../include/includeCss.jsp"%>
  <!-- Template Main CSS File -->

</head>

<body>

  <!-- ======= Header ======= -->
  <%@include file = "../include/includeHeader.jsp"%>
  <!-- End Header -->

 	<!-- ======= Sidebar ======= -->
	<%@include file = "../include/includeSidebar.jsp"%>
	<!-- End Sidebar-->


  <main id="main" class="main">
    <div class="pagetitle">
      <h1>Data Tables</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="/concertList">Home</a></li>
          <li class="breadcrumb-item active">Data-CodeGroup</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Datatables</h5>
			  <form name="form" method="post">
			  	<div class="d-flex flex-wrap justify-content-around">
	                <div class=" col-5 mb-3">
	                	<c:forEach items="${list }" var="list" varStatus="status">
	                  	<label for="info_seq<c:out value="${list.seq }"/>" class=" col-form-label"><c:out value="${list.info }"></c:out></label>
                    	<input type="checkbox" class="" name="info_seq" id="info_seq<c:out value="${list.seq }"/>" value="<c:out value="${list.seq }"></c:out>"
	                  	<c:forEach items="${group }" var="group" varStatus="status">
	                  	<c:if test="${list.seq eq group.seq }"> checked</c:if>
                    	</c:forEach>
                    	>
	                	</c:forEach>
	                	<input type="hidden" name="info_seqArray">
	                </div>
	                <div class=" col-5 mb-3">
	                <c:choose>
	                	<c:when test="${not empty param.hotel_seq }">
		                  	<label for="hotel_seq" class=" col-form-label">hotel_seq</label>
	                    	<input type="text" class="form-control" name="hotel_seq" id="hotel_seq" value="<c:out value="${param.hotel_seq }"></c:out>">
	                	</c:when>
	                	<c:when test="${not empty param.spot_seq }">
	                		<label for="spot_seq" class=" col-form-label">spot_seq</label>
	                    	<input type="text" class="form-control" name="spot_seq" id="spot_seq" value="<c:out value="${param.spot_seq }"></c:out>">
	                	</c:when>
	                </c:choose>
	                </div>
	                <div class=" col-5 mb-3">
	                </div>
	                
				</div>
				<c:choose>
				<c:when test="${not empty param.hotel_seq}">
					<div class="d-flex justify-content-between my-5 text-center">
						<div class="col-2">
						</div>
						<div class="col-2">
							<button id="hotelInsert" type="button" class="btn btn-success">hotel info</button>
						</div>
					</div>
				</c:when>
				<c:otherwise>
				
					<div class="d-flex justify-content-between my-5 text-center">
						<div class="col-2">
						</div>
						<div class="col-2">
							<button id="spotInsert" type="button" class="btn btn-success">spot info</button>
						</div>
					</div>
				</c:otherwise>
				</c:choose>
					<div class="d-flex justify-content-between my-5 text-center">
						<div class="col-2">
							<button id="btnList" type="button" class="btn btn-secondary" onclick = "location.href = '/infoXdmList'"><i class="bi bi-list"></i></button>
							<button id="btnDelete" type="button" class="btn btn-danger">delete</button>
							<button id="btnDelNy" type="button" class="btn btn-danger">uele</button>
						</div>
						<c:choose>
				<c:when test="${not empty param.hotel_seq}">
						<div class="col-2">
						</div>
						<div class="col-2">
							<button id="btnHotelUpdate" type="button" class="btn btn-success">update</button>
						</div>
				</c:when>
				<c:otherwise>
						<div class="col-2">
						</div>
						<div class="col-2">
							<button id="btnSpotUpdate" type="button" class="btn btn-success">update</button>
						</div>
				</c:otherwise>
				</c:choose>
					</div>
              </form>
              <!-- End Table with stripped rows -->

            </div>
          </div>
		  
        </div>
      </div>
    </section>
    

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
	 <%@include file = "../include/includeFooter.jsp"%>
  <!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
<%@include file = "../include/includeJs.jsp"%>
  <!-- Template Main JS File -->
<script src="/resources/assets/js/validation.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
  <script type="text/javascript">

// 	var objreqName = $("#name");
// 	var objreqDelNy = $("#delNy");
	
// 	validation = function (){
// 		if(checkName(objreqName)==false) return false;
// 		if(checkDelNy(objreqDelNy)==false) return false;
// 	}
	$(document).on("click",function(){
		var infoSeq = $("input:checkbox[name=info_seq]:checked");
		var infoSeqVal = "";
		for(var k=0; k<infoSeq.length; k++){
			infoSeqVal += infoSeq.eq(k).attr("value");
			if(k<infoSeq.length-1){
				infoSeqVal += ",";
			}
		}
	$("input[name=info_seqArray]").attr("value",infoSeqVal);
	})
  
	$("#hotelInsert").on("click", function(){
// 		if(validation()==false) return false;
		$("form[name=form]").attr("action", "infoHotelInsert").submit();
	})
	$("#spotInsert").on("click", function(){
// 		if(validation()==false) return false;
		$("form[name=form]").attr("action", "infoSpotInsert").submit();
	})
	$("#btnHotelUpdate").on("click", function(){
// 		if(validation()==false) return false;
		$("form[name=form]").attr("action", "infoHotelUpdate").submit();
	})
	$("#btnSpotUpdate").on("click", function(){
// 		if(validation()==false) return false;
		$("form[name=form]").attr("action", "infoSpotUpdate").submit();
	})
	$("#btnDelete").on("click", function(){
// 		$("form[name=form]").attr("action", "infoXdmDelete").submit();
	})
	$("#btnDelNy").on("click", function(){
// 		$("form[name=form]").attr("action", "infoXdmDelNy").submit();
	})
	
 		</script>
	</body>
</html>