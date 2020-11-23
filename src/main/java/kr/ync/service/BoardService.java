package kr.ync.service;

import java.util.List;

import kr.ync.domain.BoardVO;
import kr.ync.domain.BoardVO2;
import kr.ync.domain.Criteria;

public interface BoardService {
	public void del(int idx);
	
	public void modify(BoardVO2 board);
	public BoardVO2 view(int idx);
	public void updateCount(int idx);
	public List<BoardVO2>ListWithPaging(Criteria cri);
	public List<BoardVO2> List();
	// 글 등록
	public void register(BoardVO board);
	
	// 글 상세보기
	public BoardVO get(Long bno);
	
	// 글 수정
	public boolean modify(BoardVO board);
	
	// 글 삭제
	public boolean remove(Long bno);
	
	// 전체 글 목록
	public List<BoardVO> getList();
	
//	// 글 목록 페이징 
//	public List<BoardVO> getListWithPaging(Criteria cri);

	//추가
	public int getTotal(Criteria cri);

	public void create(BoardVO2 vo);
}
