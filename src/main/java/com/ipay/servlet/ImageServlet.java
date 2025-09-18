package com.ipay.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;
import com.ipay.utils.DBConnect;

public class ImageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        boolean download = "true".equals(req.getParameter("download"));

        try (Connection con = DBConnect.getConnection();
             PreparedStatement ps = con.prepareStatement("SELECT image FROM applicants WHERE id=?")) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                byte[] imgBytes = rs.getBytes("image");
                if (imgBytes != null) {
                    if (download) {
                        resp.setContentType("application/octet-stream");
                        resp.setHeader("Content-Disposition", "attachment; filename=applicant_" + id + ".jpg");
                    } else {
                        resp.setContentType("image/jpeg");
                    }

                    try (OutputStream os = resp.getOutputStream()) {
                        os.write(imgBytes);
                        os.flush();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
