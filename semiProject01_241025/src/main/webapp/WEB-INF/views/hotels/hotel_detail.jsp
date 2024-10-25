<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${list.hotel_name }</title>
<%@include file="../template/head.jspf" %>
<%@include file="../css/hotel_result_css.jspf" %>
<script type="text/javascript">
 function confirmBookmark() {
      if (confirm("즐겨찾기 등록하시겠습니까?")) {
          $.post('${root}/hotel_detail/${list.hotel_id}/fav');
          location.reload(true);
      } else {
    	  return;
      }
  }
 function disableBookmark() {
      if (confirm("즐겨찾기 취소하시겠습니까?")) {
          $.post('${root}/hotel_detail/${list.hotel_id}/dis_fav');
          location.reload(true);
      } else {
    	  return;
      }
  }
</script>
</head>
<body>
<%@include file="../template/menu.jspf" %>

<%@include file="../template/search.jspf" %>
    <p class="hotel-info-title">&nbsp;&nbsp;호텔정보</p>

    <div class="container"> 
       <div class="section"> 
        	 <div class="title-container">
            <p>&nbsp;&nbsp;${list.hotel_name }</p>
            </div> 
              <div class="image-description">
                <img alt="${list.hotel_name }" src="https://images.trvl-media.com/lodging/16000000/15540000/15536400/15536302/4f84a9a9.jpg?impolicy=resizecrop&rw=1200&ra=fit">
               	<img alt="" src="https://images.trvl-media.com/lodging/16000000/15540000/15536400/15536302/3edbeeb8.jpg?impolicy=resizecrop&rw=1200&ra=fit">
                <div class="description-text"> 
                	 
                    <h1><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;편의시설/서비스</h1>
                    <h2>&nbsp;
                    	<c:forEach items="${list.amenities }" var="amn">
                    	&nbsp;&nbsp;${amn }
                    	</c:forEach>
                    </h2> 
                     <h2>&nbsp;&nbsp;&nbsp;Raum에서 아침 및 점심식사 가능 </h2>               
                    <h1><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&nbsp;주소 : ${list.address }</h1>
                    <h1><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>&nbsp;전화번호: ${list.contact_number }</h1>
                    
                </div>
                
                 <div class="description-text2">
                    <h1><span class="glyphicon glyphicon-bell" aria-hidden="true"></span><a class="resv" type="button"> 예약하기</a></h1>  
                    <h1><span class="glyphicon glyphicon-star" aria-hidden="true"></span><a class="fav" type="button"> 즐겨찾기</a></h1>          
                </div>
            </div>
     	<script type="text/javascript">
     		$('.resv').click(function(e){
     			if('${sessionScope.user}'==''){
	     			alert("로그인 후 예약이 가능합니다.");
     				return;
     			}else{
     				location.href="./resv?location=${loc}&checkin=${checkin}&checkout=${checkout}&guests=${guests}";
     			}
     		});
			var fav_btn=document.querySelector('.fav');
     		if('${list.user_name}'=='${sessionScope.user}'){
     			fav_btn.innerHTML='즐겨찾기 취소';
     			$('.fav').click(function(e){
     				disableBookmark();
     			});
     		}else{
	     		$('.fav').click(function(e){
	     			if('${sessionScope.user}'==''){
		     			alert("로그인 후 즐겨찾기가 가능합니다.");
	     				return;
	     			}else{
	     				confirmBookmark();
	     			}
	     		});
	     		}
     	</script>
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
                    <p><span class="glyphicon glyphicon-check" aria-hidden="true"></span>&nbsp;체크인/체크아웃</p>
                    <h2>&nbsp;&nbsp;&nbsp;체크인 시간은 15:00 , 체크아웃 시간은 11:00</h1>   
                     <p><span class="glyphicon glyphicon-check" aria-hidden="true"></span>&nbsp;반려동물</p>
                    <h2>&nbsp;&nbsp;&nbsp;반려동물 동반 불가</h1>                   
            </div>
           
         <div class="title-container ">
            <p>객실</p> 
         </div>
         <div class="rooms">
         	<div class="room1">   
              <div class="image-description">
                <img alt="디럭스 트리플" src="https://images.trvl-media.com/lodging/16000000/15540000/15536400/15536302/ce1b3dfd.jpg?impolicy=fcrop&w=1200&h=800&p=1&q=medium">
                    <div class="description-text">
	                    <p>&nbsp; 디럭스 트리플룸</p>
	                    <h1>&nbsp;면적: 46㎡ &nbsp;무료 Wi-Fi</h1>                  
	                    <h1><span class="glyphicon glyphicon-bed" aria-hidden="true"></span>&nbsp;퀸사이즈침대 3개</h1>
	                    <h1><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;6명</h1>  
	                    <h1>가격: &#8361;${list.premium_price }</h1>
	                    <p>현재 ${list.premium_r }개의 방이 예약 가능합니다.</p>
	                    <h1>주요특징</h1>
	                    <h2>&nbsp; 방음 설비&nbsp; 에어컨&nbsp; TV &nbsp;헤어드라이어 &nbsp; 전용 욕실 &nbsp; 무료 생수</h2>
               		</div>
                </div>
            </div>
                
         	<div class="room2">
                <div class="image-description">
                <img alt="디럭스 킹" src="https://images.trvl-media.com/lodging/16000000/15540000/15536400/15536302/8942deb2.jpg?impolicy=fcrop&w=1200&h=800&p=1&q=medium">
                    <div class="description-text">
	                    <p>&nbsp; 디럭스 킹 트윈</p>
	                    <h1>&nbsp;면적: 33㎡ &nbsp;무료 Wi-Fi</h1>                  
	                    <h1><span class="glyphicon glyphicon-bed-sleeping" aria-hidden="true"></span>&nbsp;킹사이즈침대 2개</h1>
	                    <h1><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;4명</h1>  
	                    <h1>가격: &#8361;${list.deluxe_price }</h1>
	                    <p>현재 ${list.deluxe_r }개의 방이 예약 가능합니다.</p>
	                    <h1>주요특징</h1>
	                    <h2>&nbsp; 방음 설비&nbsp; 에어컨&nbsp; TV &nbsp;헤어드라이어 &nbsp; 전용 욕실 &nbsp; 무료 생수</h2>            
                	</div>
            	</div>
            </div>
            
         	<div class="room3">
                <div class="image-description">
                <img alt="슈피" src="https://images.trvl-media.com/lodging/16000000/15540000/15536400/15536302/5d0c3bff.jpg?impolicy=fcrop&w=1200&h=800&p=1&q=medium">
                    <div class="description-text">
	                    <p>&nbsp; 슈피리어 더블룸</p>
	                    <h1>&nbsp;면적: 27㎡ &nbsp;무료 Wi-Fi</h1>                  
	                    <h1><span class="glyphicon glyphicon-bed-sleeping" aria-hidden="true"></span>&nbsp;싱글침대 1개</h1>
	                    <h1><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;2명</h1>  
	                    <h1>가격: &#8361;${list.standard_price }</h1>
	                    <p>현재 ${list.standard_r }개의 방이 예약 가능합니다.</p>
	                    <h1>주요특징</h1>
	                    <h2>&nbsp; 방음 설비&nbsp; 에어컨&nbsp; TV &nbsp;헤어드라이어 &nbsp; 전용 욕실 &nbsp; 무료 생수</h2>            
	                </div>
	            </div>
            </div>           
         	<div class="room_N">
                <div class="description-text3">
                    <p>&nbsp;해당 인원수에 부합하는 객실 정보를 찾지 못했습니다.</p>
	            </div>
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
    <script type="text/javascript">
		$(".room_N").hide();
		$(".room1").hide();
		$(".room2").hide();
		$(".room3").hide();
    	var guest='${guests}';
    	if(guest<7){
			$(".room1").show();
			if(guest<5){
				$(".room2").show();
				if(guest<3){
				$(".room3").show();
				}
			}
    	}else{
    		$(".room_N").show();
    	}
    	
    </script>
</body>
</html>