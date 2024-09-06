package com.zenblbug.ezen.vo;

public class SearchTagVO {
    private int searchTagId;
    private int projectId;
    private String tagWord;

    public int getSearchTagId() {
        return searchTagId;
    }

    public void setSearchTagId(int searchTagId) {
        this.searchTagId = searchTagId;
    }

    public int getProjectId() {
        return projectId;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }

    public String getTagWord() {
        return tagWord;
    }

    public void setTagWord(String tagWord) {
        this.tagWord = tagWord;
    }
}
