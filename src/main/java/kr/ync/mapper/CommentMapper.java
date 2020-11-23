package kr.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ync.domain.CommentVO;
import kr.ync.domain.Criteria;

public interface CommentMapper {
	public void create(CommentVO comment);
	
	public int delete(int idx);
	
	public List<CommentVO> getList(int board_idx);
	
	public int modify(CommentVO comment);

	public List<CommentVO> getListWithPaging(@Param("cri")Criteria cri,@Param("board_idx") int board_idx);
	
	public CommentVO get(int idx);
	
	public int getTotal(int board_idx);
}
