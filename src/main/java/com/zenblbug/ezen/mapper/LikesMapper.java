package com.zenblbug.ezen.mapper;

import com.zenblbug.ezen.vo.CertificationVO;
import com.zenblbug.ezen.vo.LikesVO;
import com.zenblbug.ezen.vo.ProjectVO;
import com.zenblbug.ezen.vo.SearchVO;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface LikesMapper {

    @Select("SELECT count(*) FROM likes WHERE user_id = #{userId} AND project_id = #{projectId}")
    int existedByUserIdANDProjectId(LikesVO vo);


    @Insert("INSERT INTO likes(user_id, project_id) VALUES (#{userId}, #{projectId})")
    int insertLike(LikesVO vo);

    @Delete("DELETE FROM likes WHERE user_id=#{userId} AND project_id=#{projectId}")
    int deleteByUserIdANDProjectId(LikesVO vo);
}
