package com.ipay.servlet;

import com.ipay.dao.ApplicantDAO;
import com.ipay.model.Applicant;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.InputStream;

@MultipartConfig(maxFileSize = 5 * 1024 * 1024) // 5MB
public class SignupServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setCharacterEncoding("UTF-8");

            String name = req.getParameter("name");
            String cnic = req.getParameter("cnic");
            String email = req.getParameter("email");
            String fatherName = req.getParameter("fatherName");
            String fatherCnic = req.getParameter("fatherCnic");
            String siblingsCountStr = req.getParameter("siblingsCount");
            String className = req.getParameter("className");
            String fatherDesignation = req.getParameter("fatherDesignation");
            String gender = req.getParameter("gender");
            Part imagePart = req.getPart("image");
            String city = req.getParameter("city");
            String permanentAddress = req.getParameter("permanentAddress");
            String lastInstitute = req.getParameter("lastInstitute");
            String lastQualification = req.getParameter("lastQualification");
            String cellNumber = req.getParameter("cellNumber");
            String accountNumber = req.getParameter("accountNumber");
            String whatsappNumber = req.getParameter("whatsappNumber");
            String marks = req.getParameter("marks");

// Collect errors
            StringBuilder errors = new StringBuilder();

            if (name == null || name.trim().isEmpty()) errors.append("Name is required. ");
            if (cnic == null || cnic.trim().isEmpty()) errors.append("CNIC is required. ");
            if (email == null || email.trim().isEmpty()) errors.append("Email is required. ");
            if (fatherName == null || fatherName.trim().isEmpty()) errors.append("Father Name is required. ");
            if (fatherCnic == null || fatherCnic.trim().isEmpty()) errors.append("Father CNIC is required. ");
            if (className == null || className.trim().isEmpty()) errors.append("Class Name is required. ");
            if (cellNumber == null || cellNumber.trim().isEmpty()) errors.append("Cell Number is required. ");
            if (accountNumber == null || accountNumber.trim().isEmpty()) errors.append("Account Number is required. ");
            if (whatsappNumber == null || whatsappNumber.trim().isEmpty()) errors.append("WhatsApp Number is required. ");
            if (marks == null || marks.trim().isEmpty()) errors.append("Marks are required. ");

            if (imagePart == null || imagePart.getSize() == 0) {
                req.setAttribute("error", "Image is required. Please upload your photo.");
                req.getRequestDispatcher("signup.jsp").forward(req, resp);
                return;
            }
            // If any error, send back to JSP
            if (errors.length() > 0) {
                req.setAttribute("error", errors.toString());
                req.getRequestDispatcher("signup.jsp").forward(req, resp);
                return;
            }

            int siblingsCount = 0;
            try {
                siblingsCount = Integer.parseInt(siblingsCountStr);
            } catch (NumberFormatException e) {
                siblingsCount = 0;
            }

            byte[] imageBytes = null;
            String imageName = null;
            if (imagePart != null && imagePart.getSize() > 0) {
                imageName = imagePart.getSubmittedFileName();
                try (InputStream is = imagePart.getInputStream();
                     java.io.ByteArrayOutputStream baos = new java.io.ByteArrayOutputStream()) {
                    byte[] buffer = new byte[4096];
                    int bytesRead;
                    while ((bytesRead = is.read(buffer)) != -1) {
                        baos.write(buffer, 0, bytesRead);
                    }
                    imageBytes = baos.toByteArray();
                }
            }

            Applicant a = new Applicant();
            a.setName(name);
            a.setCnic(cnic);
            a.setEmail(email);
            a.setFatherName(fatherName);
            a.setFatherCnic(fatherCnic);
            a.setSiblingsCount(siblingsCount);
            a.setClassName(className);
            a.setFatherDesignation(fatherDesignation);
            a.setGender(gender);
            a.setImage(imageBytes);
            a.setImageName(imageName);
            a.setCity(city);
            a.setPermanentAddress(permanentAddress);
            a.setLastInstitute(lastInstitute);
            a.setLastQualification(lastQualification);
            a.setCellNumber(cellNumber);
            a.setAccountNumber(accountNumber);
            a.setWhatsappNumber(whatsappNumber);
            a.setMarks(marks);

            ApplicantDAO dao = new ApplicantDAO();
            boolean saved = dao.save(a);

            if (saved) {
                resp.sendRedirect("success.jsp");
            } else {
                resp.sendRedirect("error.jsp");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
            req.setAttribute("error", "Registration failed. Please try again.");
            req.getRequestDispatcher("signup.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("signup.jsp");
    }
}
