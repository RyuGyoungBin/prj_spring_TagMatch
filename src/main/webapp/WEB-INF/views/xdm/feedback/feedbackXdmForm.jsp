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
          <li class="breadcrumb-item active">Data-Feedback</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
		  <form name="form" method="post" autocomplete="off" enctype="multipart/form-data">
            <div class="card-body">
              <h5 class="card-title">리뷰</h5>
			  	<div class="d-flex flex-wrap justify-content-around border-bottom">
	                <div class=" col-5 mb-3">
	                  	<label for="seq" class=" col-form-label" >seq</label>
                    	<input type="text" class="form-control bg-dark-subtle" readonly name="seq" id="seq" placeholder="자동생성" value="<c:out value="${item.seq }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label>type</label>
                    	<input type="text" class="form-control" name="type" id="type"placeholder="타입"  value="<c:out value="${item.type }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label>review</label>
                    	<input type="text" class="form-control" name="review" id="review" placeholder="리뷰" value="<c:out value="${item.review }"></c:out>">
	                </div>
					<div class=" col-5 mb-3">
						<label>reviewTitle</label>
						<input class="form-control" name="reviewTitle" id="reviewTitle" type="text" placeholder="리뷰제목"  value="<c:out value="${item.reviewTitle }"></c:out>">
					</div>
					<div class=" col-5 mb-3">
						<label>starRating detail</label>
						<input class="form-control" name="starRating" id="starRating" type="text" placeholder="평가" value="<c:out value="${item.starRating }"></c:out>">
					</div>
					<div class=" col-5 mb-3">
						<label>member_seq</label>
						<input class="form-control" name="member_seq" id="member_seq" type="text"  value="<c:out value="${item.member_seq}"></c:out>">
					</div>
					<div class=" col-5 mb-3">
	                  	<label>type_seq</label>
                    	<input type="text" class="form-control" name="type_seq" id="type_seq"  value="<c:out value="${item.type_seq }"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label>defaultNy</label>
                    	<input type="text" class="form-control" name="defaultNy" id="defaultNy"  value="<c:out value="${item.defaultNy }"></c:out>">
	                </div>
	                </div>
	            </div>
	            
	            <c:choose>
				<c:when test="${empty param.seq }">
					<div class="d-flex justify-content-between my-5 text-center">
						<div class="col-2">
							<button id="btnList" type="button" class="btn btn-secondary" onclick = "location.href = '/feedbackXdmList'"><i class="bi bi-list"></i></button>
						</div>
						<div class="col-2">
							<button id="btnInsert" type="button" class="btn btn-success">save</button>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="d-flex justify-content-between my-5 text-center">
						<div class="col-2">
							<button id="btnList" type="button" class="btn btn-secondary" onclick = "location.href = '/feedbackXdmList'"><i class="bi bi-list"></i></button>
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
		$("form[name=form]").attr("action", "/feedbackXdmInsert").submit();
	})
	$("#btnUpdate").on("click", function(){
		$("form[name=form]").attr("action", "/feedbackXdmUpdate").submit();
	})
	$("#btnDelete").on("click", function(){
		$("form[name=form]").attr("action", "/feedbackXdmDelete").submit();
	})
	$("#btnDelNy").on("click", function(){
		$("form[name=form]").attr("action", "/feedbackXdmUelete").submit();
	})
// 	//  	주소찾기
//  	function address1() {
//         new daum.Postcode({
//             oncomplete: function(data) {
//             	var addr = ""; // 주소 변수

//                 //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
//                 if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
//                     addr = data.roadAddress;
//                 } else { // 사용자가 지번 주소를 선택했을 경우(J)
//                     addr = data.jibunAddress;
//                 }
//                 // 우편번호와 주소 정보를 해당 필드에 넣는다.
//                 document.getElementById("registerZipCode").value = data.zonecode;
//                 document.getElementById("registerAddress").value = addr;
//                 document.getElementById("sido").value = data.sido;
//                 // 커서를 상세주소 필드로 이동한다.
//                 document.getElementById("registerAddressDetail").focus();
//             },
//             shorthand : false
//         }).open();
//     }
// //		파일첨부
// 	upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
		
// //		objName 과 seq 는 jsp 내에서 유일 하여야 함.
// //		memberProfileImage: 1
// //		memberImage: 2
// //		memberFile : 3

