package com.zenblbug.ezen.controller;

import com.zenblbug.ezen.service.ProjectService;
import com.zenblbug.ezen.vo.LikesVO;
import com.zenblbug.ezen.vo.ProjectVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/project")
public class ProjectController {

    @Autowired
    ProjectService projectService;

    @GetMapping("/{projectId}")
    public String projectDetail() {

        return "projectDetail";
    }

    @GetMapping("/upload")
    public String projectUpload() {
        return "projectUpload";
    }

    @ResponseBody
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
    @ResponseBody
    @PostMapping("/{projectId}/increase-view-count")
    public int increaseViewCount(
            @PathVariable("projectId") int projectId
    ) {
        ProjectVO projectVO = new ProjectVO();
        projectVO.setProjectId(projectId);

        return projectService.increaseViewCount(projectVO);
    }
}
