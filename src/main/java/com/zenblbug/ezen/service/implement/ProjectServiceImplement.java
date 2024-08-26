package com.zenblbug.ezen.service.implement;

import com.zenblbug.ezen.mapper.LikesMapper;
import com.zenblbug.ezen.mapper.ProjectMapper;
import com.zenblbug.ezen.service.ProjectService;
import com.zenblbug.ezen.vo.LikesVO;
import com.zenblbug.ezen.vo.ProjectVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectServiceImplement implements ProjectService {

    @Autowired
    LikesMapper likesMapper;

    @Autowired
    ProjectMapper projectMapper;

    @Override
    public int putFavorite(LikesVO likesVO) {
        ProjectVO projectVO = new ProjectVO();
        projectVO.setProjectId(likesVO.getProjectId());

        int result = likesMapper.existedByUserIdANDProjectId(likesVO);

        if(result == 0){
            likesMapper.insertLike(likesVO);
            projectMapper.increaseFavoriteCount(projectVO);
            return result;
        } else {
            likesMapper.deleteByUserIdANDProjectId(likesVO);
            projectMapper.decreaseFavoriteCount(projectVO);
            return result;
        }
    }
    @Override
    public int increaseViewCount(ProjectVO vo) {
        return projectMapper.increaseViewCount(vo);
    }


}
