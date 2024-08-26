package com.zenblbug.ezen.service;

import com.zenblbug.ezen.vo.ProjectVO;
import com.zenblbug.ezen.vo.SearchVO;

import java.util.List;

public interface SearchService {
    List<ProjectVO> getSearchProjectList(SearchVO vo);

    List<String> getTop10SearchWords();

    List<String> getRelationWordList(SearchVO vo);
}
