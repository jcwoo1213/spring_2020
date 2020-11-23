package kr.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.CommentPageDTO;
import kr.ync.domain.CommentVO;
import kr.ync.domain.Criteria;
import kr.ync.mapper.BoardMapper;
import kr.ync.mapper.CommentMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentMapper mapper;
	
	@Override
	public void create(CommentVO comment) {
		// TODO Auto-generated method stub
		log.info(comment);
		mapper.create(comment);
	}

	@Override
	public int delete(int idx) {
		// TODO Auto-generated method stub
		log.info("idx"+idx);
		return mapper.delete(idx);
	}

	@Override
	public List<CommentVO> getList(Criteria cri,Integer board_idx) {
		// TODO Auto-generated method stub
		log.info(board_idx);
		return mapper.getList(board_idx);
	}

	@Override
	public int modify(CommentVO comment) {
		// TODO Auto-generated method stub
		log.info("comment"+comment);
		return mapper.modify(comment);
	}



	@Override
	public List<CommentVO> getListWithPaging(Criteria cri, int board_idx) {
		// TODO Auto-generated method stub
		return mapper.getListWithPaging(cri, board_idx);
	}

	@Override
	public CommentVO get(int idx) {
		// TODO Auto-generated method stub
		log.info("get"+idx);
		return mapper.get(idx);
	}

	@Override
	public int getTotal(int board_idx) {
		// TODO Auto-generated method stub
		log.info("getTotal"+board_idx);
		return mapper.getTotal(board_idx);
	}

	@Override
	public CommentPageDTO getListPage(Criteria cri, int board_idx) {
		// TODO Auto-generated method stub
		return new CommentPageDTO(mapper.getTotal(board_idx), mapper.getListWithPaging(cri, board_idx));
	}

}
