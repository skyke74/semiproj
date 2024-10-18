<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>

<style type="text/css">
img{width: 100px;}
</style>
</head>
<body>
<div class="container">
	<div class="jumbotron">
		<h2>${loc }에 위치한 호텔 검색 결과</h2>
	</div>
		<table class="table table-striped">
		<thead>
			<tr>
				<th>hotel_id</th>
				<th>hotel_name</th>
				<th>loc_name</th>
				<th>amenities</th>
				<th>star_rating</th>
				<th>price_per_night</th>
				<th>room_count</th>
				<th>contact_number</th>
				<th>address</th>
				<th>image_url</th>
				<th>homepage_url</th>
			</tr>
		</thead>
		<tbody>
		<!-- 
		 -->
			<c:forEach items="${list }" var="bean">
				<tr>
					<td>${bean.hotel_id }</td>
					<td>${bean.hotel_name }</td>
					<td>${bean.loc_name }</td>
					<td>${bean.amenities }</td>
					<td>${bean.star_rating }</td>
					<td>${bean.price_per_night }</td>
					<td>${bean.room_count }</td>
					<td>${bean.contact_number }</td>
					<td>${bean.address }</td>
					<td><img src="${bean.image_url }"></td>
					<td><a href="${bean.homepage_url }">바로가기</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

</body>
</html>







