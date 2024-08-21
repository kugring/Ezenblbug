package com.zentlbug.ezen.mapper;

import org.apache.ibatis.annotations.*;

import com.zentlbug.ezen.vo.UserVO;

@Mapper
public interface UserMapper {

	@Select("SELECT * FROM user WHERE user_id=#{userId}")
	@Results({
			@Result(property = "userId", column = "user_id")
	})
	UserVO findByUserId(String userId);
	
	@Insert("INSERT INTO user(user_id, password, nickname, phone_number, address, address_detail, email, agree_check)values(#{userId},#{password},#{nickname},#{phoneNumber},#{address}, #{addressDetail}, #{email}, #{agreeCheck})")
	int insertUser(UserVO vo);

	@Select("SELECT COUNT(*) FROM user WHERE user_id=#{userId}")
	int existsByUserId(String userId);

	@Select("SELECT COUNT(*) FROM user WHERE nickname=#{nickname}")
	int existsByNickname(String nickname);
}