// //		uiType: 1 => 이미지형
// //		uiType: 2 => 파일형
// //		uiType: 3 => 프로필형

// 		var files = $("#" + objName +"")[0].files;
// 		var filePreview = $("#" + objName +"Preview");
// 		var numbering = [];
// 		var maxNumber = 0;
		
// 		if(uiType == 1) {
// 			var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
// 			var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
			
// 			for(var i=0; i<tagIds.length; i++){
// 				var tagId = tagIds[i].getAttribute("id").split("_");
// 				numbering.push(tagId[2]);
// 			}
			
// 			if(uploadedFilesCount > 0){
// 				numbering.sort();
// 				maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
// 			}
// 		} else if(uiType == 2){
// 			var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;
// 			var tagIds = document.querySelectorAll("#" + objName + "Preview > li");

// 			for(var i=0; i<tagIds.length; i++){
// 				var tagId = tagIds[i].getAttribute("id").split("_");
// 				numbering.push(tagId[2]);
// 			}
			
// 			if(uploadedFilesCount > 0){
// 				numbering.sort();
// 				maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
// 			}
// 		} else {
// 			// by pass
// 		}
		
// 		$("#" + objName + "MaxNumber").val(maxNumber);

// 		var totalFileSize = 0;
// 		var filesCount = files.length;
// 		var filesArray = [];
		
// 		allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
// 		allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
// 		allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
		
// 		if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
		
// 		for (var i=0; i<filesCount; i++) {
// 			if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
// 			if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }

// 			totalFileSize += files[i].size;
			
// 			filesArray.push(files[i]);
// 		}

// 		if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
		
// 		if (uiType == 1) {
// 			for (var i=0; i<filesArray.length; i++) {
// 				var file = filesArray[i];

// 				var picReader = new FileReader();
// 			    picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
// 			    picReader.readAsDataURL(file);
// 			}			
// 		} else if(uiType == 2) {
// 			for (var i = 0 ; i < filesCount ; i++) {
// 				addUploadLi(objName, seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);
// 			}
// 		} else if (uiType == 3) {
// 			var fileReader = new FileReader();
// 			 fileReader.onload = function () {
// 				 $("#uploadImgProfilePreview").attr("src", fileReader.result);		/* #-> */
// 			 }	
// 			 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
// 		} else {
// 			return false;
// 		}
// 		return false;
// 	}
	
	
// 	addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
// 		return function(event) {
// 			var imageFile = event.target;
// 			var sort = parseInt(maxNumber) + i;

// 			var divImage = "";
// 			divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
// 			divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
// 			divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
// 			divImage += '</div> ';
			
// 			filePreview.append(divImage);
// 	    };
// 	}
	
	
// 	delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {
		
// 		$("#imgDiv_"+type+"_"+sort).remove();
		
// 		var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
// 		var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

// 		if(objDeleteSeq.val() == "") {
// 			objDeleteSeq.val(deleteSeq);
// 		} else {
// 			objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
// 		}
		
// 		if(objDeletePathFile.val() == "") {
// 			objDeletePathFile.val(pathFile);
// 		} else {
// 			objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
// 		}
// 	}
	
	
// 	addUploadLi = function (objName, type, i, name, filePreview, maxNumber){

// 		var sort = parseInt(maxNumber) + i;
		
// 		var li ="";
// 		li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
// 		li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
// 		li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';
// 		li += name;
// 		li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
// 		li +='</li>';
		
// 		filePreview.append(li);
// 	}
	
	
// 	delLi = function(objName, type, sort, deleteSeq, pathFile) {
		
// 		$("#li_"+type+"_"+sort).remove();

// 		var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
// 		var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

// 		if(objDeleteSeq.val() == "") {
// 			objDeleteSeq.val(deleteSeq);
// 		} else {
// 			objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
// 		}
		
// 		if(objDeletePathFile.val() == "") {
// 			objDeletePathFile.val(pathFile);
// 		} else {
// 			objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
// 		}
// 	}
	
// 	openViewer = function (type, sort) {
// 		var str = '<c:set var="tmp" value="'+ type +'"/>';
// 		$("#modalImgViewer").append(str);
// 		$("#modalImgViewer").modal("show");
// 	}
 		</script>
	</body>
</html>