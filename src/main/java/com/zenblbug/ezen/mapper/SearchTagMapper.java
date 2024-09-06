package com.zenblbug.ezen.mapper;

import com.zenblbug.ezen.vo.CertificationVO;
import com.zenblbug.ezen.vo.ProjectVO;
import com.zenblbug.ezen.vo.SearchTagVO;
import com.zenblbug.ezen.vo.UserVO;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface SearchTagMapper {

    @Insert("INSERT INTO search_tag(project_id, tag_word)values(#{projectId},#{tagWord})")
    int insertByTagWord(SearchTagVO vo);

    @Select("SELECT COUNT(*) FROM search_tag WHERE project_id=#{projectId}")
    int existsByProjectId(SearchTagVO vo);

    @Delete("DELETE FROM search_tag WHERE project_id=#{projectId}")
    int deleteByProjectId(ProjectVO vo);

    @Results({
            @Result(property = "searchTagId", column = "search_tag_id"),
            @Result(property = "projectId", column = "project_id"),
            @Result(property = "tagWord", column = "tag_word")
    })
    @Select("select * from search_tag WHERE project_id=#{projectId}")
    List<SearchTagVO> findByProjectId(ProjectVO vo);


}
