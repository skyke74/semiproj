<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<%@include file="template/head.jspf" %>
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
    padding: 30px;
  }
  
  .container{
  	width:2000px;
  	 gap: 30px; /* 섹션 사이 간격 추가 */
  }
  
  .col-sm-3 .thumbnail {
    margin-right: 30px; /* 가로 간격 */
    height:300px;
  }

  .row {
    margin-left: -15px; /* 양쪽 균등한 간격 유지 */
  }
  
  .thumbnail img {
  	width: 320px;
  	height: 250px; /* 원하는 높이 값 */
}
</style>
</head>
<body>
<%@include file="template/menu.jspf" %>

<p style="text-align: center;">숙소예약</p>

<div class="jumbotron" style="background-color: white;">
    <form action="searchResults.jsp" method="get" style="text-align: center;">
        <label for="location">위치:</label>
        <!-- 드롭다운 메뉴로 변경: 광주, 제주, 서울, 부산 옵션 추가 -->
        <select id="location" name="location" required>          
            <option value="서울">서울</option>
            <option value="부산">부산</option>
             <option value="광주">광주</option>
            <option value="제주">제주</option>
        </select>

        <label for="checkin">체크인:</label>
        <input type="date" id="checkin" name="checkin" required min="2024-01-01", max="2025-12-31">

        <label for="checkout">체크아웃:</label>
        <input type="date" id="checkout" name="checkout" required min="2024-01-01", max="2025-12-31">

        <label for="guests">인원수:</label>
        <input type="number" id="guests" name="guests" min="1" required>

		<a href="searchResults" type="button">검색</a>
		<!-- 
        <button type="submit">검색</button>
		 -->
    </form>
</div>

	<h1>추천 숙소</h1>
	<div class="jumbotron section" style="background-color: transparent;">
  		<div class="container">
    		<div class="row">
      			<div class="col-sm-3">
        <div class="thumbnail">
          <img src="https://images.trvl-media.com/lodging/104000000/103090000/103081200/103081161/3a1b0473.jpg?impolicy=resizecrop&rw=1200&ra=fit" alt="오션뷰">
          <div class="caption">
            <p>오션뷰</p>
          </div>
        </div>
      </div>

      <div class="col-sm-3">
        <div class="thumbnail">
          <img src="https://images.trvl-media.com/lodging/22000000/21520000/21518500/21518483/5e332ca5.jpg?impolicy=resizecrop&rw=1200&ra=fit" alt="수영장">
          <div class="caption">
            <p>실내수영장</p>
          </div>
        </div>
      </div>

      <div class="col-sm-3">
        <div class="thumbnail">
          <img src="https://images.trvl-media.com/lodging/24000000/23260000/23254100/23254062/15b91d28.jpg?impolicy=resizecrop&rw=1200&ra=fit" alt="펜션">
          <div class="caption">
          <p>펜션</p>
          </div>
        </div>
      </div>

      <div class="col-sm-3">
        <div class="thumbnail">
          <img src="https://images.trvl-media.com/lodging/18000000/17870000/17867900/17867897/87b7b69b.jpg?impolicy=resizecrop&rw=1200&ra=fit" alt="한옥">
          <div class="caption">
            <p>한옥</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<h1 style="text-align: left;">인기 여행지</h1>
<div class="jumbotron section" style="background-color: transparent;">
  <div class="container">
  <div class="row">
    <div class="col-sm-3">
      <div class="thumbnail">
        <img src="https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcS4UUWueGR4OKVX6q2u4hN-_e1FQFjZVn8MjmyRME4acaBgdVNJT2GQad2l_wpzUE6R3RubusLxTN1Bcaajqv2e9_kOe-GDj13dT0M-YQ" alt="서울">
        <div class="caption">
          <p>서울</p>
        </div>
      </div>
    </div>
    
    <div class="col-sm-3">
      <div class="thumbnail">
        <img src="https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTRGcTTGFt_2wlhrTMZPD7hPIFt1jeskT--_Vu0vaMZ3Jd8pHw0p-aNPr08O8EplR9uMersnpYj5k9CYsFf4vqgm4xYJSjZoqjL_wDKMQ" alt="부산">
        <div class="caption">
          <p>부산</p>
        </div>
      </div>
    </div>
    
    <div class="col-sm-3">
      <div class="thumbnail">
        <img src="https://lh5.googleusercontent.com/p/AF1QipOl8-euekhnvXyoL_zR6AM8E_y2D2HGKPO3ZQLb=w540-h312-n-k-no" alt="광주">
        <div class="caption">
          <p>광주</p>
        </div>
      </div>
    </div>
    
    <div class="col-sm-3">
      <div class="thumbnail">
        <img src="https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcTTsC0_IudD79eKX8o3jSRnWW9JLmlxFIa3Ypw-ublXlWzbf5b13ZjHASUX9vw8Slvf4G7XYyT1P6wIlim1KoCqvSMdBxWKZGLLnRtwsQ" alt="제주도">
        <div class="caption">
          <p>제주도</p>
        </div>
      </div>
    </div>
  </div>
</div>
</div>

<%@include file="template/footer.jspf" %>
</body>
</html>





