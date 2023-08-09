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
                    	<input type="text" class="form-control bg-dark-subtle" readonly name="seq" id="seq" placeholder="자동생성" value="<c:out value="${list.seq }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="name" class=" col-form-label">name</label>
                    	<input type="text" class="form-control" name="name" id="name" value="<c:out value="${list.name }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="delNy" class=" col-form-label">delNy</label>
                    	<input type="text" class="form-control" name="delNy" id="delNy" value="<c:out value="${list.delNy }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                </div>
	                
				</div>
				<c:choose>
				<c:when test="${empty param.seq }">
					<div class="d-flex justify-content-between my-5 text-center">
						<div class="col-2">
							<button id="btnList" type="button" class="btn btn-secondary" onclick = "location.href = '/codeGroupXdmList'"><i class="bi bi-list"></i></button>
						</div>
						<div class="col-2">
							<button id="btnInsert" type="button" class="btn btn-success">save</button>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="d-flex justify-content-between my-5 text-center">
						<div class="col-2">
							<button id="btnList" type="button" class="btn btn-secondary" onclick = "location.href = '/codeGroupXdmList'"><i class="bi bi-list"></i></button>
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
  <!-- Template Main JS File -->
<script src="/resources/assets/js/validation.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
  <script type="text/javascript">

	var objreqName = $("#name");
	var objreqDelNy = $("#delNy");
	
	validation = function (){
		if(checkName(objreqName)==false) return false;
		if(checkDelNy(objreqDelNy)==false) return false;
	}
  
	$("#btnInsert").on("click", function(){
		if(validation()==false) return false;
		$("form[name=form]").attr("action", "/codeGroupXdmInsert").submit();
	})
	$("#btnUpdate").on("click", function(){
		if(validation()==false) return false;
		$("form[name=form]").attr("action", "/codeGroupXdmUpdate").submit();
	})
	$("#btnDelete").on("click", function(){
		$("form[name=form]").attr("action", "/codeGroupXdmDelete").submit();
	})
	$("#btnDelNy").on("click", function(){
		$("form[name=form]").attr("action", "/codeGroupXdmDelNy").submit();
	})
	
 		</script>
	</body>
</html>