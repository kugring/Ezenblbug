package com.zentlbug.ezen.service;


import com.zentlbug.ezen.vo.CertificationVO;
import com.zentlbug.ezen.vo.UserVO;

public interface AuthService {

    int signUp(UserVO vo);

    int idCheck(String userId);

    int nicknameCheck(String nickname);

    int CertificationEmailSend(CertificationVO vo);

    int CertificationEmailCheck(CertificationVO vo);
}
