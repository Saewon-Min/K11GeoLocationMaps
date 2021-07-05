<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">

#map{
	width:800px; height:600px;
}

</style>
<script type="text/javascript">
function initMap() {
	var uluru= {lat:33.812073,lng:-117.918956};
	var map = new google.maps.Map(document.getElementById('map'),{
		zoom : 17,
		center :uluru
	});
	
	var marker = new google.maps.Marker({
		position : uluru,
		map : map
	});
	
}
window.onload = function () {
	initMap();
}


</script>
</head>
<body>
<div class="container">
	<h2>Google Map 띄워보기</h2>
	<div id="map"></div>
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=${apiKey }">
	
	</script>
</div>
</body>
</html>