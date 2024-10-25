<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User</title>
</head>
<body>
    <h2>User Form</h2>
    <form action="user" method="post"> <!-- 서블릿 경로와 일치해야 함 -->
        이름: <input type="text" name="name"><br>    
        이메일: <input type="email" name="email"><br>  
        비밀번호: <input type="password" name="password"><br>       
        주소: <input type="text" name="address"><br> <!-- 매개변수 이름 일치 -->
        생년월일: <input type="date" name="birth_date"><br>    
        <input type="submit" value="등록">
    </form>
</body>
</html>
