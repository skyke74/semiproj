<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <style>
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
        .signup-container input[type="text"], 
        .signup-container input[type="email"], 
        .signup-container input[type="password"], 
        .signup-container input[type="tel"], 
        .signup-container input[type="date"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .signup-container input[type="checkbox"] {
            margin-right: 10px;
        }
        .signup-container .checkbox-label {
            font-weight: normal;
            display: flex;
            align-items: center;
            margin-bottom: 10px;
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
        .signup-container .agreement-section {
            margin-top: 15px;
        }
        .button-container p {
            display: flex; /* 버튼을 수평으로 배치 */
            justify-content: center; /* 가운데 정렬 */
            width: 100%; /* 가로 너비를 100%로 설정 */
        }
        .button-container button {
            flex: 1; /* 버튼을 같은 너비로 설정 */
            margin: 0 5px; /* 버튼 간격 추가 */
            font-weight: normal; /* 글자를 굵게 설정 */
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
            const name = document.getElementById("name").value;
            const email = document.getElementById("email").value;
            const password = document.getElementById("password").value;
            const confirmPassword = document.getElementById("confirm-password").value;
            const address = document.getElementById("adress").value;
            const tel = document.getElementById("tel").value;
            const birthdate = document.getElementById("birthdate").value;
            const terms = document.getElementById("terms").checked;

            // 각 필드가 비어 있는지 확인
            if (!name || !email || !password || !confirmPassword || !address || !tel || !birthdate) {
                alert("모든 정보를 작성하세요");
                return false;
            }

            // 비밀번호 일치 여부 확인
            if (password !== confirmPassword) {
                alert("비밀번호가 일치하지 않습니다.");
                return false;
            }

            // 비밀번호 길이 확인 (8자리 이상)
            if (password.length < 8) {
                alert("비밀번호는 8자리 이상이어야 합니다!");
                return false;
            }

            // 이용 약관 동의 여부 확인
            if (!terms) {
                alert("이용약관에 동의하세요.");
                return false;
            }

            // 모든 검사를 통과하면 true 반환
            return true;
        }

        // 확인 버튼 클릭 시 폼 유효성 검사
        function handleSubmit() {
            if (validateForm()) {
                // 모든 검사가 통과되면 로그인 페이지로 이동
                location.href = '${root}/hotels/login/';
            }
        }
    </script>
</head>
<body>
    <div class="signup-container">
        <h2>회원가입</h2>
        <form>
            <label for="name">이름</label>
            <input type="text" id="name" name="name" required>

            <label for="email">이메일</label>
            <input type="email" id="email" name="email" required>

            <label for="password">비밀번호</label>
            <input type="password" id="password" name="password" required>

            <label for="confirm-password">비밀번호 확인</label>
            <input type="password" id="confirm-password" name="confirm-password" required>

            <label for="adress">주소</label>
            <input type="text" id="adress" name="adress" required>

            <label for="tel">전화번호</label>
            <input type="tel" id="tel" name="tel" required>

            <label for="birthdate">생년월일</label>
            <input type="date" id="birthdate" name="birthdate" required min="1940-01-01", max="2024-12-31">

            <div class="agreement-section">
                <label class="checkbox-label">
                    <input type="checkbox" id="terms" name="terms" required>
                    <span>개인정보 수집 및 이용에 동의합니다.</span>
                </label>
                <label class="checkbox-label">
                    <input type="checkbox" id="marketing" name="marketing">
                    <span>마케팅 정보 수신에 동의합니다.</span>
                </label>
            </div>

            <div class="button-container">
                <p>
                    <button type="button" class="btn btn-primary btn-lg confirm-btn" onclick="handleSubmit()">확인</button>
                    <button type="button" class="btn btn-default btn-lg cancel-btn">취소</button>
                </p>
            </div>
        </form>
    </div>
</body>
</html>