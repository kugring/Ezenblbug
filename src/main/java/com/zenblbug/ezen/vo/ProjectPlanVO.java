package com.zenblbug.ezen.vo;

public class ProjectPlanVO {

    private int projectPlanId;
    private int projectId;
    private String projectIntroduction;
    private String projectBudget;
    private String projectSchedule;
    private String teamIntroduction;
    private String projectGiftExplain;
    private String projectExchangePolicy;

    public String getProjectIntroduction() {
        return projectIntroduction;
    }
    public void setProjectIntroduction(String projectIntroduction) {
        this.projectIntroduction = projectIntroduction;
    }
    public String getTeamIntroduction() {
        return teamIntroduction;
    }
    public void setTeamIntroduction(String teamIntroduction) {
        this.teamIntroduction = teamIntroduction;
    }
    public int getProjectPlanId() {
        return projectPlanId;
    }
    public void setProjectPlanId(int projectPlanId) {
        this.projectPlanId = projectPlanId;
    }
    public int getProjectId() {
        return projectId;
    }
    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }
    public String getProjectBudget() {
        return projectBudget;
    }
    public void setProjectBudget(String projectBudget) {
        this.projectBudget = projectBudget;
    }
    public String getProjectSchedule() {
        return projectSchedule;
    }
    public void setProjectSchedule(String projectSchedule) {
        this.projectSchedule = projectSchedule;
    }
    public String getProjectGiftExplain() {
        return projectGiftExplain;
    }
    public void setProjectGiftExplain(String projectGiftExplain) {
        this.projectGiftExplain = projectGiftExplain;
    }
    public String getProjectExchangePolicy() {
        return projectExchangePolicy;
    }
    public void setProjectExchangePolicy(String projectExchangePolicy) {
        this.projectExchangePolicy = projectExchangePolicy;
    }


}
