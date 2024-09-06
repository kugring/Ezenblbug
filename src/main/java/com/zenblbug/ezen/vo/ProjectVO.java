package com.zenblbug.ezen.vo;


import javax.xml.datatype.Duration;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ProjectVO {

    private int projectId;
    private String userId;
    private String projectTitle;
    private String projectShortTitle;
    private String projectSummary;
    private String category;
    private String categoryDetail;
    private String timeline;
    private String startTimeline;
    private String projectThumbnail;

    private String goalBudget;
    private String projectStatus;
    private int benCount;
    private int projectSwitch;
    private int viewCount;
    private int favoriteCount;
    private int deliveryNum;
    private String account;
    private UserVO userVO;
    private int totalDonation;
    private List<BackersPackageVO> backersPackageVOList;
    private List<SearchTagVO> searchTagVOList;
    private List<ProductVO> productVOList;
    private List<ThumbnailVO> thumbnailVOList;

    private ProjectPlanVO projectPlanVO;


    public String getStartTimelineYYYY(){
        return this.startTimeline.split(" ")[0];
    }

    public String getTimelineYYYY(){
        return this.timeline.split(" ")[0];
    }



    public int getGoalBudgetNum() {
        return Integer.parseInt(this.goalBudget);
    }

    public long getDaysDifference() {
        // 날짜 형식 정의 (예: "yyyy-MM-dd HH:mm:ss")
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        try {
            // String을 Date로 변환
            Date timelineDate = formatter.parse(timeline);
            Date startTimelineDate = formatter.parse(startTimeline);

            // 두 날짜 간의 차이를 계산 (밀리초 단위로 계산 후 일 단위로 변환)
            long diffInMillies = timelineDate.getTime() - startTimelineDate.getTime();
            return diffInMillies / (1000 * 60 * 60 * 24);  // 밀리초를 일로 변환
        } catch (ParseException e) {
            e.printStackTrace();
            return 0; // 예외 발생 시 기본값 반환
        }
    }



    public String getStartTimelineDate(){
        return this.startTimeline.split(" ")[0].replace("-", "/").substring(2);
    }
    public String getTimelineDate(){
        return this.timeline.split(" ")[0].replace("-", "/").substring(2);
    }

    public UserVO getUserVO() {
        return userVO;
    }

    public void setUserVO(UserVO userVO) {
        this.userVO = userVO;
    }

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

    public List<ThumbnailVO> getThumbnailVOList() {
        return thumbnailVOList;
    }

    public void setThumbnailVOList(List<ThumbnailVO> thumbnailVOList) {
        this.thumbnailVOList = thumbnailVOList;
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

    public ProjectPlanVO getProjectPlanVO() {
        return projectPlanVO;
    }

    public void setProjectPlanVO(ProjectPlanVO projectPlanVO) {
        this.projectPlanVO = projectPlanVO;
    }

    public List<BackersPackageVO> getBackersPackageVOList() {
        return backersPackageVOList;
    }

    public void setBackersPackageVOList(List<BackersPackageVO> backersPackageVOList) {
        this.backersPackageVOList = backersPackageVOList;
    }

    public List<SearchTagVO> getSearchTagVOList() {
        return searchTagVOList;
    }

    public void setSearchTagVOList(List<SearchTagVO> searchTagVOList) {
        this.searchTagVOList = searchTagVOList;
    }

    public List<ProductVO> getProductVOList() {
        return productVOList;
    }

    public void setProductVOList(List<ProductVO> productVOList) {
        this.productVOList = productVOList;
    }

    public String getProjectThumbnail() {
        return projectThumbnail;
    }

    public void setProjectThumbnail(String projectThumbnail) {
        this.projectThumbnail = projectThumbnail;
    }

    public int getTotalDonation() {
        return totalDonation;
    }

    public void setTotalDonation(int totalDonation) {
        this.totalDonation = totalDonation;
    }
}
