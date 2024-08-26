package com.zenblbug.ezen.service.implement;

import com.zenblbug.ezen.common.CertificationNumber;
import com.zenblbug.ezen.mapper.CertificationMapper;
import com.zenblbug.ezen.mapper.UserMapper;
import com.zenblbug.ezen.provider.EmailProvider;
import com.zenblbug.ezen.service.AuthService;
import com.zenblbug.ezen.vo.CertificationVO;
import com.zenblbug.ezen.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AuthServiceImplement implements AuthService {

    @Autowired
    private UserMapper userMapper;
    @Autowired
    private CertificationMapper certificationMapper;
    @Autowired
    private EmailProvider emailProvider;
    @Autowired
    private BCryptPasswordEncoder encoder;
    @Override
    public int signUp(UserVO vo) {
        String encodePw = encoder.encode(vo.getPassword());
        vo.setPassword(encodePw);
        return userMapper.insertUser(vo);
    }

    @Override
    public int idCheck(String userId) {
        return userMapper.existsByUserId(userId);
    }
    @Override
    public int nicknameCheck(String nickname) {
        return userMapper.existsByNickname(nickname);
    }

    @Override
    public int CertificationEmailSend(CertificationVO vo) {

        // 기존에 있던 인증번호를 소각
        certificationMapper.deleteByUserIdANDEmail(vo);

        // 인증 번호를 생성함
        String certificationNumber = CertificationNumber.getCertificationNumber();

        // 이메일 전송에 대한 결과
        boolean isSendEmailSuccess = emailProvider.sendCertificationMail(vo.getEmail(), certificationNumber);

        // 생성된 이메일 인증번호를 vo에 담는다!
        vo.setCertificationNumber(certificationNumber);
        int result;
        // 이메일 전송에 성공하는 경우 DB에 인증 정보를 넣음
        if(isSendEmailSuccess){
            result = certificationMapper.insertCertification(vo);
        }else{
            result = 0;
        }

        return result;
    }

    @Override
    public int CertificationEmailCheck(CertificationVO vo) {
        return certificationMapper.findByUserIdEmailCertification(vo);
    }


}
