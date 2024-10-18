<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>로그인 페이지</title>
    <style>
        /* 로그인 컨테이너 스타일: 세로 배치를 위한 flexbox 사용 */
        .login-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 300px; /* 컨테이너의 고정 너비 */
            margin: 0 auto; /* 페이지 중앙에 위치 */
        }

        /* 입력 필드와 버튼 스타일 */
        .login-container input, .login-container button {
            width: 100%; 
            margin: 10px 0; /* 위아래로 10px 간격 추가 */
            padding: 10px; /* 내부 여백 추가 */
            font-size: 1rem; /* 글자 크기 설정 */
        }

        /* 버튼에 커서 모양 추가 */
        .login-container button {
            cursor: pointer; /* 버튼 위에 마우스 올렸을 때 손 모양으로 변경 */
        }

        /* 버튼 컨테이너: 버튼들을 세로로 배치 */
        .button-container {
            width: 108%;
            display: flex;
            
            flex-direction: column;
        }

        /* 버튼들 간격 추가 */
        .button-container button {
            margin: 5px 0; /* 버튼 사이에 5px 간격 추가 */
        }

        /* 주소(p 태그) 가운데 정렬 */
        address p {
            text-align: left;
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>로그인페이지</h2>
    
    <!-- 로그인 폼 시작 -->
    <form action="${root}/login/process" method="post"> <!-- 로그인 처리를 위한 URL -->
        <input type="text" name="ID" placeholder="e-mail" required> <!-- 사용자 아이디 입력 필드 -->
        <input type="password" name="password" placeholder="비밀번호" required> <!-- 비밀번호 입력 필드 -->
        
        <!-- 버튼 컨테이너: 로그인, 회원가입, 아이디/비밀번호 변경 버튼 -->
        <div class="button-container">
            <button type="submit">로그인</button> <!-- 로그인 버튼 -->
            <button type="button" onclick="location.href='${root}/signup'">회원가입</button> <!-- 회원가입 페이지로 이동 버튼 -->
            <button type="button" onclick="location.href='${root}/change-id-password'">아이디/비밀번호 변경</button> <!-- 아이디/비밀번호 변경 페이지로 이동 버튼 -->
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

</body>
</html>


