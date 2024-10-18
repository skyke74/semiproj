<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@include file="template/head.jspf" %>
<meta charset="UTF-8">
<title>호텔 아트리움</title>

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
        background-color: transparent;
    }

    .section {
        width: 100%;
        border: 1px solid transparent;
        padding: 20px;
      
    }
    
     .title-container {
        margin-bottom: 8px; /* 이미지와 제목 사이 간격 조정 */
    }

    .image-description {
        display: flex;
        align-items: top;
        margin-bottom: 100px;
    }

    .image-description img {
        width: 300px; /* 이미지 크기 조정 */
        height: auto;
        margin-right: 30px; /* 텍스트와의 간격 */
    }

    .description-text {
        flex-grow: 1; /* 텍스트 영역이 이미지 옆에서 확장되도록 */
    }
    
    .hotel-info-title {
    font-size: 24px; /* 제목 크기 설정 */
    margin-bottom: 10px; /* 경계와의 간격 설정 */
    padding-bottom: 10px; /* 경계와의 간격 설정 */
    border-bottom: 2px solid #000; /* 아래 경계 추가 */
    margin-left: 20px;
}
    
    .description-text,
	.description-text2 {
   
    margin-left: 50px; /* 왼쪽 간격 설정 (선택 사항) */
    margin-right: 150px; /* 오른쪽 간격 설정 (선택 사항) */
}
	.description-text3,
	.description-text4
	{
		 margin-left: 150px;
		  margin-right: 150px;
	}
	
    
    h1{
    	font-size: 20px;
    	margin:10px;
    	
    }

    h2 {
        margin: 0;
        font-size: 1.2em;
    }
    p{
    	margin-right:100px;
    	font-size: 30px;
    	margin-top:10px;
    }
    
    .title-container {
    display: flex;
    align-items: center;
}

.title-container p {
    margin-right: 100px;
}

