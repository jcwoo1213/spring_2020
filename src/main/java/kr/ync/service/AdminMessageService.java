package kr.ync.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ync.domain.AnswerVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.MessageVO;

public interface AdminMessageService {
	public AnswerVO getanswer(int idx);
	public MessageVO get(int idx);
	public int total();
	public List<MessageVO> getListWithPaging(@Param("cri")Criteria cri);
	public int input_answer(AnswerVO answer);
}
