package com.zenblbug.ezen.service;

import com.zenblbug.ezen.vo.LikesVO;
import com.zenblbug.ezen.vo.ProjectVO;

public interface ProjectService {

    int putFavorite(LikesVO vo);

    int increaseViewCount(ProjectVO vo);

}
