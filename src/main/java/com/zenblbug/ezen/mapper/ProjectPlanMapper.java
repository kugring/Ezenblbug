package com.zenblbug.ezen.mapper;

import com.zenblbug.ezen.vo.ProjectPlanVO;
import com.zenblbug.ezen.vo.ProjectVO;
import org.apache.ibatis.annotations.*;

public interface ProjectPlanMapper {

    @Select("SELECT count(*) FROM project_plan WHERE project_id = #{projectId}")
    int existsProjectPlan(ProjectPlanVO vo);

    @Insert("INSERT INTO project_plan(project_id)values(#{projectId})")
    int createPlan(ProjectPlanVO vo);

    @Results({
            @Result(property = "projectPlanId", column = "project_plan_id"),
            @Result(property = "projectId", column = "project_id"),
            @Result(property = "projectIntroduction", column = "project_introduction"),
            @Result(property = "projectBudget", column = "project_budget"),
            @Result(property = "projectSchedule", column = "project_schedule"),
            @Result(property = "teamIntroduction", column = "team_introduction"),
            @Result(property = "projectGiftExplain", column = "project_gift_explain"),
            @Result(property = "projectExchangePolicy", column = "project_exchange_policy")
    })
    @Select("SELECT * from project_plan where project_id = #{projectId}")
    ProjectPlanVO findByProjectId(ProjectVO vo);
}
