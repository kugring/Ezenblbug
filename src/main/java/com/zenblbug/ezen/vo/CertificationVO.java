package com.zenblbug.ezen.vo;

public class CertificationVO {

    private String userId;
    private String email;
    private String certificationNumber;


    public String getUserId() {return userId;}

    public void setUserId(String userId) {
        this.userId = userId; // 설명
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCertificationNumber() {
        return certificationNumber;
    }

    public void setCertificationNumber(String certificationNumber) {
        this.certificationNumber = certificationNumber;
    }
    float add(float a, int b){return a+b;}
}
