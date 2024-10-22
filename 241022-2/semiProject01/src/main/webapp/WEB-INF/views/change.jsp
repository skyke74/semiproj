<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>비밀번호 변경</title>
    <style>
        /* 스타일링 부분 동일 */
        .signup-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 300px; /* 컨테이너의 고정 너비 */
            margin: 0 auto; /* 페이지 중앙에 위치 */
        }
        .signup-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .signup-container label {
            display: block;
            margin-bottom: 5px;
            font-size: 15px;
        }
        .signup-container input[type="password"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .signup-container button {
            width: 100%;
            padding: 10px;
            color: gray;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .signup-container button:hover {
            background-color: #a9a9a9;
            color: black;
        }
        .button-container p {
            display: flex;
            justify-content: center;
            width: 100%;
        }
        .button-container button {
            flex: 1;
            margin: 0 5px;
            font-weight: normal; 
            color: black;
        }
        .confirm-btn {
            font-size: 20px;
            background-color: #4169e1;
        }
        .cancel-btn {
            font-size: 20px;
            background-color: #f0f0f0;
        }
    </style>
    
    <script>
        function validateForm() {
            const currentPassword = document.getElementById("password").value;
            const newPassword = document.getElementById("change-password").value;
            const confirmPassword = document.getElementById("check-password").value;

            // 모든 필드가 비어있는지 확인
            if (!currentPassword || !newPassword || !confirmPassword) {
                alert("모든 정보를 작성하세요.");
                return false;
            }

            // 현재 비밀번호와 변경할 비밀번호가 동일한지 확인
            if (currentPassword === newPassword) {
                alert("현재 비밀번호와 변경할 비밀번호는 달라야 합니다.");
                return false;
            }

            // 변경할 비밀번호와 비밀번호 확인이 일치하는지 확인
            if (newPassword !== confirmPassword) {
                alert("변경할 비밀번호와 비밀번호 확인이 일치하지 않습니다.");
                return false;
            }

            // 비밀번호 길이 확인 (8자리 이상)
            if (newPassword.length < 8) {
                alert("비밀번호는 8자리 이상이어야 합니다.");
                return false;
            }

            // 모든 조건을 통과하면 true 반환
            return true;
        }

        function handleChange() {
            if (validateForm()) {
                // 유효성 검사를 통과하면 로그인 페이지로 이동
                location.href = '${root}/hotels/login/';
            }
        }
    </script>
    
</head>
<body>
    <div class="signup-container">
        <h2>비밀번호 변경</h2>
        <form>
            <label for="password">현재 비밀번호</label>
            <input type="password" id="password" name="password" required>

            <label for="change-password">변경할 비밀번호</label>
            <input type="password" id="change-password" name="change-password" required>

            <label for="check-password">비밀번호 확인</label>
            <input type="password" id="check-password" name="check-password" required>

           <div class="button-container">
                <p>
                 <button type="button" class="btn btn-primary btn-lg confirm-btn" onclick="handleChange()">확인</button>
                 <button type="button" class="btn btn-default btn-lg cancel-btn">취소</button>
                </p>
            </div>
        </form>
    </div>
</body>
</html>
