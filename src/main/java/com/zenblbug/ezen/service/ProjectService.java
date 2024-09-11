package com.zenblbug.ezen.service;

import java.util.List;

import com.zenblbug.ezen.vo.*;

public interface ProjectService {

    ProjectVO getProjectDetails(ProjectVO vo);

    ProjectVO getProject(ProjectVO vo);

    List<ProjectVO> getAllProject();

    int hasPermission(ProjectVO vo);

    int saveInfo(ProjectVO vo);

    int saveFunding(ProjectVO vo);

    int saveGift(ProductVO vo);

    int savePackage(BackersPackageVO vo);

    int savePlan(ProjectPlanVO vo);

    int saveCreator(UserVO vo);

    int saveTrust(ProjectPlanVO vo);

    int saveDonation(DonationVO vo);

    int updateDonation(DonationVO vo);

    int deleteGift(ProductVO vo);

    int deletePackage(BackersPackageVO vo);


    UserVO getUserInfo(String userId);

    int putFavorite(LikesVO vo); // 좋아요
    int increaseViewCount(ProjectVO vo); // 조회수
    List<ProjectVO> mainGetViewProject(String userId); // 조회수 8개
    List<ProjectVO> mainGetFavoriteProject(); // 좋아요 8개
    int createProject(ProjectVO vo); // 새롭게 프로젝트를 생성함
    List<ProjectVO> progressProject(ProjectVO vo); // 작성중인 프로젝트 불러옴
    int sumTotalGoalAmount(int projectId);

}


