package com.zenblbug.ezen.vo;

public class ProductVO {

    private  int productId;
    private int projectId;
    private int packageId;
    private String productName;
    private String productStatus;
    private String productCategory;
    private int productSwitch;
    private int productQuantity;
    private String productExplain;


    public int getProductId() {
        return productId;
    }
    public void setProductId(int productId) {
        this.productId = productId;
    }


    public int getProjectId() {
        return projectId;
    }
    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }


    public String getProductName() {
        return productName;
    }
    public void setProductName(String productName) {
        this.productName = productName;
    }


    public String getProductStatus() {
        return productStatus;
    }
    public void setProductStatus(String productStatus) {
        this.productStatus = productStatus;
    }


    public String getProductCategory() {
        return productCategory;
    }
    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }


    public int getProductSwitch() {
        return productSwitch;
    }
    public void setProductSwitch(int productSwitch) {
        this.productSwitch = productSwitch;
    }


    public int getProductQuantity() {
        return productQuantity;
    }

    public void setProductQuantity(int productQuantity) {
        this.productQuantity = productQuantity;
    }

    public String getProductExplain() {
        return productExplain;
    }

    public void setProductExplain(String productExplain) {
        this.productExplain = productExplain;
    }

    public int getPackageId() {
        return packageId;
    }

    public void setPackageId(int packageId) {
        this.packageId = packageId;
    }
}
