<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">
<jsp:include page="../include/head.jsp"></jsp:include>
<jsp:include page="../include/header.jsp"></jsp:include>

    <jsp:include page="../include/footer.jsp"></jsp:include>
	<jsp:include page="../include/script.jsp"></jsp:include>
	<script>
// 		new CBPFWTabs(document.getElementById('tabs'));
		
		/* Javascript 샘플 코드 */


var xhr = new XMLHttpRequest();
var url = 'http://apis.data.go.kr/1613000/TrainInfoService/getStrtpntAlocFndTrainInfo'; /*URL*/
var queryParams = '?' + encodeURIComponent('serviceKey') + '='+'5dx59Iz3XSezPb2EagGTegCQHvL4o%2BP3Er41IuBsQ1nAcKAhlD3zq8Sp2Dh1clbSsNFATVFrRahABEc6qxLc5A%3D%3D'; /*Service Key*/
queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /**/
queryParams += '&' + encodeURIComponent('_type') + '=' + encodeURIComponent('xml'); /**/
queryParams += '&' + encodeURIComponent('depPlaceId') + '=' + encodeURIComponent('NAT010000'); /**/
queryParams += '&' + encodeURIComponent('arrPlaceId') + '=' + encodeURIComponent('NAT011668'); /**/
queryParams += '&' + encodeURIComponent('depPlandTime') + '=' + encodeURIComponent('20230403'); /**/
queryParams += '&' + encodeURIComponent('trainGradeCode') + '=' + encodeURIComponent('00'); /**/
xhr.open('GET', url + queryParams);
xhr.onreadystatechange = function () {
    if (this.readyState == 4) {
        alert('Status: '+this.status+'nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+'nBody: '+this.responseText);
    }
};

xhr.send('');
	</script>
	
	http://apis.data.go.kr/1613000/TrainInfoService/getStrtpntAlocFndTrainInfo
	
	?serviceKey=5dx59Iz3XSezPb2EagGTegCQHvL4o%2BP3Er41IuBsQ1nAcKAhlD3zq8Sp2Dh1clbSsNFATVFrRahABEc6qxLc5A%3D%3D&depPlaceId=NAT010000&arrPlaceId=NAT011668&depPlandTime=20211201&trainGradeCode=00&numOfRows=10&pageNo=1&_type=xml
    
	http://apis.data.go.kr/1613000/TrainInfoService/getStrtpntAlocFndTrainInfo?serviceKey=5dx59Iz3XSezPb2EagGTegCQHvL4o%2BP3Er41IuBsQ1nAcKAhlD3zq8Sp2Dh1clbSsNFATVFrRahABEc6qxLc5A%3D%3D&depPlaceId=NAT010000&arrPlaceId=NAT011668&depPlandTime=20211201&&numOfRows=5&pageNo=5&_type=xml
</body>

</html>