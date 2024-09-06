package com.zenblbug.ezen.vo;

import java.util.List;

public class BackersPackageVO {

    private int packageId;
    private int projectId;
    private String packageTitle;
    private String packagePrice;
    private int packageSwitch;
    private int maxProductAmount;
    private int personMaxAmount;
    private int price;
    private int remaining;
    private List<ProductVO> productVOList;



    public int getPackageId() {
        return packageId;
    }
    public void setPackageId(int packageId) {
        this.packageId = packageId;
    }


    public int getProjectId() {
        return projectId;
    }
    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }


    public String getPackageTitle() {
        return packageTitle;
    }
    public void setPackageTitle(String packageTitle) {
        this.packageTitle = packageTitle;
    }


    public String getPackagePrice() {
        return packagePrice;
    }
    public void setPackagePrice(String packagePrice) {
        this.packagePrice = packagePrice;
    }


    public int getPackageSwitch() {
        return packageSwitch;
    }
    public void setPackageSwitch(int packageSwitch) {
        this.packageSwitch = packageSwitch;
    }


    public int getMaxProductAmount() {
        return maxProductAmount;
    }
    public void setMaxProductAmount(int maxProductAmount) {
        this.maxProductAmount = maxProductAmount;
    }


    public int getPersonMaxAmount() {
        return personMaxAmount;
    }
    public void setPersonMaxAmount(int personMaxAmount) {
        this.personMaxAmount = personMaxAmount;
    }


    public int getPrice() {
        return price;
    }
    public void setPrice(int price) {
        this.price = price;
    }


    public List<ProductVO> getProductVOList() {
        return productVOList;
    }

    public void setProductVOList(List<ProductVO> productVOList) {
        this.productVOList = productVOList;
    }

    public int getRemaining() {
        return remaining;
    }

    public void setRemaining(int remaining) {
        this.remaining = remaining;
    }
}
