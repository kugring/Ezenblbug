package com.zentlbug.ezen.repository;

import com.zentlbug.ezen.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepository {

    @Autowired
    UserMapper userMapper;


}
