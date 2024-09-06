package com.zenblbug.ezen.service.implement;

import com.zenblbug.ezen.mapper.ProjectMapper;
import com.zenblbug.ezen.mapper.SearchLogMapper;
import com.zenblbug.ezen.service.SearchService;
import com.zenblbug.ezen.vo.ProjectVO;
import com.zenblbug.ezen.vo.SearchVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SearchServiceImplement implements SearchService {

    @Autowired
    private ProjectMapper projectMapper;

    @Autowired
    private SearchLogMapper searchLogMapper;

    @Override
    public List<ProjectVO> getSearchProjectList(SearchVO vo){

        // 이상한 오류 잡음
        if(vo.getSearchWord().equals("resources")){return null;}

        // 이전 검색어가 있는 경우 -> (ture)
        vo.setRelationCheck(vo.getRelationWord() != null ? 1 : 0);

        // 검색어 로그를 저장
        int saveResult = searchLogMapper.saveSearchLog(vo);

        // 검색되어진 결과 반환
        return projectMapper.findByTitleContaining(vo);
    }

    @Override
    public List<String> getTop10SearchWords() {
        return searchLogMapper.getTop10SearchWords();
    }

    @Override
    public List<String> getRelationWordList(SearchVO vo) {
        return searchLogMapper.getRelationWordList(vo);
    }
}
