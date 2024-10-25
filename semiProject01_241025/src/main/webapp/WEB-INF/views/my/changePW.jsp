<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<%@include file="../template/head.jspf" %>
<%@include file="../css/changePW_css.jspf" %>

<script>

    function handleChange() {
        const realPassword = '${sessionScope.pw }';
        const currentPassword = document.getElementById("password").value;
        const newPassword = document.getElementById("new_password").value;
        const confirmPassword = document.getElementById("check_password").value;

        // 모든 필드가 비어있는지 확인
        if (!currentPassword || !newPassword || !confirmPassword) {
            alert("모든 정보를 작성하세요.");
            return false;
        }

        // 현재 비밀번호와 변경할 비밀번호가 동일한지 확인
        if (realPassword != currentPassword) {
            alert("현재 비밀번호가 정확하지 않습니다.");
            return false;
        }
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
        
        // 유효성 검사를 통과하면 로그인 페이지로 이동
       	var param=$('form').serialize();
		$.post('./set',param);
        
    }
</script>
    
</head>
<body>
<%@include file="../template/menu.jspf" %>
    <div class="signup-container">
        <h2>비밀번호 변경</h2>
        <form action="../mypage">
            <label for="password">현재 비밀번호</label>
            <input type="password" id="password" name="password" required>

            <label for="change-password">변경할 비밀번호</label>
            <input type="password" id="new_password" name="new_password" required>

            <label for="check-password">비밀번호 확인</label>
            <input type="password" id="check_password" name="check_password" required>

           <div class="button-container">
                <p>
                 <button type="submit" class="btn btn-primary btn-lg confirm-btn">확인</button>
                 <button type="button" class="btn btn-default btn-lg cancel-btn">취소</button>
                </p>
            </div>
        </form>
    </div>
<script type="text/javascript">
$('form').one('submit',e=>{
	e.preventDefault();
	handleChange();
});
</script>
</body>
</html>
