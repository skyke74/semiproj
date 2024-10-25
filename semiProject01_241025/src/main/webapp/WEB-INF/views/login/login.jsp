<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
<%@include file="../template/head.jspf" %>
<%@include file="../css/login_css.jspf" %>
<script type="text/javascript">
	var re='${redr}';
	if(re.length > 0){
		alert(re+"은 존재하지 않는 이메일 입니다.");
	}
	//이메일 유효성 검사 함수
	function validateEmail(email) {
	    const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // 이메일 형식 체크
	    return re.test(String(email).toLowerCase());
	}
	
	// 로그인 버튼 클릭 시 유효성 검사 함수
	function handleLoginClick() {
	    const email = document.querySelector('input[name="email"]').value;
	    const password = document.querySelector('input[name="password"]').value;
	
	    if ( !email || !password ) {
	        alert("이메일과 비밀번호를 작성하세요");
	        return false;
	    }
	    
	    // 이메일 유효성 검사
	    if (!validateEmail(email)) {
	        alert("올바른 이메일 형식이 아닙니다!");
	        return;
	    }
	
	    // 비밀번호 길이 검사
	    if (password.length < 8) {
	        alert("비밀번호는 8글자 이상이어야 합니다!");
	        return;
	    }

		var param=$('form').serialize();
		$.post('login/access',param);
	    
	}
</script>
</head>
<body>
<%@include file="../template/menu.jspf" %>
<div class="login-container">
    <h2>로그인페이지</h2>
    <!-- 로그인 폼 시작 -->
    <form action="login/access" method="post"> 
        <input type="text" name="email" placeholder="${email_valid }" required>
        <input type="password" name="password" placeholder="${pw_valid }" required>
                
        <!-- 버튼 컨테이너: 로그인, 회원가입, 아이디/비밀번호 변경 버튼 -->
        <div class="button-container">
            <button type="submit">로그인</button> <!-- 로그인 버튼, 클릭 시 handleLoginClick 함수 실행 -->
            <button type="button"onclick="location.href='${root}/signup'">회원가입</button> <!-- 회원가입 페이지로 이동 버튼 -->
            </div>
    </form>
    <!-- 로그인 폼 끝 -->
   
    <!-- 하단 정보 -->
    <p style="height: 150px;">&nbsp;</p> <!-- 간격을 위한 빈 공간 -->
    <address>
        <p> ID는 이메일 형식으로 작성 하십시오.</p> <!-- 사용자에게 아이디 작성 규칙 안내 -->
        <p> 비밀번호는 특수문자, 대.소문자 구분 </p>
        <p> 8글자 이상으로 작성 하십시오.</p> <!-- 비밀번호 작성 규칙 안내 -->
        <p> 계정이 없으시면 회원가입을 하십시오.</p> <!-- 계정이 없을 경우 회원가입 안내 -->
    </address>
</div>
<script type="text/javascript">
$('form').one('submit',e=>{
	e.preventDefault();
	handleLoginClick();
});
</script>
</body>
</html>



