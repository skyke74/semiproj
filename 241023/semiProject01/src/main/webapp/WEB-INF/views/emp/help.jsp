<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>도움말</title>
<style>
	
	.btn.btn-default.dropdown-toggle {
		width: 45%;
		font-size: 20px; /* 버튼의 글씨 크기 */
		margin: 20px;
		
	}


	.dropdown-menu {
		width: 100%; /* 드롭다운 너비 설정 */
		padding: 20px;   /* 드롭다운 내부 여백 */
		
	}
	
	.dropdown {
		text-align: center; /* 드롭다운을 감싸는 div를 가운데 정렬 */
		
	}
	
	p{
		text-align: center;
		font-size: 20px;
	}
	 
</style>
<%@include file="../template/head.jspf" %>
</head>
<body>
<%@ include file="../template/menu.jspf" %>
	<p>Q&A</p>
	<div class="dropdown">
		<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
			체크인과 체크아웃 시간은 언제인가요?
			<span class="caret"></span>
		</button>
		<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
			<li><p>대부분 체크인 시간은 오후 2시~3시입니다.</p></li>
			<li role="separator" class="divider"></li>
			<li><p>대부분 체크아웃 시간은 오전 11시~12시입니다.</p></li>
			<li role="separator" class="divider"></li>
			<li><p>호텔마다 시간이 다를 수 있으니 사전 확인이 필요합니다.</p></li>
		</ul>
	</div>
	
	<div class="dropdown">
		<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
			취소 및 환불 정책은 어떻게 되나요?
			<span class="caret"></span>
		</button>
		<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
			<li><p>예약 취소 시 호텔 정책에 따라 취소 수수료가 부과될 수 있습니다.</p></li>
			<li role="separator" class="divider"></li>
			<li><p>예약 시 취소 가능 기간과 환불 규정을 꼭 확인해 주세요.</p></li>
		</ul>
	</div>
	
	<div class="dropdown">
		<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
			객실 내 어떤 편의시설이 있나요?
			<span class="caret"></span>
		</button>
		<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
			<li><p>일반적으로 무료 Wi-Fi, TV, 헤어드라이어, 목욕용품 등이 제공됩니다.</p></li>
			<li role="separator" class="divider"></li>
			<li><p>추가 요청 사항이 있을 경우 호텔에 문의하세요.</p></li>
		</ul>
	</div>
	
	<div class="dropdown">
		<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
			조식은 포함되어 있나요?
			<span class="caret"></span>
		</button>
		<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
			<li><p>조식은 일부 객실 요금에 포함될 수 있으며, 선택 사항일 수도 있습니다.</p></li>
			<li role="separator" class="divider"></li>
			<li><p>예약 시 조식 포함 여부를 확인하세요.</p></li>
		</ul>
	</div>
	
	<div class="dropdown">
		<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
			반려동물과 함께 투숙할 수 있나요?
			<span class="caret"></span>
		</button>
		<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
			<li><p>반려동물 동반 가능 여부는 호텔마다 다르며, 추가 요금이나 제한 사항이 있을 수 있습니다.</p></li>			
		</ul>
	</div>
	
	<div class="dropdown">
		<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
			흡연 가능 객실이 있나요?
			<span class="caret"></span>
		</button>
		<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
			<li><p>일부 호텔은 흡연 가능한 객실을 제공하지만, 많은 호텔이 금연 정책을 시행하고 있습니다.</p></li>
		</ul>
	</div>
	
	<div class="dropdown">
		<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
			룸서비스가 가능한가요?
			<span class="caret"></span>
		</button>
		<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
			<li><p>대부분의 호텔은 룸서비스를 제공하며, 운영 시간과 메뉴를 확인할 수 있습니다.</p></li>
		</ul>
	</div>
	
	<div class="dropdown">
		<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
			결제 수단은 무엇을 사용할 수 있나요?
			<span class="caret"></span>
		</button>
		<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
			<li><p>신용카드, 직불카드, 현금 결제 외에 모바일 결제나 전자결제를 지원할 수 있습니다.</p></li>	
		</ul>
	</div>
	
	<div class="dropdown">
		<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
			객실 내 주방 시설이 있나요?
			<span class="caret"></span>
		</button>
		<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
			<li><p>일부 호텔은 주방 시설이 있는 객실을 제공하기도 합니다.</p></li>
			<li role="separator" class="divider"></li>
			<li><p>해당 객실 유형을 사전에 확인하세요.</p></li>
		</ul>
	</div>
	
	<div class="dropdown">
		<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
			객실 청소 서비스는 어떻게 제공되나요?
			<span class="caret"></span>
		</button>
		<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
			<li><p>객실 청소는 매일 제공되거나, 요청 시에만 제공될 수 있습니다. </p></li>		
		</ul>
	</div>
</body>
</html>
