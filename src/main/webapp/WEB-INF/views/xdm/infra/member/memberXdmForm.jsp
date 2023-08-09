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
  <%@include file = "../../include/includeCss.jsp"%>
  <!-- Template Main CSS File -->

</head>

<body>

  <!-- ======= Header ======= -->
  <%@include file = "../../include/includeHeader.jsp"%>
  <!-- End Header -->

 	<!-- ======= Sidebar ======= -->
	<%@include file = "../../include/includeSidebar.jsp"%>
	<!-- End Sidebar-->


  <main id="main" class="main">
	<c:forEach items="${listCodeGender }" var="list" varStatus="status">
		<c:out value="${list.name }"></c:out>
	</c:forEach>

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
	                  	<label for="id" class=" col-form-label">id</label>
                    	<input type="text" class="form-control" name="id" id="id" value="<c:out value="${item.id }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="password" class=" col-form-label">password</label>
                    	<input type="text" class="form-control" name="password" id="password" value="<c:out value="${item.password }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                	<label for="emailFull" class=" col-form-label">emailFull</label>
                    	<input type="text" class="form-control" name="emailFull" id="emailFull" value="<c:out value="${item.emailFull }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                	<label for="dob" class=" col-form-label">dob</label>
                    	<input type="date" class="form-control" name="dob" id="dob" value="<c:out value="${item.dob }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                	<label for="phone" class=" col-form-label">phone</label>
                    	<input type="text" class="form-control" name="phone" id="phone" value="<c:out value="${item.phone }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
						<label onclick="address1()"><i class="icon-search"></i> Zip code</label>
						<input class="form-control" name="zipCode" id="registerZipCode" type="text" placeholder="우편번호" readonly>
					</div>
					<div class=" col-5 mb-3">
						<label>Address</label>
						<input class="form-control" name="address" id="registerAddress" type="text" placeholder="주소" readonly>
					</div>
					<div class=" col-5 mb-3">
						<label>Address detail</label>
						<input class="form-control" name="addressDetail" id="registerAddressDetail" type="text" placeholder="상세주소">
					</div>
					<div class=" col-5 mb-3">
						<label>sido</label>
						<input class="form-control" name="sido" id="sido" type="text" placeholder="도시" readonly>
					</div>
	                <div class=" col-5 mb-3">
	                	<label for="delNy" class=" col-form-label">delNy</label>
                    	<input type="text" class="form-control" name="delNy" id="delNy" value="<c:out value="${item.delNy }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                	<label for="memberType" class=" col-form-label">memberType</label>
                    	<input type="text" class="form-control" name="memberType" id="memberType" value="<c:out value="${item.memberType }"></c:out>">
	                </div>
	                
				</div>
				<c:choose>
				<c:when test="${empty param.seq }">
					<div class="d-flex justify-content-between my-5 text-center">
						<div class="col-2">
							<button id="btnList" type="button" class="btn btn-secondary" onclick = "location.href = '/memberXdmList'"><i class="bi bi-list"></i></button>
						</div>
						<div class="col-2">
							<button id="btnInsert" type="button" class="btn btn-success">save</button>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="d-flex justify-content-between my-5 text-center">
						<div class="col-2">
							<button id="btnList" type="button" class="btn btn-secondary" onclick = "location.href = '/memberXdmList'"><i class="bi bi-list"></i></button>
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
	 <%@include file = "../../include/includeFooter.jsp"%>
  <!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
<%@include file = "../../include/includeJs.jsp"%>
<script src="/resources/assets/js/validation.js"></script>
  <!-- Template Main JS File -->
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
  <script type="text/javascript">

	
	$("#btnInsert").on("click", function(){
		if(validation()==false) return false;
		$("form[name=form]").attr("action", "/memberAdd").submit();
	})
	$("#btnUpdate").on("click", function(){
		if(validation()==false) return false;
		$("form[name=form]").attr("action", "/memberUpdt").submit();
	})
	$("#btnDelete").on("click", function(){
		$("form[name=form]").attr("action", "/memberDel").submit();
	})
	$("#btnDelNy").on("click", function(){
		$("form[name=form]").attr("action", "/memberUel").submit();
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
	
	
	var objname = $("#name");
// 	var objreqEmailAccount = $("#email");
	var objreqId = $("#id");
	var objPw = $("#password");
	var objcheckEmail = $("#emailFull");
	var objreqDate = $("#dob");
	var objreqPhone = $("#phone");
	var objcheckAddress = $("#registerZipCode");   
	var objreqDelNy = $("#delNy");

	validation = function(){
 		if(checkKor(objname) == false) return false;
 		if(checkId(objreqId) == false) return false;
 		if(checkPw(objPw) == false) return false;
 		if(checkEmail(objcheckEmail) == false) return false;
 		if(checkDob(objreqDate) == false) return false;
//  		if(checkEmailAccount(objreqEmailAccount) == false) return false;
 		if(checkPhone(objreqPhone) == false) return false;
 		if(checkAddress(objcheckAddress) == false) return false;
 		if(checkDelNy(objreqDelNy) == false) return false;
	}	
	
 		</script>
	</body>
</html>