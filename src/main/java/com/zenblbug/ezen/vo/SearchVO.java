package com.zenblbug.ezen.vo;

public class SearchVO {
    private int searchId;
    private String searchWord;
    private String relationWord;
    private int relationCheck;

    public int getSearchId() {
        return searchId;
    }

    public void setSearchId(int searchId) {
        this.searchId = searchId;
    }

    public String getSearchWord() {
        return searchWord;
    }

    public void setSearchWord(String searchWord) {
        this.searchWord = searchWord;
    }



    public int getRelationCheck() {
        return relationCheck;
    }

    public void setRelationCheck(int relationCheck) {
        this.relationCheck = relationCheck;
    }

    public String getRelationWord() {
        return relationWord;
    }

    public void setRelationWord(String relationWord) {
        this.relationWord = relationWord;
    }
}
