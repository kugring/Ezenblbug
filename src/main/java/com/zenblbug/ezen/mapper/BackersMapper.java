package com.zenblbug.ezen.mapper;

import com.zenblbug.ezen.vo.CertificationVO;
import com.zenblbug.ezen.vo.DonationVO;
import com.zenblbug.ezen.vo.ProjectVO;
import org.apache.ibatis.annotations.*;

@Mapper
public interface BackersMapper {

    @Select("SELECT SUM(backers_total_price) FROM backers WHERE project_id = #{projectId}")
    Integer sumTotalGoalAmount(@Param("projectId") int projectId);


    @Options(useGeneratedKeys = true, keyProperty = "backersId")
    @Insert("INSERT INTO backers(user_id, project_id, backers_total_price)values(#{userId},#{projectId},#{backersTotalPrice})")
    int saveDonation(DonationVO vo);


    @Update("UPDATE backers SET backers_status = '결제완료' WHERE backers_id = #{backersId}")
    int updateDonation(DonationVO vo);

}