package kr.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.AnswerVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.MessageVO;
import kr.ync.mapper.AdminMessageMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AdminMessageServiceImpl implements AdminMessageService {

	@Autowired
	AdminMessageMapper mapper;
	
	@Override
	public MessageVO get(int idx) {
		// TODO Auto-generated method stub
		return mapper.get(idx);
	}

	@Override
	public int total() {
		// TODO Auto-generated method stub
		return mapper.total();
	}

	@Override
	public List<MessageVO> getListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.getListWithPaging(cri);
	}

	@Override
	public AnswerVO getanswer(int idx) {
		// TODO Auto-generated method stub
		return mapper.getanswer(idx);
	}

	@Override
	public int input_answer(AnswerVO answer) {
		// TODO Auto-generated method stub
		return mapper.input_answer(answer);
	}

}
