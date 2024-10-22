<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>로그인 페이지</title>
    <style>
        /* 로그인 컨테이너 스타일 */
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

        /* 버튼 컨테이너 */
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
    <script>
        // 이메일 유효성 검사 함수
        function validateEmail(email) {
            const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // 이메일 형식 체크
            return re.test(String(email).toLowerCase());
        }

        // 로그인 버튼 클릭 시 유효성 검사 함수
        function handleLoginClick() {
            const email = document.querySelector('input[name="ID"]').value;
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

            // 모든 조건을 통과하면 로그인 페이지로 이동
            location.href = '${root}/hotels/mypage/';
        }
    </script>
</head>
<body>

<div class="login-container">
    <h2>로그인페이지</h2>
    
    <!-- 로그인 폼 시작 -->
    <form> <!-- 폼 자체는 제출되지 않음 -->
        <input type="text" name="ID" placeholder="e-mail" required> <!-- 사용자 아이디 입력 필드 -->
        <input type="password" name="password" placeholder="비밀번호" required> <!-- 비밀번호 입력 필드 -->
        
        <!-- 버튼 컨테이너: 로그인, 회원가입, 아이디/비밀번호 변경 버튼 -->
        <div class="button-container">
            <button type="button" onclick="handleLoginClick()">로그인</button> <!-- 로그인 버튼, 클릭 시 handleLoginClick 함수 실행 -->
            <button type="button" onclick="location.href='${root}/hotels/signup/'">회원가입</button> <!-- 회원가입 페이지로 이동 버튼 -->
            <button type="button" onclick="location.href='${root}/hotels/change/'">비밀번호 변경</button> <!-- 아이디/비밀번호 변경 페이지로 이동 버튼 -->
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



