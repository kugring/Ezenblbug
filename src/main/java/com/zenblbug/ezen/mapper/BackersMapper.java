package com.zenblbug.ezen.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface BackersMapper {

    @Select("SELECT SUM(backers_total_price) FROM backers WHERE project_id = #{projectId}")
    Integer sumTotalGoalAmount(@Param("projectId") int projectId);
}