package kr.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.BoardVO2;
import kr.ync.domain.NoticeVO;
import kr.ync.mapper.MainPageMapper;

@Service
public class MainPageServiceImpl implements MainPageService {

	@Autowired
	MainPageMapper mapper;
	
	@Override
	public List<NoticeVO> getNotice() {
		// TODO Auto-generated method stub
		return mapper.getNotice();
	}

	@Override
	public List<BoardVO2> getBoard() {
		// TODO Auto-generated method stub
		return mapper.getBoard();
	}

}
