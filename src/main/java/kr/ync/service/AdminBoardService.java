package kr.ync.service;

import java.util.List;


import kr.ync.domain.BoardVO2;
import kr.ync.domain.Criteria;

public interface AdminBoardService {
	public void del(int idx);
	
	public String getImg(int idx);
	
	public void modify(BoardVO2 board);
	
	public BoardVO2 view(int idx);
	
	public void updateCount(int idx);
	
	public List<BoardVO2>ListWithPaging(Criteria cri);
	
	public List<BoardVO2> List();
	//추가
	public int getTotal(Criteria cri);

	public void create(BoardVO2 vo);
}
