package com.zenblbug.ezen.mapper;

import com.zenblbug.ezen.vo.BackersPackageVO;
import com.zenblbug.ezen.vo.ProjectVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

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
}
