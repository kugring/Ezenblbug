package com.zenblbug.ezen.mapper;

import com.zenblbug.ezen.vo.ProjectVO;
import com.zenblbug.ezen.vo.ThumbnailVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ThumbnailMapper {

    @Select("select * from attach where project_id = #{projectId}")
    List<ThumbnailVO> findByProjectId(ProjectVO vo);
}
