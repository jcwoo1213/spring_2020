package kr.ync.service;

import java.util.List;

import kr.ync.domain.CommentPageDTO;
import kr.ync.domain.CommentVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.PageDTO;

public interface CommentService {
	
	public void create(CommentVO comment);
	public int delete(int idx);
	public CommentVO get(int idx);
	public int modify(CommentVO comment);
	public List<CommentVO> getList(Criteria cri,Integer board_idx);
	public List<CommentVO> getListWithPaging(Criteria cri, int board_idx);
	public int getTotal(int board_idx);
	public CommentPageDTO getListPage(Criteria cri,int board_idx);
}
