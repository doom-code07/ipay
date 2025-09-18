package com.ipay.servlet;

import com.ipay.dao.ApplicantDAO;
import com.ipay.model.Applicant;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;


public class ApplicantsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // check admin session
        HttpSession s = req.getSession(false);
        if (s == null || s.getAttribute("adminUsername") == null) {
            resp.sendRedirect(req.getContextPath() + "/signin.jsp");
            return;
        }

        ApplicantDAO dao = new ApplicantDAO();
        List<Applicant> list = dao.getAll();
        req.setAttribute("applicants", list);
        req.getRequestDispatcher("/applicants.jsp").forward(req, resp);
    }
}
