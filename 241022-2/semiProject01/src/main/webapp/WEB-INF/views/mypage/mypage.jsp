<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<style>
  
  .image-text {
    position: absolute;
    top: 10px;
    left: 50%;
    transform: translateX(-50%);
    color: white;
    font-size: 100px;
    font-weight: bold;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
  }

  .prev, .next {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background-color: rgba(0, 0, 0, 0.5);
    color: white;
    border: none;
    padding: 10px;
    cursor: pointer;
  }

  .prev {
    left: 0;
  }

  .next {
    right: 0;
  }

  
  label{
  	font-size: 20px;
  }
  
  p{
  	font-size: 20px;
  }
  
  h1{
  	font-size:30px;
  	margin: 10px 0;
  	margin-left: 25px;
  }
  
   .section {
    margin: 15px 0;
    
  }

  .jumbotron {
    padding: 20px;
  }
  
  .container{
  	width:1000px;
  	 gap: 30px; /* 섹션 사이 간격 추가 */
  }
  
  .col-sm-3 .thumbnail {
    margin-right: 30px; /* 가로 간격 */
    height:220px;
  }

  .row {
    margin-left: -15px; /* 양쪽 균등한 간격 유지 */
  }
  
  .thumbnail img {
  	width: 350px;
  	height: 250px; /* 원하는 높이 값 */
}

	
</style>



<%@include file="../template/head.jspf"%>
</head>
<body>
<%@include file="../template/menu2.jspf"%>
	<h1>예약한 숙소 </h1>
	
	<div class="jumbotron section">
  		<div class="container">
    		<div class="row">
      			<div class="col-sm-3">
        <div class="thumbnail">
          <img src="https://lh3.googleusercontent.com/p/AF1QipPDMbhQhRtZA4m4dRYYEvHj12nBAgbk2_d6lkU=s680-w680-h510" alt="호텔아트리움">
          <div class="caption">
            <p>호텔 아트리움</p>
          </div>
        </div>
      </div>
      </div>
      </div>
      </div>
	
	<h1>즐겨찾기 </h1>
	
	<div class="jumbotron section">
  		<div class="container">
    		<div class="row">
      			<div class="col-sm-3">
        <div class="thumbnail">
          <img src="https://lh3.googleusercontent.com/p/AF1QipPDMbhQhRtZA4m4dRYYEvHj12nBAgbk2_d6lkU=s680-w680-h510" alt="호텔아트리움">
          <div class="caption">
            <p>호텔 아트리움</p>
          </div>
        </div>
      </div>
      </div>
      </div>
      </div>
	
</body>
</html>