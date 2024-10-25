package com.semiproject.hotels;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/reserve")  // JSP 폼 action과 동일한 경로로 설정
public class ReserveServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://192.168.54.89:3306/hotels?useUnicode=true&characterEncoding=UTF-8";
    private static final String DB_USER = "asdf";
    private static final String DB_PASSWORD = "1234";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // JSP 폼에서 전송된 데이터 수신
        request.setCharacterEncoding("UTF-8"); // 요청 데이터 인코딩 설정
        String guestName = request.getParameter("guest_name");
        String checkIn = request.getParameter("check_in");
        String checkOut = request.getParameter("check_out");
        String hotelName = request.getParameter("hotel_name");
        String roomInfo = request.getParameter("room_info");
        int price = Integer.parseInt(request.getParameter("price"));

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // JDBC 드라이버 로드
            Class.forName("com.mysql.cj.jdbc.Driver");
            // DB 연결
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // SQL 삽입 쿼리 작성
            String sql = "INSERT INTO room_reservation (guest_name, check_in, check_out, hotel_name, room_info, price) "
                       + "VALUES (?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, guestName);     // 투숙객 이름
            pstmt.setString(2, checkIn);       // 체크인 날짜
            pstmt.setString(3, checkOut);      // 체크아웃 날짜
            pstmt.setString(4, hotelName);     // 호텔 이름
            pstmt.setString(5, roomInfo);      // 객실 정보
            pstmt.setInt(6, price);            // 가격

            // 데이터베이스에 삽입
            int rowsInserted = pstmt.executeUpdate();
            if (rowsInserted > 0) {
                response.setContentType("text/html; charset=UTF-8");
                response.getWriter().println("예약이 성공적으로 완료되었습니다.");
            } else {
                response.setContentType("text/html; charset=UTF-8");
                response.getWriter().println("예약 실패. 다시 시도해 주세요.");
            }

        } catch (ClassNotFoundException e) {
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("JDBC 드라이버를 찾을 수 없습니다: " + e.getMessage());
        } catch (SQLException e) {
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("데이터베이스 연결 또는 쿼리 실행 중 오류 발생: " + e.getMessage());
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                response.getWriter().println("연결을 닫는 중 오류 발생: " + e.getMessage());
            }
        }
    }
}


