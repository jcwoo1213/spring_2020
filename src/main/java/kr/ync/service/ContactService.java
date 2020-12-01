package kr.ync.service;

import java.util.List;

import kr.ync.domain.AnswerVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.MessagePageDTO;
import kr.ync.domain.MessageVO;

public interface ContactService {
	public void create(MessageVO message);
	public List<MessageVO> getList(String writer);
	public MessageVO get(int idx);
	public int getTotal(String writer);
	public MessagePageDTO getListPage(Criteria cri,String writer);
	public AnswerVO getanswer(int idx);
}
