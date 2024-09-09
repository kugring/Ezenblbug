package com.zenblbug.ezen.mapper;

import com.zenblbug.ezen.vo.BackersPackageVO;
import com.zenblbug.ezen.vo.ProductVO;
import org.apache.ibatis.annotations.*;

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

    @Insert("INSERT INTO product_package(product_id, package_id, product_quantity)values(#{productId}, #{packageId}, #{productQuantity})")
    int createVirtualPackage(ProductVO vo);

    @Delete("DELETE FROM product_package WHERE package_id=#{packageId}")
    int deleteByPackageId(BackersPackageVO vo);

    @Delete("DELETE FROM product_package WHERE product_id=#{productId}")
    int deleteByProductId(ProductVO vo);
}
