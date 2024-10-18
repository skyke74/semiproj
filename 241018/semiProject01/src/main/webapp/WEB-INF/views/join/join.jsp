<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인화면</title>

<style>
	h1{
	font-size: 10px;
	}

</style>



<%@include file="../template/head.jspf"%>
</head>
<body>
<%@include file="../template/menu2.jspf"%>
	<h1>예약한 숙소 </h1>
	
	<div class="jumbotron">
	
	</div>
	
	<h1>즐겨찾기 </h1>
	
	<div class="jumbotron">
	
	</div>
	
	<div class="btn-group dropdown">
  <button type="button" class="btn btn-default">내정보</button>
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="caret"></span>
    <span class="sr-only">Toggle Dropdown</span>
  </button>
  <ul class="dropdown-menu">
  	<li><p style="text-align: center;">회원</p></li>

	<li role="separator" class="divider"></li>
   <li><p>생년월일 </p></li>
   <li role="separator" class="divider"></li>
   <li><p>국적 : 대한민국</p></li>
	<li role="separator" class="divider"></li>
	<li><p>성별 </p></li>
	<li role="separator" class="divider"></li>
  </ul>
</div>
</body>
</html>