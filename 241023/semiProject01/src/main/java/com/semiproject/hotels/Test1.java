package com.semiproject.hotels;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Test1 {
    public static void main(String[] args) {
        // H2 JDBC URL
        String jdbcUrl = "jdbc:mysql://<192.168.54.89>:3306/<HOTELS>"; // 파일 모드
        String username = "qwer";
        String password = "1234";

        // 데이터베이스 연결
        try (Connection connection = DriverManager.getConnection(jdbcUrl, username, password)) {
            System.out.println("H2 데이터베이스에 연결 성공!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

