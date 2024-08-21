package com.zentlbug.ezen.mapper;

import com.zentlbug.ezen.vo.CertificationVO;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface CertificationMapper {

    @Insert("INSERT INTO certification(user_id, email, certificationNumber)values(#{userId},#{email},#{certificationNumber})")
    int insertCertification(CertificationVO vo);

    @Delete("DELETE FROM certification WHERE user_id=#{userId} AND email=#{email}")
    void deleteByUserIdANDEmail(CertificationVO vo);

    @Select("SELECT COUNT(*) FROM certification WHERE user_id=#{userId} AND email=#{email} AND certificationNumber=#{certificationNumber}")
    int findByUserIdEmailCertification(CertificationVO vo);
}
