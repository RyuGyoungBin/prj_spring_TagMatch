<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<body>
	<form name="form" method="post">
	<button type="button" id="btn">pay</button>
	</form>
	<script src="/resources/assets/js/jquery-3.6.4.min.js"></script>
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