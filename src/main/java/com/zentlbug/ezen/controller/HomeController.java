package com.zentlbug.ezen.controller;

import java.beans.Encoder;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import com.zentlbug.ezen.service.AuthService;
import com.zentlbug.ezen.vo.CertificationVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.zentlbug.ezen.mapper.UserMapper;
import com.zentlbug.ezen.vo.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    AuthService authService;

    @Autowired
    UserMapper usermapper;


    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public String home(Locale locale, Model model,
                       @AuthenticationPrincipal UserDetails user) {
        logger.info("Welcome home! The client locale is {}.", locale);

        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

        String formattedDate = dateFormat.format(date);

        model.addAttribute("serverTime", formattedDate);


        user.getUsername();
        user.getPassword();
        user.getAuthorities();

        return "main";
    }

    @GetMapping("/project-detail")
    public String projectDetail() { return "projectDetail"; }

    @GetMapping("/project-upload")
    public String projectUpload() { return "projectUpload"; }

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

    @GetMapping("/admin/a")
    public void adminA() {
        System.out.println("admin 페이지 요청");
    }

    @GetMapping("/access-denied")
    public String noAuthorize() {
        return "home";
    }

}
