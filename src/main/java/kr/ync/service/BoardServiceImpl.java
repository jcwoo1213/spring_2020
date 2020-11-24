package kr.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.BoardVO;
import kr.ync.domain.BoardVO2;
import kr.ync.domain.Criteria;
import kr.ync.mapper.BoardMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BoardServiceImpl implements BoardService {

	// @Setter(onMethod_ = @Autowired)
	// 스프링 4.3 이후 부터 묵시적 주입
	// BoardMappers는 interface 인데 객체로 주입받았다?
	// Java Proxy 기법을 활용해 Mybatis는 MapperProxy라는 InvocationHandler 구현체를 이용하여
	// 인터페이스의 구현체를 동적으로 생성
	@Autowired
	private BoardMapper mapper;
	




//	@Override
//	public List<BoardVO> getListWithPaging(Criteria cri) {
//
//		log.info("get List with criteria: " + cri);
//
//		return mapper.getListWithPaging(cri);
//	}

	@Override
	public int getTotal(Criteria cri) {

		log.info("get total count");
		return mapper.getTotalCount(cri);
	}

	@Override
	public void create(BoardVO2 vo) {
		// TODO Auto-generated method stub
		
		log.info(vo);
		mapper.create(vo);
	}


	
	@Override
	public BoardVO2 view(int idx) {
		// TODO Auto-generated method stub
		return mapper.view(idx);
	}

	@Override
	public void del(int idx) {
		// TODO Auto-generated method stub
		mapper.del(idx);
	}

	@Override
	public void modify(BoardVO2 board) {
		// TODO Auto-generated method stub
		mapper.modify(board);
	}

	@Override
	public List<BoardVO2> ListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		return mapper.ListWithPaging(cri);
	}

	@Override
	public void updateCount(int idx) {
		// TODO Auto-generated method stub
		mapper.updateCount(idx);
	}



}
