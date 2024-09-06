package com.zenblbug.ezen.mapper;

import com.zenblbug.ezen.vo.BackersPackageVO;
import com.zenblbug.ezen.vo.ProductVO;
import com.zenblbug.ezen.vo.ProjectVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ProductMapper {

    @Results({
            @Result(property = "productId", column = "product_id"),
            @Result(property = "projectId", column = "project_id"),
            @Result(property = "productName", column = "product_name"),
            @Result(property = "productCategory", column = "product_category"),
            @Result(property = "productSwitch", column = "product_switch"),
            @Result(property = "productExplain", column = "product_explain")
    })
    @Select("select * from product WHERE product_id = #{productId}")
    ProductVO findByProductId(ProductVO vo);
    @Results({
            @Result(property = "productId", column = "product_id"),
            @Result(property = "projectId", column = "project_id"),
            @Result(property = "productName", column = "product_name"),
            @Result(property = "productCategory", column = "product_category"),
            @Result(property = "productSwitch", column = "product_switch"),
            @Result(property = "productExplain", column = "product_explain")
    })
    @Select("select * from product WHERE project_id = #{projectId}")
    List<ProductVO> findByProjectId(ProjectVO vo);
}