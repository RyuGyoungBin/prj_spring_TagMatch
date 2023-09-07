<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>


<!-- Common scripts -->
    <script src="/resources/assets/js/jquery-3.6.4.min.js"></script>
    <script src="/resources/assets/js/common_scripts_min.js"></script>
    <script src="/resources/assets/js/functions.js"></script>
    <script src="/resources/assets/js/tabs.js"></script>
	
	<!-- NOTIFY BUBBLES  -->
<!-- 	<script src="/resources/assets/js/notify_func.js"></script> -->

<!-- 	<!-- Map --> -->
<!-- 	<script src="http://maps.googleapis.com/maps/api/js"></script> -->
<!-- 	<script src="/resources/assets/js/map.js"></script> -->
<!-- 	<script src="/resources/assets/js/infobox.js"></script> -->
	
	
	
	<!-- modal -->
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
	<script type="text/javascript">
	$(".logOutBtn").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/logoutProc"
			/* ,data : $("#formLogin").serialize() */
			,data : {}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/index";
				} else {
					alert("그런 회원 없습니다.");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	})
	
	</script>
