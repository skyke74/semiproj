<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@include file="template/head.jspf" %>
<meta charset="UTF-8">
<title>검색</title>

<style>
    body {
        font-family: Arial, sans-serif; /* 기본 글꼴 설정 */
        line-height: 1.6;
    }

    .container {
        display: flex;
        justify-content: space-around;
        margin: 10px;
        gap: 30px; /* 섹션 사이 간격 추가 */
        width:100%;
    }

    .section {
        width: 90%;
        border: 1px solid black;
        padding: 20px;
       
    }
    
     .title-container {
        margin-bottom: 8px; /* 이미지와 제목 사이 간격 조정 */
    }

    .image-description {
        display: flex;
        align-items: top;
        margin-bottom: 20px;
    }

    .image-description img {
        width: 350px; /* 이미지 크기 조정 */
        height: auto;
        margin-right: 30px; /* 텍스트와의 간격 */
    }

    .description-text {
        flex-grow: 1; /* 텍스트 영역이 이미지 옆에서 확장되도록 */
    }
    
    h1{
    	font-size: 20px;
    	margin:20px;
    }

    h2 {
        margin: 0;
        font-size: 1.2em;
    }
    p{
    	margin-right:100px;
    	font-size: 30px;
    }
    
    .title-container {
    display: flex;
    align-items: center;
}

.title-container p {
    margin-right: 100px;
}

label{
	font-size:20px;
}
</style>

</head>
<body>
<%@include file="template/menu.jspf" %>

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
        <input type="date" id="checkin" name="checkin" required>

        <label for="checkout">체크아웃:</label>
        <input type="date" id="checkout" name="checkout" required>

        <label for="guests">인원수:</label>
        <input type="number" id="guests" name="guests" min="1" required>

		<a href="searchResults" type="button">검색</a>
		<!-- 
        <button type="submit">검색</button>
		 -->
    </form>
</div>
    <div class="container"> 
        <div class="section">
        	 <div class="title-container">
            <p>서울</p>
            </div> 
              <div class="image-description">
                <img alt="호텔아트리움" src="https://lh3.googleusercontent.com/p/AF1QipPDMbhQhRtZA4m4dRYYEvHj12nBAgbk2_d6lkU=s680-w680-h510">
               	
                <div class="description-text">
                    <p>&nbsp;호텔 아트리움</p>
                    <h1><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;편의시설/서비스</h1>
                    <h2>&nbsp;&nbsp;&nbsp;무료 Wi-Fi &nbsp; &nbsp; 조식</h2>                
                    <h1><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&nbsp;주소 : 중구 창경궁로 106</h1>
                    <h1><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>&nbsp;전화번호: 02-767-9800</h1>
                     <h1><a href="Results1" type="button">자세히 보기</a></h1>
                </div>
            </div>
     
      
              
           	<div class="title-container">
            <p>부산</p> 
             </div>
              <div class="image-description">
                <img alt="덴바스타호텔" src="https://lh3.googleusercontent.com/p/AF1QipPj4RGK3JhHIqATvNvGVafkz-9OHRyZH0nCf4gv=s680-w680-h510">
                <div class="description-text">
                    <p>&nbsp;덴바스타 호텔</p>
                    <h1><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;편의시설/서비스</h1>
                    <h2>&nbsp;&nbsp;&nbsp; 무료 Wi-Fi &nbsp;&nbsp; 주차장 &nbsp;&nbsp; 에어컨</h2>
                    <h1><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&nbsp;주소 : 부산광역시 부산진구 중앙대로691번길 53</p>
                    <h1><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>&nbsp;전화번호: 051-819-5001</h1>
                    <h1><a href="Results2" type="button">자세히 보기</a></h1>
                </div>
            </div>
           
         <div class="title-container">
            <p>광주</p> 
            </div>
              <div class="image-description">
                <img alt="ACC 디자인호텔" src="data:image/jpeg;base64,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">
                   	<div class="description-text">
                    <p>&nbsp; ACC 디자인호텔</p>
                    <h1><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;편의시설/서비스</h1>
                    <h2>&nbsp;&nbsp;&nbsp;무료 Wi-Fi &nbsp;&nbsp; 주차장 &nbsp;&nbsp; 에어컨 &nbsp;&nbsp; 수영장 &nbsp;&nbsp; 레스토랑 &nbsp;&nbsp; 호텔바</h1>
                    <h1><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&nbsp;주소 : 광주광역시 동구 금남로 226-11</h1>
                    <h1><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>&nbsp;전화번호:062-234-8000</h1>
                    <h1><a href="Results3" type="button">자세히 보기</a></h1>
                </div>
            </div>
         
           <div class="title-container">
            <p>제주</p> 
             </div>
              <div class="image-description">
                <img alt="한화리조트" src="https://18db057190b78dc7.kinxzone.com/upfiles/resort/resort/171012097808925131.jpg">
                    <div class="description-text">
                    <p>&nbsp; 한화리조트 제주</p>
                    <h1><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;편의시설/서비스</h1>
                    <h2>&nbsp;&nbsp;&nbsp;무료 Wi-Fi &nbsp;&nbsp; 주차장 &nbsp;&nbsp; 에어컨</h2>
                    <h1><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&nbsp;주소 : 제주특별자치도 제주시 봉개동 명림로 575-107</h1>
                    <h1><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>&nbsp;전화번호 : 064-725-9000</h1>
                    <h1><a href="Results4" type="button">자세히 보기</a></h1>
                </div>
            </div>  
            
           
       </div>
   </div>        
</body>
</html>