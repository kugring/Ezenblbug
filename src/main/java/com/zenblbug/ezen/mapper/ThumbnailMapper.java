package com.zenblbug.ezen.mapper;

import com.zenblbug.ezen.vo.BackersPackageVO;
import com.zenblbug.ezen.vo.CertificationVO;
import com.zenblbug.ezen.vo.ProjectVO;
import com.zenblbug.ezen.vo.ThumbnailVO;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ThumbnailMapper {

    @Select("select * from attach where project_id = #{projectId}")
    List<ThumbnailVO> findByProjectId(ProjectVO vo);

    @Insert("INSERT INTO attach(project_id, path, sequence)values(#{projectId}, #{path}, #{sequence})")
    int saveThumbnail(ThumbnailVO vo);

    @Delete("DELETE FROM attach WHERE project_id=#{projectId}")
    void deleteByProjectId(ProjectVO vo);
}
