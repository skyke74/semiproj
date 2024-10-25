package com.semiproject.hotels;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Test1 {
    private static final String DB_URL = "jdbc:mysql://192.168.54.89:3306/hotels";
    private static final String DB_USER = "asdf";
    private static final String DB_PASSWORD = "1234";

    public static void main(String[] args) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            String sql = "SELECT * FROM room_reservation ORDER BY check_in ASC";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String guestName = rs.getString("guest_name");
                Date checkIn = rs.getDate("check_in");
                Date checkOut = rs.getDate("check_out");
                String hotelName = rs.getString("hotel_name");
                String roomInfo = rs.getString("room_info");
                int price = rs.getInt("price");

                System.out.printf("ID: %d, 투숙객 이름: %s, 체크인: %s, 체크아웃: %s, 호텔 이름: %s, 객실 정보: %s, 가격: %d%n",
                        id, guestName, checkIn, checkOut, hotelName, roomInfo, price);
            }

        } catch (ClassNotFoundException e) {
            System.out.println("JDBC 드라이버를 찾을 수 없습니다: " + e.getMessage());
        } catch (SQLException e) {
            System.out.println("데이터베이스 연결 또는 쿼리 실행 중 오류 발생: " + e.getMessage());
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                System.out.println("연결을 닫는 중 오류 발생: " + e.getMessage());
            }
        }
    }
}
