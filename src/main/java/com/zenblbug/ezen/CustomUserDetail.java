package com.zenblbug.ezen;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class CustomUserDetail extends User{

	private String nickname;
	
	public String getNickname() {
		return nickname;
	}

	public CustomUserDetail(String username, String password, Collection<? extends GrantedAuthority> authorities, String nickname) {
		super(username, password, authorities);
		this.nickname = nickname;
	}

}
