<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Hotels</title>
<%@include file="../template/head.jspf" %>
<%@include file="../css/searchResults_css.jspf" %>
</head>
<body>
<%@include file="../template/menu.jspf" %>

<%@include file="../template/search.jspf" %>

    <div class="container"> 
        <div class="section">
        	 <div class="title-container">
            <p>${loc }</p>
            </div> 		
			<c:forEach items="${list }" var="bean">
	            <div class="image-description">
	                <img alt="${bean.hotel_name }" src="${bean.image_url }">
	                <div class="description-text">
                   		<p>&nbsp;${bean.hotel_name }</p>
	                    <h1><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;편의시설/서비스</h1>
	                    <h2>&nbsp;
	                    	<c:forEach items="${bean.amenities }" var="amn">
	                    	&nbsp;&nbsp;${amn }
	                    	</c:forEach>
	                    </h2>                
	                    <h1><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&nbsp;주소 : ${bean.address }</h1>
	                    <h1><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>&nbsp;전화번호: ${bean.contact_number }</h1>
	                    <h1><a href="hotel_detail/${bean.hotel_id }?location=${loc}&checkin=${checkin}&checkout=${checkout}&guests=${guests}" type="button">자세히 보기</a></h1>
                	</div>
            	</div>
			</c:forEach>
        </div>
	</div>
</body>
</html>





