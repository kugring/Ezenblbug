package com.zenblbug.ezen.service;

import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.zenblbug.ezen.CustomUserDetail;
import com.zenblbug.ezen.mapper.UserMapper;
import com.zenblbug.ezen.vo.UserVO;

// 스프링 시큐리티가 인증처리를 하는 클래스를 재정의 하려면 UserDetailsService인터페이스를 구현하영야 한다.
@Service
public class UserDetailService implements UserDetailsService{

	@Autowired
	UserMapper usermapper;
	
	// 로그인 처리를 할때 form으로 요청한 username이 메서드의 파라미터로 넘어오게 된다.
	@Override
	public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {

		System.out.println("일단 아이디: "+ id);

		// id에 해당하는 유저 정보를 조회한다.
		UserVO user =  usermapper.findByUserId(id);

		System.out.println("get데이터: "+ user.getUserId());
		System.out.println("get데이터: "+ user.getPassword());
		System.out.println("get데이터: "+ user.getRole());
		System.out.println("get데이터: "+ user.getNickname());
		System.out.println("get데이터: "+ user.getAddress());

		// 조회가 되지 않는 경우 사용자가 아니기 때문에 예외를 발생시켰다.
		if(user==null) {
			throw new UsernameNotFoundException("user not find");
		}
		
		// 사용자 정보를 반환해준다.
		// 조회한 유저의 id를 username에 넣어주어야 하고
		// 조회한 유저의 password를 password에 넣어줘야 한다.
		// 조회한 유저의 role을 role에 넣어줘야 한다.
//		return User.withUsername(user.getId())
//				.password(user.getPw())
//				.authorities(user.getRole())
//				.build();
		
		return new CustomUserDetail(user.getUserId(), user.getPassword(),
				Collections.singletonList(
						new SimpleGrantedAuthority(user.getRole())), 
				user.getNickname());
	}

}
