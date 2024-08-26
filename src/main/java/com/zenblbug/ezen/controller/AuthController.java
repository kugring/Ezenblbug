package com.zenblbug.ezen.controller;

import com.zenblbug.ezen.mapper.UserMapper;
import com.zenblbug.ezen.service.AuthService;
import com.zenblbug.ezen.service.SearchService;
import com.zenblbug.ezen.vo.CertificationVO;
import com.zenblbug.ezen.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/auth") // 이 컨트롤러는 "/api/v1/board" 경로와 매핑됩니다.
public class AuthController {

    @Autowired
    AuthService authService;

    @Autowired
    UserMapper usermapper;


    @GetMapping("/sign-in")
    public String signIn() {
        return "signIn";
    }

    @GetMapping("/sign-up")
    public String signUp() {
        return "signUp";
    }

    @ResponseBody
    @PostMapping("/sign-up")
    public int signUpOk(@RequestBody UserVO vo) {
        return authService.signUp(vo);
    }


    @PostMapping("/id-check")
    @ResponseBody
    public int idCheck(@RequestBody UserVO userVO) {
        System.out.println(userVO.getUserId());
        return authService.idCheck(userVO.getUserId());
    }

    @PostMapping("/nickname-check")
    @ResponseBody
    public int nicknameCheck(@RequestBody UserVO userVO) {
        System.out.println(userVO.getNickname());
        return authService.nicknameCheck(userVO.getNickname());
    }

    @PostMapping("/certification-email-send")
    @ResponseBody
    public int CertificationEmailSend(@RequestBody CertificationVO vo) {
        return authService.CertificationEmailSend(vo);
    }

    @PostMapping("/certification-email-check")
    @ResponseBody
    public int CertificationEmailCheck(@RequestBody CertificationVO vo) {
        return authService.CertificationEmailCheck(vo);
    }


}
