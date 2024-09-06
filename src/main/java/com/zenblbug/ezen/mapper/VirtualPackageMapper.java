package com.zenblbug.ezen.mapper;

import com.zenblbug.ezen.vo.BackersPackageVO;
import com.zenblbug.ezen.vo.ProductVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface VirtualPackageMapper {

    @Results({
            @Result(property = "productId", column = "product_id"),
            @Result(property = "packageId", column = "package_id"),
            @Result(property = "productQuantity", column = "product_quantity")
    })
    @Select("select product_id, product_quantity from product_package WHERE package_id = #{packageId}")
    List<ProductVO> findByPackageId(BackersPackageVO vo);
}
