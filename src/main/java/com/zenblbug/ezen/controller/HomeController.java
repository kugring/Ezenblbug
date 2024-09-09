package com.zenblbug.ezen.controller;

import java.text.DateFormat;
import java.util.*;

import javax.servlet.http.HttpSession;

import com.zenblbug.ezen.mapper.ProjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.zenblbug.ezen.mapper.UserMapper;
import com.zenblbug.ezen.service.ProjectService;
import com.zenblbug.ezen.vo.ProjectVO;
import com.zenblbug.ezen.vo.UserVO;

@Controller
@RequestMapping("/main") // 이 컨트롤러는 "/api/v1/board" 경로와 매핑됩니다.
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    UserMapper usermapper;

    @Autowired
    ProjectService projectService;

    @Autowired
    ProjectMapper projectMapper;


    @RequestMapping(value = "", method = RequestMethod.GET)
    public String home(Locale locale, Model model,
                       @AuthenticationPrincipal UserDetails user) {
        logger.info("Welcome home! The client locale is {}.", locale);

        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

        String formattedDate = dateFormat.format(date);

        model.addAttribute("serverTime", formattedDate);

        List<ProjectVO> mainGetViewProject = projectService.mainGetViewProject(user.getUsername());
        List<ProjectVO> mainGetFavoriteProject = projectService.mainGetFavoriteProject();
        System.out.println("mainView: "+ mainGetViewProject);
        System.out.println("mainFavorite: "+ mainGetFavoriteProject);
        model.addAttribute("mainGetViewProject", mainGetViewProject);
        model.addAttribute("mainGetFavoriteProject", mainGetFavoriteProject);


        user.getUsername();
        user.getPassword();
        user.getAuthorities();

        return "main";
    }



    @GetMapping("/admin/a")
    public void adminA() {
        System.out.println("admin 페이지 요청");
    }

    @GetMapping("/access-denied")
    public String noAuthorize() {
        return "signIn";
    }

    //인기 페이지
    @RequestMapping(value="/popular", method=RequestMethod.GET)
    public String popular(Model model) {

        List<ProjectVO> mainGetFavoriteProject = projectMapper.mainGetFavoriteProject();
        model.addAttribute("mainGetFavoriteProject", mainGetFavoriteProject);

        return "popular";
    }


    @RequestMapping(value="/startup", method=RequestMethod.GET)
    public String startup() {

        return "startup";
    }

    @RequestMapping(value="/coming-soon", method=RequestMethod.GET)
    public String coming_soon() {

        return "comingSoon";
    }


}
