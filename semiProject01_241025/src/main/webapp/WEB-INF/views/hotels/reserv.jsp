<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약</title>
<%@include file="../css/resv_css.jspf" %>
<%@include file="../template/head.jspf" %>
<script>
    function validateForm() {
        const checkin = document.getElementById("checkin").value;
        const checkout = document.getElementById("checkout").value;
        const guests = document.getElementById("guests").value;
        const rooms = document.getElementById("rooms").value;
        const terms = document.getElementById("terms").checked;
        const marketing = document.getElementById("marketing").checked;

        // 각 필드가 비어 있는지 확인
        if (!guests || !checkin || !checkout || !rooms) {
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
          	$.post('${root}/addResv',$('form').serialize());
        }
    }
</script>
</head>
<body>
<%@include file="../template/menu.jspf" %>
    <div class="signup-container">
        <h2>예약하기</h2>
        <form action="${root}/addResv" method="post">
            <label for="checkin">체크인</label>
            <input type="date" id="checkin" name="checkin" required min="2024-01-01" max="2025-12-31" value="${checkin }">

            <label for="checkout">체크아웃</label>
            <input type="date" id="checkout" name="checkout" required min="2024-01-01" max="2025-12-31" value="${checkout }">

            <label for="guests">인원수</label>
            <input type="number" id="guests" name="guests" value="${guests }">

            <label for="rooms">숙소</label>
            <select id="rooms" name="rooms" required>
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
                    <button type="submit" class="btn btn-primary btn-lg confirm-btn">예</button>
                    <button type="button" class="btn btn-default btn-lg cancel-btn" onclick="history.back();">아니오</button>
                </p>
            </div>
        </form>
    </div>
    <script type="text/javascript">
    $('form').one('submit',e=>{
    	e.preventDefault();
    	handleSubmit();
    });
    </script>
</body>
</html>
