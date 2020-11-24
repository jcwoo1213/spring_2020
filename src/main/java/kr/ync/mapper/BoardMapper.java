package kr.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ync.domain.BoardVO;
import kr.ync.domain.BoardVO2;
import kr.ync.domain.CommentVO;
import kr.ync.domain.Criteria;

public interface BoardMapper {
	public void modify(BoardVO2 board);

	public int del(int idx);
	
	
	public BoardVO2 view(int idx);


	public void updateCount(int idx);
	public int getTotalCount(Criteria cri);
	
	public void create(BoardVO2 board);
	
	public List<BoardVO2> List();
	
	public List<BoardVO2> ListWithPaging(Criteria cri);
	public int getCount(int idx);
	// 2개 이상의 파라미터를 넘기기위해 @Param 사용. 댓글 추가/삭제 시 amount에 1/-1 값
	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
}
