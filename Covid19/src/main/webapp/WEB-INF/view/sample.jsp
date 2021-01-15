<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 사용을 위한 taglib -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코로나19 맵</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<div id="map" style="width:750px;height:350px;"></div>

	<script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=c70dca9df2a4f7d93b1831365c623989"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(35.67611153222928, 126.68207073717525), // 지도의 중심좌표
		        level: 14, // 지도의 확대 레벨
		        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
		    }; 

		// 지도를 생성한다 
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// 지도에 마커를 생성하고 표시한다
		var marker = new kakao.maps.Marker({
		    position: new kakao.maps.LatLng(35.67611153222928, 126.68207073717525), // 마커의 좌표
		    map: map // 마커를 표시할 지도 객체
		});
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 지도에 마커를 생성하고 표시한다
		var marker = new kakao.maps.Marker({
		    position: new kakao.maps.LatLng(37.56682, 126.97865), // 마커의 좌표
		    map: map // 마커를 표시할 지도 객체
		});

		// 마커 위에 표시할 인포윈도우를 생성한다
		var infowindow = new kakao.maps.InfoWindow({
		    content : '<div style="padding:5px;">인포윈도우 :D</div>' // 인포윈도우에 표시할 내용
		});

		// 인포윈도우를 지도에 표시한다
		infowindow.open(map, marker);
		
		// 지도에 마커를 생성하고 표시한다
		var marker2 = new kakao.maps.Marker({
		    position: new kakao.maps.LatLng(35.56682, 125.97865), // 마커의 좌표
		    map: map // 마커를 표시할 지도 객체
		});

		// 마커 위에 표시할 인포윈도우를 생성한다
		var infowindow2 = new kakao.maps.InfoWindow({
		    content : '<div style="padding:5px;">인포윈도우2 :D</div>' // 인포윈도우에 표시할 내용
		});
		
		// 인포윈도우를 지도에 표시한다
		infowindow2.open(map, marker2);

	</script>
</body>
</html>