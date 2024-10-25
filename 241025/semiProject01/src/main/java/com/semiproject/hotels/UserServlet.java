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

@WebServlet("/user")
public class UserServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://192.168.54.89:3306/hotels?useUnicode=true&characterEncoding=UTF-8";
    private static final String DB_USER = "asdf";
    private static final String DB_PASSWORD = "1234";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        // 매개변수 가져오기
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String address = request.getParameter("address"); // 폼 이름과 일치하게 수정
        String birthday = request.getParameter("birth_date");

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // SQL 삽입문 작성
            String sql = "INSERT INTO users (name, email, password, address, birth_date) "
                       + "VALUES (?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, password);
            pstmt.setString(4, address);
            pstmt.setString(5, birthday); // 생년월일 형식 확인 필요

            int rowsInserted = pstmt.executeUpdate();
            response.setContentType("text/html; charset=UTF-8");
            if (rowsInserted > 0) {
                response.getWriter().println("등록 성공");
            } else {
                response.getWriter().println("등록 실패. 다시 시도해 주세요.");
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

