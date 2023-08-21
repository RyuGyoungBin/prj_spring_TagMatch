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

  <title>Tables / Data - King-Petition</title>
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
          <li class="breadcrumb-item active">Data-Spot</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Datatables</h5>
			  <form autocomplete="off" action="spotXdmList" method="post" name="formList">
			  <input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
			  <input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
					<div class="d-flex">
						<div class="mb-3 col-2 text-start ms-3 me-3">
							<input class="form-control form-control-sm p-2" id="start_date" type="text" placeholder="시작일">
						</div>
						<div class="mb-3 col-2 text-start ms-3 me-3">
							<input class="form-control form-control-sm p-2" id="end_date" type="text" placeholder="종료일" min="">
						</div>
						<div class="mb-3 col-2 text-start ms-3 me-3">
							<input class="form-control form-control-sm p-2" id="" type="text" placeholder="">
						</div>
					</div>
					<div class="d-flex mb-3 align-items-center">
						<div class="col-2 text-start ms-3 me-3">
								<input class="form-control form-control-sm p-2" name="name" id="name" type="text" placeholder="name" value="<c:out value="${vo.name }"/>">
						</div>
						<div class="col-2 text-start ms-3 me-3">
								<select class="form-control form-control-sm p-2" name="delNy" id="delNy">
									<option value="">---delNy---</option>
									<option value="0" <c:if test="${vo.delNy eq '0'}">selected</c:if>>Y</option>
									<option value="1" <c:if test="${vo.delNy eq '1'}">selected</c:if>>N</option>
								</select>
						</div>
						<div class="col-2 text-start ms-3 me-3">
							<button type="submit" class="btn btn-warning btn-sm me-2" id="search"><i class="bi bi-search"></i></button>
							<button type="reset" class="btn btn-danger btn-sm"><i class="bi bi-arrow-clockwise"></i></button>
						</div>
					</div>
				</form>
				
				
                  	<div class="overflow-hidden overflow-x-auto">
		              <!-- Table with stripped rows -->
		              <table class="table table-striped text-nowrap">
		                <thead> 
		                  <tr>
		                  	<th scope="col">
								<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="0" aria-label="..." name="tabel_check">
							</th>
		                    <th>seq</th>
		                    <th>type</th>
		                    <th>name</th>
		                    <th>zipCode</th>
		                    <th>address</th>
		                    <th>addressDetail</th>
		                    <th>sido</th>
		                    <th>tel</th>
		                    <th>openTime</th>
		                    <th>closedTime</th>
		                    <th>adultPrice</th>		                    
		                    <th>childPrice</th>
		                    <th>detailText</th>

		                  </tr>
		                </thead>
		                <tbody>
		                <c:choose>
							<c:when test="${fn:length(list) eq 0}">
								<tr>
									<td class="text-center" colspan="9">There is no data!</td>
								</tr>	
							</c:when>
				                  	<c:otherwise>
							<c:forEach items="${list}" var="list" varStatus="status">
		                  		<tr>
				                  	<th scope="col">
										<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="0" aria-label="..." name="tabel_check">
									</th>

				                    <td scope="row"><c:out value="${list.seq}"></c:out></td>
				                    <td scope="row"><c:out value="${list.type}"></c:out></td>
				                   <td><a href="/spotXdmForm?seq=<c:out value="${list.seq }"></c:out>"><c:out value="${list.name }"></c:out></a></td>
				                   <td><c:out value="${list.zipCode}"></c:out></td>
				                   <td><c:out value="${list.address}"></c:out></td>
				                   <td><c:out value="${list.addressDetail}"></c:out></td>
				                   <td><c:out value="${list.sido}"></c:out></td>
				                   <td><c:out value="${list.tel}"></c:out></td>
				                   <td><c:out value="${list.openTime}"></c:out></td>
				                   <td><c:out value="${list.closedTime}"></c:out></td>
				                   <td><c:out value="${list.adultPrice}"></c:out></td>				                   
				                   <td><c:out value="${list.childPrice}"></c:out></td>
				                   <td><c:out value="${list.detailText}"></c:out></td>		                
			                 	</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
		                </tbody>
		              </table>
		              </div>
					
              <!-- End Table with stripped rows -->
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
				<div class="d-flex px-4 pb-5">
					<div class="col">
						<button type="button" class="btn btn-danger btn-sm" id="delNot">X</button>
						<button class="btn btn-danger btn-sm" type="button" id="del"><i class="bi bi-trash"></i></button>
					</div>
					<div class="col text-end">
						<button type="button" class="btn btn-success btn-sm" id="excel"><i class="bi bi-file-earmark-excel"></i></button>
						<button type="button" class="btn btn-primary btn-sm" id="plus" onclick = "location.href = '/spotXdmForm'">+</button>
					</div>
				</div>
          </div>
		  
        </div>
      </div>
    </section>
    <div class="modal fade" id="myModal">
		<div class="modal-dialog modal-dialog-centered">
	    	<div class="modal-content">
	   			<div class="modal-header">
	      			<h1 class="modal-title fs-5"></h1>
	        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      		</div>
	      		<div class="modal-body">
	      		</div>
	      		<div class="modal-footer">
		        	<button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Close</button>
		        	<button type="button" class="btn btn-secondary" id="modalOk">Ok</button>
	      		</div>
	    	</div>
	 	</div>
	</div>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
	 <%@include file = "../include/includeFooter.jsp"%>
  <!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
<%@include file = "../include/includeJs.jsp"%>
  <!-- Template Main JS File -->

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
  <script type="text/javascript">
//paging
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		$("form[name=formList]").attr("action", "spotXdmList").submit();
	} 
// search
 	$("#start_date").datepicker({
 	});
 	$("#end_date").datepicker({
 		maxDate : "+1m +1w",
 		minDate : "-1y"
 	});
	$("#start_date").on("change", function(){
		console.log($("#start_date").val())
		$("#end_date").datepicker({
			minDate: $("#start_date").val()
		});
	});
	
 		</script>
	</body>
</html>