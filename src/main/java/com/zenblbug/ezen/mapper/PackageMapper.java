package com.zenblbug.ezen.mapper;

import com.zenblbug.ezen.vo.BackersPackageVO;
import com.zenblbug.ezen.vo.CertificationVO;
import com.zenblbug.ezen.vo.ProjectVO;
import com.zenblbug.ezen.vo.UserVO;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface PackageMapper {

    @Results({
            @Result(property = "packageId", column = "package_id"),
            @Result(property = "projectId", column = "project_id"),
            @Result(property = "packageTitle", column = "package_title"),
            @Result(property = "packagePrice", column = "package_price"),
            @Result(property = "packageSwitch", column = "package_switch"),
            @Result(property = "maxProductAmount", column = "max_product_amount"),
            @Result(property = "personMaxAmount", column = "person_max_amount"),
            @Result(property = "remaining", column = "remaining"),
            @Result(property = "price", column = "price")
    })
    @Select("select * from backers_package where project_id = #{projectId}")
    List<BackersPackageVO> findByProjectId(ProjectVO vo);

    @Options(useGeneratedKeys = true, keyProperty = "packageId")
    @Insert("INSERT INTO backers_package(project_id, package_title, package_price, max_product_amount, person_max_amount)values(#{projectId}, #{packageTitle}, #{packagePrice},#{maxProductAmount},#{personMaxAmount})")
    int createPackage(BackersPackageVO vo);


    @Delete("DELETE FROM backers_package WHERE package_id=#{packageId}")
    int deleteByPackageId(BackersPackageVO vo);
}
