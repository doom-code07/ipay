package com.ipay.servlet;

import com.ipay.utils.DBConnect;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        try (Connection con = DBConnect.getConnection();
             PreparedStatement ps = con.prepareStatement("SELECT id, full_name, password FROM admins WHERE username = ?")) {
            ps.setString(1, username);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    String dbPass = rs.getString("password");
                    // For production: compare hashed passwords. For demo, direct compare:
                    if (dbPass.equals(password)) {
                        HttpSession session = req.getSession();
                        session.setAttribute("adminUsername", username);
                        session.setAttribute("adminFullName", rs.getString("full_name"));
                        resp.sendRedirect("applicants.jsp");
                        return;
                    }
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        resp.sendRedirect("error.jsp");
        req.getRequestDispatcher("signin.jsp").forward(req, resp);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("signin.jsp");
    }
}
