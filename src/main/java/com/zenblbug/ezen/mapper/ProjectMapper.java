package com.zenblbug.ezen.mapper;

import com.zenblbug.ezen.vo.BackersPackageVO;
import com.zenblbug.ezen.vo.ProductVO;
import com.zenblbug.ezen.vo.ProjectPlanVO;
import com.zenblbug.ezen.vo.ProjectVO;
import com.zenblbug.ezen.vo.SearchTagVO;
import com.zenblbug.ezen.vo.SearchVO;
import com.zenblbug.ezen.vo.UserVO;

import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ProjectMapper {

    @Results({
            @Result(property = "projectId", column = "project_id"),
            @Result(property = "userId", column = "user_id"),
            @Result(property = "projectTitle", column = "project_title"),
            @Result(property = "projectShortTitle", column = "project_short_title"),
            @Result(property = "projectSummary", column = "project_summary"),
            @Result(property = "projectStatus", column = "project_status"),
            @Result(property = "category", column = "category"),
            @Result(property = "categoryDetail", column = "category_detail"),
            @Result(property = "goalBudget", column = "goal_budget"),
            @Result(property = "startTimeline", column = "start_timeline"),
            @Result(property = "timeline", column = "timeline"),
            @Result(property = "viewCount", column = "view_count"),
            @Result(property = "favoriteCount", column = "favorite_count"),
            @Result(property = "projectThumbnail", column = "project_thumbnail"),
            @Result(property = "benCount", column = "ben_count"),
            @Result(property = "projectSwitch", column = "project_switch"),
            @Result(property = "deliveryNum", column = "delivery_num"),
            @Result(property = "account", column = "account")
    })
    @Select("select * from project where project_id = #{projectId}")
    ProjectVO findByProjectId(ProjectVO vo);

    @Select("select count(*) from project WHERE project_id = #{projectId} AND user_id = #{userId}")
    int findByProjectIdANDUserId(ProjectVO vo);

    @Update("UPDATE project SET project_title = #{projectTitle}, project_short_title = #{projectShortTitle}, " +
            "project_summary = #{projectSummary}, category = #{category}, category_detail = #{categoryDetail} " +
            "WHERE project_id = #{projectId}")
    int saveInfo(ProjectVO vo);

    @Update("UPDATE project SET goal_budget = #{goalBudget}, timeline = #{timeline}, start_timeline = #{startTimeline}" +
            "WHERE project_id = #{projectId}")
    int saveFunding(ProjectVO vo);










    //카테고리 저장
    @Update("UPDATE project SET category = #{category}, category_detail = #{categoryDetail} WHERE project_id = #{projectId}")
    int saveCategory(ProjectVO vo);

    //긴제목 짧은 제목 저장
    @Update("UPDATE project SET project_title = #{projectTitle}, project_shrot_title= #{projectShortTitle} WHERE project_id = #{projectId}")
    int saveTitle(ProjectVO vo);

    //썸네일 저장
    @Update("UPDATE project SET project_thumbnail = #{projectThumbnail} WHERE project_id = #{projectId}")
    int saveThumbnail(ProjectVO vo);

    //검색 태그 입력 데이터 생성
    @Insert("INSERT INTO search_tag(project_id, tag_word)values(#{projectId}, #{tagWord})")
    int createSearchTag(SearchTagVO vo);

    //펀딩 계획 - 목표 금액 저장
    @Update("UPDATE project SET goal_budget = #{goalBudget} WHERE project_id = #{projectId}")
    int saveGoalBudget(ProjectVO vo);


    //펀딩 계획 - 시작일 종료일
    @Update("UPDATE project SET start_timeline = #{startTimeline},timeline = #{timeline} WHERE project_id = #{projectId}")
    int saveTimeline(ProjectVO vo);


    //선물 구성 - 아이템 생성
    @Insert("INSERT INTO product(project_id, product_name)values(#{projectId}, #{productName})")
    int createProductName(ProductVO vo);

    //선물 구성 - 선물생성 , 선물 이름
    @Insert("INSERT INTO backers_package(project_id, package_title)values(#{projectId}, #{packageTitle})")
    int createPackageTitle(BackersPackageVO vo);

    //선물 구성 - 선물 저장 , 수량제한
    @Update("UPDATE backers_package SET max_product_amount = #{maxProductAmount} WHERE project_id = #{projectId}")
    int saveMaxProductAmount(BackersPackageVO vo);

    //선물 구성 - 선물 저장 , 개인수량제한
    @Update("UPDATE backers_package SET person_max_amount = #{personMaxAmount} WHERE project_id = #{projectId}")
    int savePersonMaxAmount(BackersPackageVO vo);


    //선물 구성 - 예상 전달 일 수
    @Update("UPDATE project SET delivery_num = #{deliveryNum} WHERE project_id = #{projectId}")
    int saveDeliveryNum(ProjectVO vo);


    //선물 구성 - 선물 저장 , 선물 가격
    @Update("UPDATE backers_package SET price = #{price} WHERE project_id = #{projectId}")
    int savePrice(BackersPackageVO vo);


    //프로젝트 계획 - 계획 생성, 프로젝트 소개
    @Insert("INSERT INTO project_plan(project_id, project_introduce)values(#{projectId}, #{projectIntroduce})")
    int createProjectIntroduce(ProjectPlanVO vo);








    @Select("SELECT DISTINCT pro.project_id, pro.project_title, u.nickname, u.profile_image, p.product_name, b.package_title, pl.project_introduce "
            + "FROM project pro "
            + "LEFT JOIN user u ON pro.user_id = u.user_id "
            + "LEFT JOIN product p ON pro.project_id = p.project_id "
            + "LEFT JOIN backers_package b ON pro.project_id = b.project_id "
            + "LEFT JOIN project_plan pl ON pl.project_id = pro.project_id "
            + "WHERE pro.project_id = #{projectId};")
    @Results({
            @Result(property = "projectId", column = "project_id"),
            @Result(property = "userVO.nickname", column = "nickName"),
            @Result(property = "userVO.profileImage", column = "profile_image"),
            @Result(property = "userVO.selfIntro", column = "self_intro"),
            @Result(property = "projectTitle", column = "project_title"),
            @Result(property = "category", column = "category"),
            @Result(property = "goalBudget", column = "goal_budget"),
            @Result(property = "startTimeline", column = "start_timeline"),
            @Result(property = "timeline", column = "timeline"),
            @Result(property = "favoriteCount", column = "favorite_count"),
            @Result(property = "projectThumbnail", column = "project_thumbnail"),
            @Result(property = "projectPlanVO.projectIntroduce", column = "project_introduce"),
            @Result(property = "projectPlanVO.projectBudget", column = "project_budget"),
            @Result(property = "projectPlanVO.projectSchedule", column = "project_schedule"),
            @Result(property = "projectPlanVO.teamIntroduction", column = "team_introduction"),
            @Result(property = "projectPlanVO.projectGiftExplain", column = "project_gift_explain"),
            @Result(property = "projectPlanVO.projectExchangePolicy", column = "project_exchange_policy"),
            @Result(property = "productVo.productName", column = "product_name"),
            @Result(property = "backersPackageVo.packageTitle", column = "package_title"),
            @Result(property = "backersPackageVo.packagePrice", column = "package_price"),
            @Result(property = "backersPackageVo.maxProductAmount", column = "max_product_amount")
    })
    ProjectVO getDetailByProjectId(ProjectVO projectVo);






















    // 심사 이전의 본인 프로젝트 생성 찾아오는 코드
    @Results({
            @Result(property = "projectId", column = "project_id"),
            @Result(property = "projectTitle", column = "project_title"),
            @Result(property = "projectThumbnail", column = "project_thumbnail"),
            @Result(property = "projectSummary", column = "project_summary")
    })
    @Select("SELECT * FROM project WHERE user_id = #{userId} AND project_status = '심사전'")
    List<ProjectVO> findByUserIdANDStatus(ProjectVO vo);
    //프로젝트 요약 설명및 데이터 생성
    @Options(useGeneratedKeys = true, keyProperty = "projectId")
    @Insert("INSERT INTO project(user_id, category, project_summary) VALUES (#{userId}, #{category}, #{projectSummary})")
    int createProject(ProjectVO vo);
    // 키워드로 검색
    @Results({
            @Result(property = "projectId", column = "project_id"),
            @Result(property = "projectTitle", column = "project_title"),
            @Result(property = "projectThumbnail", column = "project_thumbnail"),
            @Result(property = "projectSummary", column = "project_summary")
    })
    @Select("SELECT * FROM project WHERE project_title LIKE CONCAT('%', #{searchWord}, '%') OR project_summary LIKE CONCAT('%', #{searchWord}, '%')")
    List<ProjectVO> findByTitleContaining(SearchVO vo);
    // 조회수 올리는 코드
    @Update("UPDATE project SET view_count = view_count + 1 WHERE project_id = #{projectId}")
    int increaseViewCount(ProjectVO vo);
    // 좋아요 누르기
    @Update("UPDATE project SET favorite_count = favorite_count + 1 WHERE project_id = #{projectId}")
    void increaseFavoriteCount(ProjectVO vo);
    // 좋아요 취소
    @Update("UPDATE project SET favorite_count = favorite_count - 1 WHERE project_id = #{projectId}")
    void decreaseFavoriteCount(ProjectVO vo);
    //main 주목할 만한 프로젝트 (조회수 많은거 부터 8개) 조회

    @Select("SELECT p.project_id, p.project_title, p.project_thumbnail, p.view_count, u.nickname  FROM User u right join Project p ON u.user_id = p.user_id ORDER BY p.view_count DESC limit 8;")
    @Results({
            @Result(property = "projectId", column = "project_id"),
            @Result(property = "projectTitle", column = "project_title"),
            @Result(property = "projectThumbnail", column = "project_thumbnail"),
            @Result(property = "userVO.nickname", column = "nickname")
    })
    List<ProjectVO> mainGetViewProject();

    //main 주목할 만한 프로젝트 (조회수 많은거 부터 8개) 조회
    @Select("SELECT p.project_id, p.project_title, p.project_thumbnail, p.favorite_count, u.nickname  FROM User u right join Project p ON u.user_id = p.user_id ORDER BY p.favorite_count DESC limit 8;")
    @Results({
            @Result(property = "projectId", column = "project_id"),
            @Result(property = "projectTitle", column = "project_title"),
            @Result(property = "projectThumbnail", column = "project_thumbnail"),
            @Result(property = "favoriteCount", column = "favorite_count"),
            @Result(property = "userVO.nickname", column = "nickname")
    })
    List<ProjectVO> mainGetFavoriteProject();
}
