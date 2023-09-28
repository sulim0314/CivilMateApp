package com.practical.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Repository;

import com.practical.model.PracticalVO;
import com.wrong.model.WrongVO;

@Repository
@ComponentScan
@Mapper
public interface PracticalMapper {

	int insertQna(PracticalVO pvo);

	List<PracticalVO> getQnaById(String userId);

	int deleteQnaByQno(int qno);

	PracticalVO selectQnaByQno(int qno);

	int updateQna(PracticalVO pvo);

}
