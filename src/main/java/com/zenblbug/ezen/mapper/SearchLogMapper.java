package com.zenblbug.ezen.mapper;

import com.zenblbug.ezen.vo.SearchVO;
import com.zenblbug.ezen.vo.UserVO;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface SearchLogMapper {

    @Insert("INSERT INTO search(search_word, relation_word, relation_check)values(#{searchWord}, #{relationWord}, #{relationCheck})")
    int saveSearchLog(SearchVO vo);

    @Select("SELECT search_word, COUNT(*) AS count " +
            "FROM search " +
            "GROUP BY search_word " +
            "ORDER BY count DESC " +
            "LIMIT 10")
    List<String> getTop10SearchWords();

    @Select("SELECT relation_word, COUNT(*) AS count " +
            "FROM search " +
            "WHERE relation_check = 1 " +
            "AND search_word = #{searchWord} " +
            "GROUP BY relation_word " +
            "ORDER BY count DESC " +
            "LIMIT 10")
    @Results({
            @Result(property = "relationWord", column = "relation_word")
    })
    List<String> getRelationWordList(SearchVO vo);

}
