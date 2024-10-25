<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약정보</title>
<link rel="stylesheet" href="css/styles.css"> <!-- Link to your CSS -->
<%@include file="template/head.jspf"%>
<style>
    h1 {
        margin-top: 30px;
        margin-bottom: 50px;
    }

    table {
        font-size: 25px; /* 글자 크기 증가 */
    }

    th, td {
        padding: 30px; /* 셀 패딩 추가 */
        font-weight: normal;
       
    }

    /* 커스텀 모달 스타일 */
    .modal {
        display: none; 
        position: fixed; 
        z-index: 1; 
        left: 0;
        top: 0;
        width: 100%; 
        height: 100%; 
        background-color: rgba(0, 0, 0, 0.5); 
    }

    .modal-content {
        background-color: #fefefe;
        margin: 15% auto;
        padding: 20px;
        border: 1px solid #888;
        width: 30%;
        text-align: center;
    }

    .modal-content button {
        margin: 10px;
    }

</style>
</head>
<body>
<%@include file="template/menu2.jspf"%>
    <h1 style="text-align: center;">호텔 예약정보</h1>

    <div class="reservation-info" style="width: 80%; margin: 0 auto; text-align: center;">
        <table class="table table-bordered" style="width: 80%; margin: 0 auto;">
            <tr>
                <th style= "text-align: center;">이름</th>
                <td><%= request.getAttribute("Name") %></td>
            </tr>
            <tr>
                <th style= "text-align: center;">호텔명</th>
                <td><%= request.getAttribute("Hotel") %></td>
            </tr>
            <tr>
                <th style= "text-align: center;">객실</th>
                <td><%= request.getAttribute("room") %></td>
            </tr>
            <tr>
                <th style= "text-align: center;">체크인</th>
                <td><%= request.getAttribute("checkInDate") %></td>
            </tr>
            <tr>
                <th style= "text-align: center;">체크아웃</th>
                <td><%= request.getAttribute("checkOutDate") %></td>
            </tr>
            <tr>
                <th style= "text-align: center;">결제금액</th>
                <td><%= request.getAttribute("totalPrice") %></td>
            </tr>
        </table>
    </div>

    <div class="button-container" style="text-align: center; margin-top: 100px; margin-right: 30px;">
        <p>
            <button type="button" class="btn btn-primary btn-lg confirm-btn" onclick="window.location.href='${root}/mypage/';">확인</button>
            <button type="button" class="btn btn-default btn-lg cancel-btn" onclick="openModal()">취소</button>
        </p>
    </div>

    <!-- 커스텀 모달 대화상자 -->
    <div id="cancelModal" class="modal">
        <div class="modal-content">
            <p>예약을 취소하시겠습니까?</p>
            <button type="button" class="btn btn-primary" onclick="confirmCancel()">예</button>
            <button type="button" class="btn btn-secondary" onclick="closeModal()">아니오</button>
        </div>
    </div>

    <script>
    // 모달 열기
    function openModal() {
        document.getElementById("cancelModal").style.display = "block";
    }

    // 모달 닫기
    function closeModal() {
        document.getElementById("cancelModal").style.display = "none";
    }

    // 예약 취소 확인
    function confirmCancel() {
        alert("예약이 취소되었습니다.");
        closeModal();
        // 여기에서 서버에 취소 요청을 보낼 수 있습니다.
    }

    // 모달 외부를 클릭하면 모달 닫기
    window.onclick = function(event) {
        var modal = document.getElementById("cancelModal");
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
    </script>

</body>
</html>
