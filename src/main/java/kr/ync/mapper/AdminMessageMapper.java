package kr.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ync.domain.AnswerVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.MessageVO;

public interface AdminMessageMapper {
	public MessageVO get(int idx);
	public int total();
	public List<MessageVO> getListWithPaging(@Param("cri")Criteria cri);
	public AnswerVO getanswer(int idx);
	public int input_answer(AnswerVO answer);
}
