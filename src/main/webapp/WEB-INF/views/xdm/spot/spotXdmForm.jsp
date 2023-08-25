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
			  <form name="form" method="post" autocomplete="off" enctype="multipart/form-data">
			  	<div class="d-flex flex-wrap justify-content-around">
	                <div class=" col-5 mb-3">
	                  	<label for="seq" class=" col-form-label" >seq</label>
                    	<input type="text" class="form-control bg-dark-subtle" readonly name="seq" id="seq" placeholder="자동생성" value="<c:out value="${item.seq}"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="hotelType" class=" col-form-label">spotType</label>
                    	<input type="text" class="form-control" name="type" id="type" value="<c:out value="${item.type}"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="name" class=" col-form-label">name</label>
                    	<input type="text" class="form-control" name="name" id="name" value="<c:out value="${item.name}"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
						<label onclick="address1()"><i class="icon-search"></i> Zip code</label>
						<input class="form-control" name="zipCode" id="registerZipCode" type="text" placeholder="우편번호" readonly value="<c:out value="${item.zipCode}"></c:out>">
					</div>
					<div class=" col-5 mb-3">
						<label>Address</label>
						<input class="form-control" name="address" id="registerAddress" type="text" placeholder="주소" readonly value="<c:out value="${item.address}"></c:out>">
					</div>
					<div class=" col-5 mb-3">
						<label>Address detail</label>
						<input class="form-control" name="addressDetail" id="registerAddressDetail" type="text" placeholder="상세주소" value="<c:out value="${item.addressDetail}"></c:out>">
					</div>
					<div class=" col-5 mb-3">
						<label>sido</label>
						<input class="form-control" name="sido" id="sido" type="text" placeholder="도시" readonly value="<c:out value="${item.sido}"></c:out>">
					</div>
	                <div class=" col-5 mb-3">
	                  	<label for="tel" class=" col-form-label">tel</label>
                    	<input type="text" class="form-control" name="tel" id="tel" value="<c:out value="${item.tel}"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="checkInTime" class=" col-form-label">openTime</label>
                    	<input type="text" class="form-control" name="openTime" id="openTime" value="<c:out value="${item.openTime}"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="checkOutTime" class=" col-form-label">closedTime</label>
                    	<input type="text" class="form-control" name="closedTime" id="closedTime" value="<c:out value="${item.closedTime}"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="defaultNy" class=" col-form-label">adultPrice</label>
                    	<input type="text" class="form-control" name="adultPrice" id="adultPrice" value="<c:out value="${item.adultPrice}"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="delNy" class=" col-form-label">childPrice</label>
                    	<input type="text" class="form-control" name="childPrice" id="childPrice" value="<c:out value="${item.childPrice}"></c:out>">
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="detailText" class=" col-form-label">detailText</label>
                    	<textarea id="detailText" name="detailText" style="width: 100%;"><c:out value="${item.detailText}"></c:out></textarea>
	                </div>
	                <div class=" col-5 mb-3">
	                  	<label for="delNy" class=" col-form-label">delNy</label>
                    	<input type="text" class="form-control" name="delNy" id="delNy" value="<c:out value="${item.delNy }"></c:out>">
	                </div>
	                <!--  -->
	                <div class=" col-5 mb-3">
	                  	<label for="info" class=" col-form-label">info</label>
                    	<input type="text" class="form-control" name="info" id="info" value="<c:out value="${item.info }"></c:out>">
	                </div>

	                
	                <div class=" col-5 mb-3">
	                  	<label for="closed" class=" col-form-label">closed day</label>
                    	<input type="text" class="form-control" name="closed" id="closed" value="<c:out value="${item.closed }"></c:out>">
	                </div>
	                
	                
	                <!-- 이미지첨부 -->
                    <div class="col-5 mb-3">
			        	<c:set var="type" value="1"/>		<!-- #-> -->
			        	<c:set var="name" value="uploadImg"/>		<!-- #-> -->
			        	<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
			        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
			        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
			        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
			            <label for="uploadImg" class="form-label input-file-button">이미지첨부</label>
			 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
						<div id="<c:out value="${name }"/>Preview" class="addScroll bg-dark-subtle" style="min-height: 200px;">
							<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
								<c:if test="${listUploaded.type eq type }">
									<div id="imgDiv_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" style="display: inline-block; height: 95px;">
										<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" width= "85px" height="85px" style="cursor:pointer;" onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">
										<div style="position: relative; top:-85px; left:5px"><span style="color: red;   cursor:pointer;" onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span></div>
									</div> 
								</c:if>
							</c:forEach>
						</div>
                    </div> 
                    <!-- 이미지첨부 -->
                    <div class="col-5 mb-3">
			        	<c:set var="type" value="2"/>		<!-- #-> -->
			        	<c:set var="name" value="uploadImgSpot"/>		<!-- #-> -->
			        	<input type="hidden" id="<c:out value="${name }"/>Type" name="<c:out value="${name }"/>Type" value="<c:out value="${type }"/>"/>
			        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
			        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
			        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
			            <label for="uploadImgSpot" class="form-label input-file-button">이미지첨부</label>
			 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
						<div id="<c:out value="${name }"/>Preview" class="addScroll bg-dark-subtle" style="min-height: 200px;">
							<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
								<c:if test="${listUploaded.type eq type }">
									<div id="imgDiv_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" style="display: inline-block; height: 95px;">
										<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" width= "85px" height="85px" style="cursor:pointer;" onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">
										<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span></div>
									</div>
								</c:if>
							</c:forEach>
						</div>
                    </div>
                    
                    
				</div>
				<c:choose>
				<c:when test="${empty param.seq }">
					<div class="d-flex justify-content-between my-5 text-center">
						<div class="col-2">
							<button id="btnList" type="button" class="btn btn-secondary" onclick = "location.href = '/spotXdmList'"><i class="bi bi-list"></i></button>
						</div>
						<div class="col-2">
							<button id="btnInsert" type="button" class="btn btn-success">save</button>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div class="d-flex justify-content-between my-5 text-center">
						<div class="col-2">
							<button id="btnList" type="button" class="btn btn-secondary" onclick = "location.href = '/spotXdmList'"><i class="bi bi-list"></i></button>
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
		$("form[name=form]").attr("action", "/spotXdmInsert").submit();
	})
	$("#btnUpdate").on("click", function(){
		$("form[name=form]").attr("action", "/spotXdmUpdate").submit();
	})
	$("#btnDelete").on("click", function(){
		$("form[name=form]").attr("action", "/spotXdmDelete").submit();
	})
	$("#btnDelNy").on("click", function(){
		$("form[name=form]").attr("action", "/spotXdmUelete").submit();
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
//		파일첨부
	upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
		
//		objName 과 seq 는 jsp 내에서 유일 하여야 함.
//		memberProfileImage: 1
//		memberImage: 2
//		memberFile : 3

//		uiType: 1 => 이미지형
//		uiType: 2 => 파일형
//		uiType: 3 => 프로필형

		var files = $("#" + objName +"")[0].files;
		var filePreview = $("#" + objName +"Preview");
		var numbering = [];
		var maxNumber = 0;
		
		if(uiType == 1) {
			var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
			var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
			
			for(var i=0; i<tagIds.length; i++){
				var tagId = tagIds[i].getAttribute("id").split("_");
				numbering.push(tagId[2]);
			}
			
			if(uploadedFilesCount > 0){
				numbering.sort();
				maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
			}
		} else if(uiType == 2){
			var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;
			var tagIds = document.querySelectorAll("#" + objName + "Preview > li");

			for(var i=0; i<tagIds.length; i++){
				var tagId = tagIds[i].getAttribute("id").split("_");
				numbering.push(tagId[2]);
			}
			
			if(uploadedFilesCount > 0){
				numbering.sort();
				maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
			}
		} else {
			// by pass
		}
		
		$("#" + objName + "MaxNumber").val(maxNumber);

		var totalFileSize = 0;
		var filesCount = files.length;
		var filesArray = [];
		
		allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
		allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
		allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
		
		if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
		
		for (var i=0; i<filesCount; i++) {
			if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
			if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }

			totalFileSize += files[i].size;
			
			filesArray.push(files[i]);
		}

		if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
		
		if (uiType == 1) {
			for (var i=0; i<filesArray.length; i++) {
				var file = filesArray[i];

				var picReader = new FileReader();
			    picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
			    picReader.readAsDataURL(file);
			}			
		} else if(uiType == 2) {
			for (var i = 0 ; i < filesCount ; i++) {
				addUploadLi(objName, seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);
			}
		} else if (uiType == 3) {
			var fileReader = new FileReader();
			 fileReader.onload = function () {
				 $("#uploadImgProfilePreview").attr("src", fileReader.result);		/* #-> */
			 }	
			 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
		} else {
			return false;
		}
		return false;
	}
	
	
	addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
		return function(event) {
			var imageFile = event.target;
			var sort = parseInt(maxNumber) + i;

			var divImage = "";
			divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
			divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
			divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
			divImage += '</div> ';
			
			filePreview.append(divImage);
	    };
	}
	
	
	delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {
		
		$("#imgDiv_"+type+"_"+sort).remove();
		
		var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
		var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

		if(objDeleteSeq.val() == "") {
			objDeleteSeq.val(deleteSeq);
		} else {
			objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
		}
		
		if(objDeletePathFile.val() == "") {
			objDeletePathFile.val(pathFile);
		} else {
			objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
		}
	}
	
	
	addUploadLi = function (objName, type, i, name, filePreview, maxNumber){

		var sort = parseInt(maxNumber) + i;
		
		var li ="";
		li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
		li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
		li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';
		li += name;
		li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
		li +='</li>';
		
		filePreview.append(li);
	}
	
	
	delLi = function(objName, type, sort, deleteSeq, pathFile) {
		
		$("#li_"+type+"_"+sort).remove();

		var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
		var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

		if(objDeleteSeq.val() == "") {
			objDeleteSeq.val(deleteSeq);
		} else {
			objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
		}
		
		if(objDeletePathFile.val() == "") {
			objDeletePathFile.val(pathFile);
		} else {
			objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
		}
	}
	
	openViewer = function (type, sort) {
		var str = '<c:set var="tmp" value="'+ type +'"/>';
		$("#modalImgViewer").append(str);
		$("#modalImgViewer").modal("show");
	}
 		</script>
	</body>
</html>