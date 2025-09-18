package com.ipay.model;

import java.sql.Timestamp;

public class Applicant {
    private int id;
    private String name;
    private String cnic;
    private String email;
    private String fatherName;
    private String fatherCnic;
    private int siblingsCount;
    private String className;
    private String fatherDesignation;
    private String gender;
    private byte[] image;
    private String imageName;
    private String city;
    private String permanentAddress;
    private String lastInstitute;
    private String lastQualification;
    private String cellNumber;
    private String accountNumber;
    private String whatsappNumber;
    private String marks;
    private Timestamp registeredAt;
    private boolean verified;

    // getters and setters for all fields


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCnic() {
        return cnic;
    }

    public void setCnic(String cnic) {
        this.cnic = cnic;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getFatherCnic() {
        return fatherCnic;
    }

    public void setFatherCnic(String fatherCnic) {
        this.fatherCnic = fatherCnic;
    }

    public int getSiblingsCount() {
        return siblingsCount;
    }

    public void setSiblingsCount(int siblingsCount) {
        this.siblingsCount = siblingsCount;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getFatherDesignation() {
        return fatherDesignation;
    }

    public void setFatherDesignation(String fatherDesignation) {
        this.fatherDesignation = fatherDesignation;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPermanentAddress() {
        return permanentAddress;
    }

    public void setPermanentAddress(String permanentAddress) {
        this.permanentAddress = permanentAddress;
    }

    public String getLastInstitute() {
        return lastInstitute;
    }

    public void setLastInstitute(String lastInstitute) {
        this.lastInstitute = lastInstitute;
    }

    public String getLastQualification() {
        return lastQualification;
    }

    public void setLastQualification(String lastQualification) {
        this.lastQualification = lastQualification;
    }

    public String getCellNumber() {
        return cellNumber;
    }

    public void setCellNumber(String cellNumber) {
        this.cellNumber = cellNumber;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public String getWhatsappNumber() {
        return whatsappNumber;
    }

    public void setWhatsappNumber(String whatsappNumber) {
        this.whatsappNumber = whatsappNumber;
    }

    public String getMarks() {
        return marks;
    }

    public void setMarks(String marks) {
        this.marks = marks;
    }

    public Timestamp getRegisteredAt() {
        return registeredAt;
    }

    public void setRegisteredAt(Timestamp registeredAt) {
        this.registeredAt = registeredAt;
    }

    public boolean isVerified() {
        return verified;
    }

    public void setVerified(boolean verified) {
        this.verified = verified;
    }
}
