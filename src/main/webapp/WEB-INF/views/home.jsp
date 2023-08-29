<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
	          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	            crossorigin="anonymous"></script>
	
	    <title>부트스트랩 템플릿</title>
	    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
	    <style>
	        * {
	            font-family: 'Jua', sans-serif;
	        }
	
	        .wrap {
	            margin: auto;
	            width: 900px;
	        }
	
	        .title {
	            background-color: gainsboro;
	            padding: 20px 30px;
	        }
	
	        .form-group {
	            margin: 10px 0;
	        }
	
	        .posting-box {
	            margin: 10px auto 30px auto;
	            width: 500px;
	            border: 3px solid black;
	            border-radius: 5px;
	            padding: 25px;
	        }
	    </style>
	    <script>
	        $(document).ready(function () {
	            listing();
	        })
	
	        function listing() {
	            $.ajax({
	                type: "GET",
	                url: "/listing",
	                data: {},
	                success: function (response) {
	                    console.log(response["result"])
	                    if (response["result"] == "success") {
	                        let images = response['images']
	                        for (let i = 0; i < images.length; i++) {
	                            let title = images[i]['title']
	                            let comment = images[i]['comment']
	                            let file = images[i]['file']
	                            let date = file.substr(5, 13)
	                            console.log(file)
	                            let temp_html =
	                                `<div class="col">
	                                    <div class="card h-100">
	                                        <img src="../static/${file}" class="card-img-top" style="max-height: 300px">
	                                        <div class="card-body">
	                                            <h5 class="card-title">${title}</h5>
	                                            <p class="card-text">${comment}</p>
	                                    </div>
	                                        <div class="card-footer">
	                                            <small class="text-muted">${date}</small>
	                                        </div>
	                                    </div>
	                                </div>`
	
	                            $('#cards-box').append(temp_html)
	                        }
	                    }
	                }
	            });
	        }
	
	        // 서버에 이미지 정보 올리기
	        function posting() {
	            let title = $('#img-title').val()
	            let comment = $("#img-comment").val()
	            let file = $('#img-file')[0].files[0]
	            let form_data = new FormData()
	
	            form_data.append("file_give", file)
	            form_data.append("title_give", title)
	            form_data.append("comment_give", comment)
	
	            $.ajax({
	                type: "POST",
	                url: "/posting",
	                // form data 형식으로 파일 데이터 보내기
	                data: form_data,
	                cache: false,
	                contentType: false,
	                processData: false,
	                success: function (response) {
	                    alert(response["msg"])
	                    window.location.reload()
	                }
	            });
	        }
	    </script>
	</head>
	<body>
		<form name="form" method="post">
		<button type="button" id="btn">pay</button>
		</form>
		
		
	
		<div class="wrap">
		    <div class="title">
		        <h1 class="display-4">파일 업로드</h1>
		        <hr class="my-4">
		        <div class="posting-box" id="post-box">
		            <!--이미지 업로더-->
		            <div class="custom-file">
		                <input type="file" class="custom-file-input" id="img-file">
		                <label class="custom-file-label" for="img-file">Choose file</label>
		            </div>
		            <!--이미지 제목 및 코멘트-->
		            <div class="form-group">
		                <label>사진 제목</label>
		                <input type="email" class="form-control" aria-describedby="emailHelp"
		                       id="img-title" placeholder="">
		            </div>
		            <div class="form-group">
		                <label>간단 코멘트</label>
		                <input type="email" class="form-control" id="img-comment" placeholder="">
		            </div>
		            <button type="submit"  class="btn btn-primary">업로드하기</button>
		        </div>
		    </div>
		    <div class="row row-cols-1 row-cols-md-3 g-4" id="cards-box">
		
		    </div>
		
		</div>
		
		
		
		
		
		<!-- pay button  -->
<!-- 		<script src="/resources/assets/js/jquery-3.6.4.min.js"></script> -->
		<script type="text/javascript">
			$("#btn").on("click", function(){
				$.ajax({
	        		type:"post",
	    			url:"/kakao/pay",
	    			dataType:"json" ,
	    			success:function(data){
	//     				alert(data.next_redirect_pc_url);
	    				var pay = data.next_redirect_pc_url;
	    				var tid = data.tid
	    				console.log(tid);
	    				window.open(pay);
	    			},
	    			error:function(error){
	    				alert("asd");
	    			}
				})
			})
		</script>
	</body>
</html>