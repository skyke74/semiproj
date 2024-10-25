<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Room Reservation</title>
</head>
<body>
    <h2>Room Reservation Form</h2>
    <form action="reserve" method="post"> <!-- reserve로 변경 -->
        투숙객 이름: <input type="text" name="guest_name"><br>
        체크인 날짜: <input type="date" name="check_in"><br>
        체크아웃 날짜: <input type="date" name="check_out"><br>
        호텔 이름: <input type="text" name="hotel_name"><br>
        객실 정보: <input type="text" name="room_info"><br>
        가격: <input type="number" name="price"><br>
        <input type="submit" value="예약">
    </form>
</body>
</html>

