package com.zenblbug.ezen.mapper;

import org.apache.ibatis.annotations.*;

import com.zenblbug.ezen.vo.UserVO;

@Mapper
public interface UserMapper {

	@Select("SELECT * FROM user WHERE user_id=#{userId}")
	@Results({
			@Result(property = "userId", column = "user_id"),
			@Result(property = "email", column = "email"),
			@Result(property = "nickname", column = "nickname"),
			@Result(property = "profileImage", column = "profile_image"),
			@Result(property = "selfIntro", column = "self_intro"),
			@Result(property = "address", column = "address"),
			@Result(property = "addressDetail", column = "address_detail"),
			@Result(property = "phoneNumber", column = "phone_number")

	})
	UserVO findByUserId(String userId);
	
	@Insert("INSERT INTO user(user_id, password, nickname, phone_number, address, address_detail, email, agree_check)values(#{userId},#{password},#{nickname},#{phoneNumber},#{address}, #{addressDetail}, #{email}, #{agreeCheck})")
	int insertUser(UserVO vo);

	@Select("SELECT COUNT(*) FROM user WHERE user_id=#{userId}")
	int existsByUserId(String userId);

	@Select("SELECT COUNT(*) FROM user WHERE nickname=#{nickname}")
	int existsByNickname(String nickname);
}
