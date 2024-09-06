package com.zenblbug.ezen.controller;

import com.zenblbug.ezen.service.SearchService;
import com.zenblbug.ezen.vo.SearchVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/search") // 이 컨트롤러는 "/api/v1/board" 경로와 매핑됩니다.
public class SearchController {

    @Autowired
    SearchService searchService;

    @GetMapping("")
    public String search() {
        return "search";
    }

    @GetMapping(value = {"/{searchWord}", "/{searchWord}/{preSearchWord}"})
    public String searchResult(
            Model model,
            @PathVariable("searchWord") String searchWord,
            @PathVariable(value = "preSearchWord", required = false) String preSearchWord
    ) {
        // 테스트 출력
        System.out.println("현재 검색어: "+searchWord);
        System.out.println("이전 검색어: "+preSearchWord);

        // 데이터 주입
        SearchVO searchVO = new SearchVO();
        searchVO.setSearchWord(searchWord);
        searchVO.setRelationWord(preSearchWord);

        // 검색된 프로젝트 리스트
        model.addAttribute("projectList", searchService.getSearchProjectList(searchVO));

        // 연관 검색어 리스트
        model.addAttribute("relationWordList", searchService.getRelationWordList(searchVO));

        return "searchResult";
    }

    @ResponseBody
    @PostMapping("/popular-list")
    public List<String> getPopularList(){
        return searchService.getTop10SearchWords();
    }



}
