package com.zenblbug.ezen.mapper;

import com.zenblbug.ezen.vo.ProjectVO;
import com.zenblbug.ezen.vo.SearchVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface ProjectMapper {

    @Select("SELECT * FROM project WHERE project_title LIKE CONCAT('%', #{searchWord}, '%') OR project_summary LIKE CONCAT('%', #{searchWord}, '%')")
    List<ProjectVO> findByTitleContaining(SearchVO vo);

    @Update("UPDATE project SET view_count = view_count + 1 WHERE project_id = #{projectId}")
    int increaseViewCount(ProjectVO vo);
    @Update("UPDATE project SET favorite_count = favorite_count + 1 WHERE project_id = #{projectId}")
    void increaseFavoriteCount(ProjectVO vo);
    @Update("UPDATE project SET favorite_count = favorite_count - 1 WHERE project_id = #{projectId}")
    void decreaseFavoriteCount(ProjectVO vo);

}
