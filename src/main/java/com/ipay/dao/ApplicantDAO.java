package com.ipay.dao;

import com.ipay.model.Applicant;
import com.ipay.utils.DBConnect;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ApplicantDAO {

    public boolean save(Applicant a) {
        String sql = "INSERT INTO applicants (name, cnic, email, father_name, father_cnic, siblings_count, class_name, father_designation, gender, image, image_name, city, permanent_address, last_institute, last_qualification, cell_number, account_number, whatsapp_number, marks) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try (Connection con = DBConnect.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, a.getName());
            ps.setString(2, a.getCnic());
            ps.setString(3, a.getEmail());
            ps.setString(4, a.getFatherName());
            ps.setString(5, a.getFatherCnic());
            ps.setInt(6, a.getSiblingsCount());
            ps.setString(7, a.getClassName());
            ps.setString(8, a.getFatherDesignation());
            ps.setString(9, a.getGender());
            ps.setBytes(10, a.getImage());
            ps.setString(11, a.getImageName());
            ps.setString(12, a.getCity());
            ps.setString(13, a.getPermanentAddress());
            ps.setString(14, a.getLastInstitute());
            ps.setString(15, a.getLastQualification());
            ps.setString(16, a.getCellNumber());
            ps.setString(17, a.getAccountNumber());
            ps.setString(18, a.getWhatsappNumber());
            ps.setString(19, a.getMarks());
            int rows = ps.executeUpdate();
            return rows > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public List<Applicant> getAll() {
        List<Applicant> list = new ArrayList<>();
        String sql = "SELECT * FROM applicants";  // fetch all columns
        try (Connection con = DBConnect.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Applicant a = new Applicant();
                a.setId(rs.getInt("id"));
                a.setName(rs.getString("name"));
                a.setCnic(rs.getString("cnic"));
                a.setEmail(rs.getString("email"));
                a.setFatherName(rs.getString("father_name"));
                a.setFatherCnic(rs.getString("father_cnic"));
                a.setSiblingsCount(rs.getInt("siblings_count"));
                a.setClassName(rs.getString("class_name"));
                a.setFatherDesignation(rs.getString("father_designation"));
                a.setGender(rs.getString("gender"));
                a.setImage(rs.getBytes("image"));
                a.setImageName(rs.getString("image_name"));
                a.setCity(rs.getString("city"));
                a.setPermanentAddress(rs.getString("permanent_address"));
                a.setLastInstitute(rs.getString("last_institute"));
                a.setLastQualification(rs.getString("last_qualification"));
                a.setCellNumber(rs.getString("cell_number"));
                a.setAccountNumber(rs.getString("account_number"));
                a.setWhatsappNumber(rs.getString("whatsapp_number"));
                a.setMarks(rs.getString("marks"));
                a.setRegisteredAt(rs.getTimestamp("registered_at"));
                a.setVerified(rs.getBoolean("verified"));

                list.add(a);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }



    // optional: get applicant by id, update verified flag, etc.
}