label{
  	font-size: 20px;
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


    
    <p class="hotel-info-title">&nbsp;&nbsp;호텔정보</p>

    
    <div class="container"> 
       <div class="section"> 
        	 <div class="title-container">
            <p>&nbsp;&nbsp;호텔아트리움</p>
            </div> 
              <div class="image-description">
                <img alt="호텔아트리움" src="https://images.trvl-media.com/lodging/16000000/15540000/15536400/15536302/4f84a9a9.jpg?impolicy=resizecrop&rw=1200&ra=fit">
               	<img alt="" src="https://images.trvl-media.com/lodging/16000000/15540000/15536400/15536302/3edbeeb8.jpg?impolicy=resizecrop&rw=1200&ra=fit">
                <div class="description-text"> 
                	 
                    <h1><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;편의시설/서비스</h1>
                    <h2>&nbsp;&nbsp;&nbsp;무료 Wi-Fi &nbsp; &nbsp; 조식 &nbsp; &nbsp; </h2> 
                     <h2>&nbsp;&nbsp;&nbsp;Raum에서 아침 및 점심식사 가능 </h2>               
                    <h1><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&nbsp;주소 : 중구 창경궁로 106</h1>
                    <h1><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>&nbsp;전화번호: 02-767-9800</h1>
                    
                </div>
            </div>
     
           	<div class="title-container">
            <p>주변정보</p> 
             </div>
              <div class="image-description">
                <img alt="주변" src="https://www.google.co.kr/maps/vt/data=ujOU4v37Cu3t7ufxAeMUWr7v82_ft6rlbdu45iLW_H8JpUMsVav7DMnF8VNSNn7Sg3uQpbO-XYVlla8eB3Out9Lh-8v9SAvYm9tUfl8eNFfwxpe4aiy-TzOnpgLXGjEglSMno9XK9Q1pcak6fh9h0SyTamBNq4Haz7SDeNsWrj5yFIOVWhH6quu4X6uLJxsntQT3KpnJLURcI62L7ZGlsWIcNXx1o4QJlwBAGpSMOssx-KFqODwMKs4umXcLHD4ysyFCmajIvffTKQ7F">
                <div class="description-text">
                    <p>&nbsp;&nbsp;인근명소</p>
                     <h1><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&nbsp; 광장시장 &nbsp;&nbsp;&nbsp;&nbsp; 도보3분</p>
                    <h1><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&nbsp; 창경궁 &nbsp;&nbsp;&nbsp;&nbsp; 도보7분</p>
                    <h1><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&nbsp; 인사동 &nbsp;&nbsp;&nbsp; 도보14분</p> 
                </div>
                <div class="description-text2">
                    <p>&nbsp;&nbsp;교통편</p>
                    <h1>&nbsp; 종로5가역 &nbsp;&nbsp;&nbsp;&nbsp;도보 5분</p>
                    <h1>&nbsp;  을지로4가역 &nbsp;&nbsp;&nbsp;&nbsp; 도보7분</p>
                    <h1>&nbsp;  종로3가역 &nbsp;&nbsp;&nbsp;&nbsp;   도보14분</p> 
                </div>
            </div>
            
            <div class="title-container">
            <p>한눈에 살펴보기</p> 
             </div>    
                    <div class="description-text3">
                    <p><span class="glyphicon glyphicon-check" aria-hidden="true"></span>&nbsp;호텔규모</p>
                    <h2>&nbsp;&nbsp;&nbsp;139개 객실</h1>                           
                    <p><span class="glyphicon glyphicon-check" aria-hidden="true"></span>&nbsp;체크인/체크아웃</p>
                    <h2>&nbsp;&nbsp;&nbsp;체크인 시간은 15:00 , 체크아웃 시간은 11:00</h1>   
                     <p><span class="glyphicon glyphicon-check" aria-hidden="true"></span>&nbsp;반려동물</p>
                    <h2>&nbsp;&nbsp;&nbsp;반려동물 동반 불가</h1>                   
            </div>
           
         <div class="title-container">
            <p>객실</p> 
            </div>
              <div class="image-description">
                <img alt="디럭스 트리플" src="https://images.trvl-media.com/lodging/16000000/15540000/15536400/15536302/ce1b3dfd.jpg?impolicy=fcrop&w=1200&h=800&p=1&q=medium">
                    <div class="description-text">
                    <p>&nbsp; 디럭스 트리플룸</p>
                    <h1>&nbsp;면적: 34㎡ &nbsp;무료 Wi-Fi</h1>                  
                    <h1><span class="glyphicon glyphicon-bed" aria-hidden="true"></span>&nbsp;싱글침대 3개</h1>
                    <h1><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;3명</h1>  
                    <h1></h1>
                    <h1>주요특징</h1>
                    <h2>&nbsp; 방음 설비&nbsp; 에어컨&nbsp; TV &nbsp;헤어드라이어 &nbsp; 전용 욕실 &nbsp; 무료 생수</h2>
               		</div>
                </div>
                
                <div class="image-description">
                <img alt="디럭스 킹" src="https://images.trvl-media.com/lodging/16000000/15540000/15536400/15536302/8942deb2.jpg?impolicy=fcrop&w=1200&h=800&p=1&q=medium">
                    <div class="description-text">
                    <p>&nbsp; 디럭스 킹 트윈</p>
                    <h1>&nbsp;면적: 33㎡ &nbsp;무료 Wi-Fi</h1>                  
                    <h1><span class="glyphicon glyphicon-bed-sleeping" aria-hidden="true"></span>&nbsp;킹사이즈침대 2개</h1>
                    <h1><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;4명</h1>  
                    <h1></h1>
                    <h1>주요특징</h1>
                    <h2>&nbsp; 방음 설비&nbsp; 에어컨&nbsp; TV &nbsp;헤어드라이어 &nbsp; 전용 욕실 &nbsp; 무료 생수</h2>            
                </div>
            </div>
            
                <div class="image-description">
                <img alt="슈피" src="https://images.trvl-media.com/lodging/16000000/15540000/15536400/15536302/5d0c3bff.jpg?impolicy=fcrop&w=1200&h=800&p=1&q=medium">
                    <div class="description-text">
                    <p>&nbsp; 슈피리어 더블룸</p>
                    <h1>&nbsp;면적: 27㎡ &nbsp;무료 Wi-Fi</h1>                  
                    <h1><span class="glyphicon glyphicon-bed-sleeping" aria-hidden="true"></span>&nbsp;싱글침대 1개</h1>
                    <h1><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;2명</h1>  
                    <h1></h1>
                    <h1>주요특징</h1>
                    <h2>&nbsp; 방음 설비&nbsp; 에어컨&nbsp; TV &nbsp;헤어드라이어 &nbsp; 전용 욕실 &nbsp; 무료 생수</h2>            
                </div>
            </div>
            
            <div class="title-container">
            <p>요금 및 정책</p> 
             </div>    
                    <div class="description-text3">
                    <p>&nbsp;기타 선택 사항</p>
                    <h2>&nbsp;&nbsp;&nbsp;뷔페식 아침 식사: 성인 KRW 18000, 어린이 KRW 18000의 추가 요금으로 이용 가능</h1>                           
                    <p>&nbsp;요금</p>
                    <h2>&nbsp;&nbsp;이 숙박 시설에서 사용 가능한 결제 수단은 신용카드, 직불카드, 현금입니다.</h1>  
                    <h2>&nbsp;&nbsp;현금 없이 결제 옵션을 이용하실 수 있습니다.</h1>                              
            </div>             
       </div>
        </div>  
</body>
</html>