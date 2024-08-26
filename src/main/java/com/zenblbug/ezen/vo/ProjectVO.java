package com.zenblbug.ezen.vo;

public class ProjectVO {

    private int projectId;
    private String userId;
    private String projectTitle;
    private String projectShortTitle;
    private String projectSummary;
    private String category;
    private String categoryDetail;
    private String startTimeline;
    private String projectThumbnail;


    private String goalBudget;
    private String timeline;
    private String projectStatus;
    private int benCount;
    private int projectSwitch;
    private int viewCount;
    private int favoriteCount;
    private int deliveryNum;
    private String account;

    public int getProjectId() {
        return projectId;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getProjectTitle() {
        return projectTitle;
    }

    public void setProjectTitle(String projectTitle) {
        this.projectTitle = projectTitle;
    }

    public String getGoalBudget() {
        return goalBudget;
    }

    public void setGoalBudget(String goalBudget) {
        this.goalBudget = goalBudget;
    }

    public String getTimeline() {
        return timeline;
    }

    public void setTimeline(String timeline) {
        this.timeline = timeline;
    }

    public String getProjectStatus() {
        return projectStatus;
    }

    public void setProjectStatus(String projectStatus) {
        this.projectStatus = projectStatus;
    }

    public int getBenCount() {
        return benCount;
    }

    public void setBenCount(int benCount) {
        this.benCount = benCount;
    }

    public int getProjectSwitch() {
        return projectSwitch;
    }

    public void setProjectSwitch(int projectSwitch) {
        this.projectSwitch = projectSwitch;
    }

    public int getViewCount() {
        return viewCount;
    }

    public void setViewCount(int viewCount) {
        this.viewCount = viewCount;
    }

    public int getFavoriteCount() {
        return favoriteCount;
    }

    public void setFavoriteCount(int favoriteCount) {
        this.favoriteCount = favoriteCount;
    }

    public String getProjectShortTitle() {
        return projectShortTitle;
    }

    public void setProjectShortTitle(String projectShortTitle) {
        this.projectShortTitle = projectShortTitle;
    }

    public String getProjectSummary() {
        return projectSummary;
    }

    public void setProjectSummary(String projectSummary) {
        this.projectSummary = projectSummary;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getCategoryDetail() {
        return categoryDetail;
    }

    public void setCategoryDetail(String categoryDetail) {
        this.categoryDetail = categoryDetail;
    }

    public String getStartTimeline() {
        return startTimeline;
    }

    public void setStartTimeline(String startTimeline) {
        this.startTimeline = startTimeline;
    }

    public String getProjectThumbnail() {
        return projectThumbnail;
    }

    public void setProjectThumbnail(String projectThumbnail) {
        this.projectThumbnail = projectThumbnail;
    }

    public int getDeliveryNum() {
        return deliveryNum;
    }

    public void setDeliveryNum(int deliveryNum) {
        this.deliveryNum = deliveryNum;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }
}
