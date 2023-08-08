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
	                  	<label for="seq" class=" col-form-label" >seq</label>
                    	<input type="text" class="form-control bg-dark-subtle" readonly name="seq" id="seq" placeholder="자동생성" value="<c:out value="${item.seq }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="name" class=" col-form-label">name</label>
                    	<input type="text" class="form-control" name="name" id="name" value="<c:out value="${item.name }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="hotelType" class=" col-form-label">hotelType</label>
                    	<input type="text" class="form-control" name="hotelType" id="hotelType" value="<c:out value="${item.hotelType }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
						<label onclick="address1()"><i class="icon-search"></i> Zip code</label>
						<input class="form-control" name="zipCode" id="registerZipCode" type="text" placeholder="우편번호" readonly value="<c:out value="${item.zipCode }"></c:out>">
					</div>
					<div class=" col-5 mb-3">
						<label>Address</label>
						<input class="form-control" name="address" id="registerAddress" type="text" placeholder="주소" readonly value="<c:out value="${item.address }"></c:out>">
					</div>
					<div class=" col-5 mb-3">
						<label>Address detail</label>
						<input class="form-control" name="addressDetail" id="registerAddressDetail" type="text" placeholder="상세주소" value="<c:out value="${item.addressDetail }"></c:out>">
					</div>
					<div class=" col-5 mb-3">
						<label>sido</label>
						<input class="form-control" name="sido" id="sido" type="text" placeholder="도시" readonly value="<c:out value="${item.sido }"></c:out>">
					</div>
	                <div class=" col-5 mb-3">
	                  	<label for="tel" class=" col-form-label">tel</label>
                    	<input type="text" class="form-control" name="tel" id="tel" value="<c:out value="${item.tel }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="checkInTime" class=" col-form-label">checkInTime</label>
                    	<input type="text" class="form-control" name="checkInTime" id="checkInTime" value="<c:out value="${item.checkInTime }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="checkOutTime" class=" col-form-label">checkOutTime</label>
                    	<input type="text" class="form-control" name="checkOutTime" id="checkOutTime" value="<c:out value="${item.checkOutTime }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="detailText" class=" col-form-label">detailText</label>
                    	<textarea id="detailText" name="detailText" style="width: 100%;"><c:out value="${item.detailText }"></c:out></textarea>
	                </div>
	                <!--  -->
	                <div class=" col-5 mb-3">
	                  	<label for="defaultNy" class=" col-form-label">defaultNy</label>
                    	<input type="text" class="form-control" name="defaultNy" id="defaultNy" value="<c:out value="${item.defaultNy }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="info" class=" col-form-label">info</label>
                    	<input type="text" class="form-control" name="info" id="info" value="<c:out value="${item.info }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="delNy" class=" col-form-label">delNy</label>
                    	<input type="text" class="form-control" name="delNy" id="delNy" value="<c:out value="${item.delNy }"></c:out>">
	                </div>
	                <!--  -->
	                <div class=" col-5 mb-3">
	                  	<label for="roomType" class=" col-form-label">roomType</label>
                    	<input type="text" class="form-control" name="roomType" id="roomType" value="<c:out value="${item.roomType }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="roomName" class=" col-form-label">roomName</label>
                    	<input type="text" class="form-control" name="roomName" id="roomName" value="<c:out value="${item.roomName }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="price" class=" col-form-label">price</label>
                    	<input type="text" class="form-control" name="price" id="price" value="<c:out value="${item.price }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="roomDefaultNy" class=" col-form-label">roomDefaultNy</label>
                    	<input type="text" class="form-control" name="roomDefaultNy" id="roomDefaultNy" value="<c:out value="${item.roomDefaultNy }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="roomDelNy" class=" col-form-label">roomDelNy</label>
                    	<input type="text" class="form-control" name="roomDelNy" id="roomDelNy" value="<c:out value="${item.roomDelNy }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="roomNum" class=" col-form-label">roomNum</label>
                    	<input type="text" class="form-control" name="roomNum" id="roomNum" value="<c:out value="${item.roomNum }"></c:out>">
	                </div>
	                <!--  -->
	                <div class=" col-5 mb-3">
	                  	<label for="date" class=" col-form-label">date</label>
                    	<input type="text" class="form-control" name="date" id="date" value="<c:out value="${item.date }"></c:out>">
	                </div>
				</div>
				<c:choose>
				<c:when test="${empty param.seq }">
					<div class="d-flex justify-content-between my-5 text-center">
						<div class="col-2">
							<button id="btnList" type="button" class="btn btn-secondary" onclick = "location.href = '/codeXdmList'"><i class="bi bi-list"></i></button>
						</div>
						<div class="col-2">
							<button id="btnInsert" type="button" class="btn btn-success">save</button>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="d-flex justify-content-between my-5 text-center">
						<div class="col-2">
							<button id="btnList" type="button" class="btn btn-secondary" onclick = "location.href = '/codeXdmList'"><i class="bi bi-list"></i></button>
							<button id="btnDelete" type="button" class="btn btn-danger">delete</button>
							<button id="btnDelNy" type="button" class="btn btn-danger">uele</button>
						</div>
						<div class="col-2">
							<button id="btnUpdate" type="button" class="btn btn-success">update</button>
						</div>
					</div>
				</c:otherwise>
				</c:choose>
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
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
  <script type="text/javascript">

	
	$("#btnInsert").on("click", function(){
		$("form[name=form]").attr("action", "/hotelXdmInsert").submit();
	})
	$("#btnUpdate").on("click", function(){
		$("form[name=form]").attr("action", "/hotelXdmUpdate").submit();
	})
	$("#btnDelete").on("click", function(){
		$("form[name=form]").attr("action", "/hotelXdmDelete").submit();
	})
	$("#btnDelNy").on("click", function(){
// 		$("form[name=form]").attr("action", "/codeXdmDelNy").submit();
	})
	//  	주소찾기
 	function address1() {
        new daum.Postcode({
            oncomplete: function(data) {
            	var addr = ""; // 주소 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("registerZipCode").value = data.zonecode;
                document.getElementById("registerAddress").value = addr;
                document.getElementById("sido").value = data.sido;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("registerAddressDetail").focus();
            }
        }).open();
    }
 		</script>
	</body>
</html>