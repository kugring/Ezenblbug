package com.zenblbug.ezen.controller;

import com.zenblbug.ezen.service.ProjectService;
import com.zenblbug.ezen.vo.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.annotation.RequestScope;

import java.util.List;

@Controller
@RequestMapping("/project")
public class ProjectController {

    @Autowired
    ProjectService projectService;



    @GetMapping("{projectId}") // 디테일 프로젝트
    public String projectDetail(@AuthenticationPrincipal UserDetails user, @PathVariable("projectId") int projectId, Model model) {
        ProjectVO vo = new ProjectVO();
        vo.setProjectId(projectId);

        ProjectVO projectVO = projectService.getProjectDetails(vo);
        model.addAttribute("projectVO", projectVO);

        UserVO userInfoVO = projectService.getUserInfo(user.getUsername());
        model.addAttribute("userInfoVO", userInfoVO);
        return "projectDetail";
    }


    @GetMapping("/create/{projectId}") // 해당 프로젝트 작성하기
    public String projectCreate(@AuthenticationPrincipal UserDetails user, @PathVariable("projectId") int projectId, Model model) {
        ProjectVO vo = new ProjectVO();
        vo.setProjectId(projectId);
        vo.setUserId(user.getUsername());

        // 해당 프로젝트 생성자가 본인지 확인하는 코드
        int hasPermission = projectService.hasPermission(vo);
        // 권한이 없는 경우 리다이렉트 처리
        if (hasPermission == 0) {return "redirect:/main";}

        // projectId를 기준으로 모든 패키지,제품 정보를 가져옴
        ProjectVO projectVO = projectService.getProject(vo);
        model.addAttribute("projectVO", projectVO);
        return "projectCreate";
    }

    @ResponseBody
    @PostMapping("/create/info")
    public int saveInfo(@AuthenticationPrincipal UserDetails user,@RequestBody ProjectVO vo){

        // 해당 프로젝트 생성자가 본인지 확인하는 코드
        vo.setUserId(user.getUsername());
        int hasPermission = projectService.hasPermission(vo);
        // 권한이 없는 경우 리다이렉트 처리
        if (hasPermission == 0) {return -1;}

        return projectService.saveInfo(vo);
    }

    @ResponseBody
    @PostMapping("/create/funding")
    public int saveFunding(@AuthenticationPrincipal UserDetails user,@RequestBody ProjectVO vo){

        // 해당 프로젝트 생성자가 본인지 확인하는 코드
        vo.setUserId(user.getUsername());
        int hasPermission = projectService.hasPermission(vo);
        // 권한이 없는 경우 리다이렉트 처리
        if (hasPermission == 0) {return -1;}

        return projectService.saveFunding(vo);
    }


    @ResponseBody
    @PostMapping("/create/gift")
    public int saveGift(@AuthenticationPrincipal UserDetails user,@RequestBody ProductVO vo){

        ProjectVO projectVO = new ProjectVO();
        // 해당 프로젝트 생성자가 본인지 확인하는 코드
        projectVO.setUserId(user.getUsername());
        projectVO.setProjectId(vo.getProjectId());
        int hasPermission = projectService.hasPermission(projectVO);
        // 권한이 없는 경우 리다이렉트 처리
        if (hasPermission == 0) {return -1;}

        return projectService.saveGift(vo);
    }

    @ResponseBody
    @PostMapping("/create/package")
    public int savePackage(@AuthenticationPrincipal UserDetails user,@RequestBody BackersPackageVO vo){

        ProjectVO projectVO = new ProjectVO();
        // 해당 프로젝트 생성자가 본인지 확인하는 코드
        projectVO.setUserId(user.getUsername());
        projectVO.setProjectId(vo.getProjectId());
        int hasPermission = projectService.hasPermission(projectVO);
        // 권한이 없는 경우 리다이렉트 처리
        if (hasPermission == 0) {return -1;}

        return projectService.savePackage(vo);
    }

    @ResponseBody
    @PostMapping("/create/plan")
    public int savePlan(@AuthenticationPrincipal UserDetails user,@RequestBody ProjectPlanVO vo){

        ProjectVO projectVO = new ProjectVO();
        // 해당 프로젝트 생성자가 본인지 확인하는 코드
        projectVO.setUserId(user.getUsername());
        projectVO.setProjectId(vo.getProjectId());
        int hasPermission = projectService.hasPermission(projectVO);
        // 권한이 없는 경우 리다이렉트 처리
        if (hasPermission == 0) {return -1;}

        return projectService.savePlan(vo);
    }

