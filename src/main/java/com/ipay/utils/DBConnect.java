package com.ipay.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    private static final String URL = "jdbc:mysql://ballast.proxy.rlwy.net:17128/railway";
    private static final String USER = "root";
    private static final String PASS = "HbHaVcpTpIbbOsbCQgATNHCMuXGbVXCd";

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASS);
    }
}
