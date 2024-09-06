package com.zenblbug.ezen.service;

import java.util.List;

import com.zenblbug.ezen.vo.BackersPackageVO;
import com.zenblbug.ezen.vo.LikesVO;
import com.zenblbug.ezen.vo.ProductVO;
import com.zenblbug.ezen.vo.ProjectPlanVO;
import com.zenblbug.ezen.vo.ProjectVO;
import com.zenblbug.ezen.vo.SearchTagVO;
import com.zenblbug.ezen.vo.UserVO;

public interface ProjectService {

    ProjectVO getProjectDetails(ProjectVO vo);

    ProjectVO getProject(ProjectVO vo);

    int hasPermission(ProjectVO vo);

    int saveInfo(ProjectVO vo);

    int saveFunding(ProjectVO vo);









    int putFavorite(LikesVO vo); // 좋아요
    int increaseViewCount(ProjectVO vo); // 조회수
    List<ProjectVO> mainGetViewProject(); // 조회수 8개
    List<ProjectVO> mainGetFavoriteProject(); // 좋아요 8개
    int createProject(ProjectVO vo); // 새롭게 프로젝트를 생성함
    List<ProjectVO> progressProject(ProjectVO vo); // 작성중인 프로젝트 불러옴


}