    @ResponseBody
    @PostMapping("/create/creator")
    public int saveCreator(@AuthenticationPrincipal UserDetails user,@RequestBody UserVO vo){

        ProjectVO projectVO = new ProjectVO();
        // 해당 프로젝트 생성자가 본인지 확인하는 코드
        projectVO.setUserId(user.getUsername());
        projectVO.setProjectId(vo.getProjectId());
        int hasPermission = projectService.hasPermission(projectVO);
        // 권한이 없는 경우 리다이렉트 처리
        if (hasPermission == 0) {return -1;}

        // 세션에 있는 userId를 넣어줌
        vo.setUserId(user.getUsername());
        return projectService.saveCreator(vo);
    }


    @ResponseBody
    @PostMapping("/create/trust")
    public int saveTrust(@AuthenticationPrincipal UserDetails user,@RequestBody ProjectPlanVO vo){

        ProjectVO projectVO = new ProjectVO();
        // 해당 프로젝트 생성자가 본인지 확인하는 코드
        projectVO.setUserId(user.getUsername());
        projectVO.setProjectId(vo.getProjectId());
        int hasPermission = projectService.hasPermission(projectVO);
        // 권한이 없는 경우 리다이렉트 처리
        if (hasPermission == 0) {return -1;}

        return projectService.saveTrust(vo);
    }


    @ResponseBody
    @PostMapping("/create/donation")
    public int saveDonation(@AuthenticationPrincipal UserDetails user, @RequestBody DonationVO vo){

        vo.setUserId(user.getUsername());

        return projectService.saveDonation(vo);
    }


    @ResponseBody
    @PostMapping("/update/donation")
    public int updateDonation(@RequestBody DonationVO vo){


        return projectService.updateDonation(vo);
    }






    @ResponseBody
    @PostMapping("/delete/gift")
    public int deleteGift(@AuthenticationPrincipal UserDetails user,@RequestBody ProductVO vo){

        ProjectVO projectVO = new ProjectVO();
        // 해당 프로젝트 생성자가 본인지 확인하는 코드
        projectVO.setUserId(user.getUsername());
        projectVO.setProjectId(vo.getProjectId());
        int hasPermission = projectService.hasPermission(projectVO);
        // 권한이 없는 경우 리다이렉트 처리
        if (hasPermission == 0) {return -1;}

        return projectService.deleteGift(vo);
    }

    @ResponseBody
    @PostMapping("/delete/package")
    public int deletePackage(@AuthenticationPrincipal UserDetails user,@RequestBody BackersPackageVO vo){

        ProjectVO projectVO = new ProjectVO();
        // 해당 프로젝트 생성자가 본인지 확인하는 코드
        projectVO.setUserId(user.getUsername());
        projectVO.setProjectId(vo.getProjectId());
        int hasPermission = projectService.hasPermission(projectVO);
        // 권한이 없는 경우 리다이렉트 처리
        if (hasPermission == 0) {return -1;}

        return projectService.deletePackage(vo);
    }





    @ResponseBody
    @PostMapping("/ready") // 새롭게 프로젝트를 생성하는 경우, 이후 프로젝트 생성 jsp로 이동
    public int createProject(
            @RequestBody ProjectVO vo,
            @AuthenticationPrincipal UserDetails user
    ) {
        // UserDetails에서 사용자 ID를 가져옵니다. 보통 username 또는 userId를 사용합니다.
        vo.setUserId(user.getUsername()); // 또는 user.getUserId()로 바꿀 수 있습니다.

        // 프로젝트 생성 후 생성된 프로젝트 ID를 반환받습니다.
        return projectService.createProject(vo);
    }

    @GetMapping("/ready") // 이전에 작업했던 프로젝트를 반환함
    public String projectUploadBadge(
            @AuthenticationPrincipal UserDetails user,
            Model model
    ) {
        ProjectVO vo = new ProjectVO();
        vo.setUserId(user.getUsername()); // 또는 user.getUserId()로 바꿀 수 있습니다.

        List<ProjectVO> projectVoList = projectService.progressProject(vo);

        model.addAttribute("projectVoList", projectVoList);
        return "projectReady";
    }

    @ResponseBody // 해당 프로젝트 좋아요
    @PutMapping("/{projectId}/favorite")
    public int putFavorite(
            @AuthenticationPrincipal UserDetails user,
            @PathVariable("projectId") int projectId
    ) {
        LikesVO likesVO = new LikesVO();
        likesVO.setProjectId(projectId);
        likesVO.setUserId(user.getUsername());

        return projectService.putFavorite(likesVO);
    }

    @ResponseBody // 해당 프로젝트 조회수
    @PostMapping("/{projectId}/increase-view-count")
    public int increaseViewCount(
            @PathVariable("projectId") int projectId
    ) {
        ProjectVO projectVO = new ProjectVO();
        projectVO.setProjectId(projectId);

        return projectService.increaseViewCount(projectVO);
    }

    @GetMapping("/upload") // 안내 jsp
    public String projectUpload(Model model) {

        List<ProjectVO> projectVOList = projectService.getAllProject();

        model.addAttribute("projectVOList", projectVOList);

        return "projectUpload";
    }

}

