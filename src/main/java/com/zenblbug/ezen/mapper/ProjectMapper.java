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
    @Select("SELECT * FROM project LIMIT 15")
    List<ProjectVO> getAll();

    @Select("select count(*) from project WHERE project_id = #{projectId} AND user_id = #{userId}")
    int findByProjectIdANDUserId(ProjectVO vo);

    @Update("UPDATE project SET project_title = #{projectTitle}, project_short_title = #{projectShortTitle}, " +
            "project_summary = #{projectSummary}, category = #{category}, category_detail = #{categoryDetail} " +
            "WHERE project_id = #{projectId}")
    int saveInfo(ProjectVO vo);

    @Update("UPDATE project SET goal_budget = #{goalBudget}, timeline = #{timeline}, start_timeline = #{startTimeline} " +
            "WHERE project_id = #{projectId}")
    int saveFunding(ProjectVO vo);

    @Update("UPDATE project SET account = #{account} " +
            "WHERE project_id = #{projectId}")
    int saveCreator(ProjectVO vo);
























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

    @Select("SELECT p.project_id, p.project_title, p.goal_budget, p.project_thumbnail, p.view_count, u.nickname  FROM User u right join Project p ON u.user_id = p.user_id ORDER BY p.view_count DESC limit 8;")
    @Results({
            @Result(property = "projectId", column = "project_id"),
            @Result(property = "projectTitle", column = "project_title"),
            @Result(property = "goalBudget", column = "goal_budget"),
            @Result(property = "projectThumbnail", column = "project_thumbnail"),
            @Result(property = "userVO.nickname", column = "nickname")
    })
    List<ProjectVO> mainGetViewProject();

    @Select("SELECT p.project_id, p.project_title, p.goal_budget, p.project_thumbnail, p.favorite_count, u.nickname, u.user_id, p.project_summary FROM User u RIGHT JOIN Project p ON u.user_id = p.user_id ORDER BY p.favorite_count DESC LIMIT 8;")
    @Results({
            @Result(property = "projectId", column = "project_id"),
            @Result(property = "projectTitle", column = "project_title"),
            @Result(property = "projectThumbnail", column = "project_thumbnail"),
            @Result(property = "goalBudget", column = "goal_budget"),
            @Result(property = "favoriteCount", column = "favorite_count"),
            @Result(property = "userVO.nickname", column = "nickname"),
            @Result(property = "projectSummary", column = "project_summary"),
            @Result(property = "userId", column = "user_id")
    })
    List<ProjectVO> mainGetFavoriteProject();
}
