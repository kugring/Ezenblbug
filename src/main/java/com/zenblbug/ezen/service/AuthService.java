package com.zenblbug.ezen.service;


import com.zenblbug.ezen.vo.CertificationVO;
import com.zenblbug.ezen.vo.UserVO;

public interface AuthService {

    int signUp(UserVO vo);

    int idCheck(String userId);

    int nicknameCheck(String nickname);

    int CertificationEmailSend(CertificationVO vo);

    int CertificationEmailCheck(CertificationVO vo);
}
