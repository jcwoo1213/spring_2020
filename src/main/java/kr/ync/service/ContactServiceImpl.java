package kr.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.AnswerVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.MessagePageDTO;
import kr.ync.domain.MessageVO;
import kr.ync.mapper.ContactMapper;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
public class ContactServiceImpl implements ContactService {

	@Autowired
	ContactMapper mapper;
	
	@Override
	public void create(MessageVO message) {
		// TODO Auto-generated method stub
		log.info("message:"+message);
		mapper.input(message);
	}
	
	@Override
	public List<MessageVO> getList(String writer) {
		// TODO Auto-generated method stub
		log.info("writer:"+writer);
		return mapper.getList(writer);
	}
	
	@Override
	public MessageVO get(int idx) {
		// TODO Auto-generated method stub
		log.info("message get:"+idx);
		return mapper.get(idx);
	}
	
	@Override
	public int getTotal(String writer) {
		// TODO Auto-generated method stub
		return mapper.total(writer);
	}
	
	@Override
	public MessagePageDTO getListPage(Criteria cri, String writer) {
		// TODO Auto-generated method stub
		return new MessagePageDTO(mapper.total(writer), mapper.getListWithPaging(cri, writer));
	}
	
	@Override
	public AnswerVO getanswer(int idx) {
		// TODO Auto-generated method stub
		return mapper.getanswer(idx);
	}

}
