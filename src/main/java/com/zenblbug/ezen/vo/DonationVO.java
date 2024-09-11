package com.zenblbug.ezen.vo;

public class DonationVO {
    private int backersId;
    private String userId;
    private int packageId;
    private int backersAmount;
    private String backersCreateDate;
    private int backersTotalPrice;
    private String backersStatus;
    private int projectId;

    public int getBackersId() {
        return backersId;
    }

    public void setBackersId(int backersId) {
        this.backersId = backersId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getPackageId() {
        return packageId;
    }

    public void setPackageId(int packageId) {
        this.packageId = packageId;
    }

    public int getBackersAmount() {
        return backersAmount;
    }

    public void setBackersAmount(int backersAmount) {
        this.backersAmount = backersAmount;
    }

    public String getBackersCreateDate() {
        return backersCreateDate;
    }

    public void setBackersCreateDate(String backersCreateDate) {
        this.backersCreateDate = backersCreateDate;
    }

    public int getBackersTotalPrice() {
        return backersTotalPrice;
    }

    public void setBackersTotalPrice(int backersTotalPrice) {
        this.backersTotalPrice = backersTotalPrice;
    }

    public String getBackersStatus() {
        return backersStatus;
    }

    public void setBackersStatus(String backersStatus) {
        this.backersStatus = backersStatus;
    }

    public int getProjectId() {
        return projectId;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }
}
