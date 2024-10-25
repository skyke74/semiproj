<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>예약</title>
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
        .signup-container input[type="tel"], 
        .signup-container input[type="date"],
        .signup-container select {
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
            const address = document.getElementById("adress").value;
            const tel = document.getElementById("tel").value;
            const birthdate = document.getElementById("birthdate").value;
            const checkin = document.getElementById("checkin").value;
            const checkout = document.getElementById("checkout").value;
            const roomes = document.getElementById("roomes").value;
            const terms = document.getElementById("terms").checked;
            const marketing = document.getElementById("marketing").checked;

            // 각 필드가 비어 있는지 확인
            if (!name || !address || !tel || !birthdate || !checkin || !checkout || !roomes) {
                alert("모든 정보를 작성하세요");
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
                location.href = '${root}/hotels/mypage/';
            }
        }
    </script>
</head>
<body>
    <div class="signup-container">
        <h2>예약하기</h2>
        <form>
            <label for="name">이름</label>
            <input type="text" id="name" name="name" required>

            <label for="adress">주소</label>
            <input type="text" id="adress" name="adress" required>

            <label for="tel">전화번호</label>
            <input type="tel" id="tel" name="tel" required>

            <label for="birthdate">생년월일</label>
            <input type="date" id="birthdate" name="birthdate" required min="1940-01-01" max="2024-12-31">

            <label for="checkin">체크인</label>
            <input type="date" id="checkin" name="checkin" required min="2024-01-01" max="2025-12-31">

            <label for="checkout">체크아웃</label>
            <input type="date" id="checkout" name="checkout" required min="2024-01-01" max="2025-12-31">

            <label for="roomes">숙소</label>
            <select id="roomes" name="roomes" required>
                <option value="room1">디럭스 트리플룸</option>
                <option value="room2">디럭스 킹 트윈</option>
                <option value="room3">슈피리어 더블룸</option>
            </select>

            <div class="agreement-section">
                <label class="checkbox-label">
                    <input type="checkbox" id="terms" name="terms" required>
                    <span>예약에 동의합니다.</span>
                </label>
                <label class="checkbox-label">
                    <input type="checkbox" id="marketing" name="marketing" required>
                    <span>체크인 7일 이전부터 환불이 불가합니다.</span>
                </label>
            </div>

            <div class="button-container">
                <p>
                    <button type="button" class="btn btn-primary btn-lg confirm-btn" onclick="handleSubmit()">예</button>
                    <button type="button" class="btn btn-default btn-lg cancel-btn" onclick="location.href='${root}/hotels/Results1'">아니오</button>
                </p>
            </div>
        </form>
    </div>
</body>
</html>
