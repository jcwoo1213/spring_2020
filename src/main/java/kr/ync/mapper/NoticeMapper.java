package kr.ync.mapper;

import java.util.List;

import kr.ync.domain.BoardVO2;
import kr.ync.domain.Criteria;
import kr.ync.domain.NoticeVO;

public interface NoticeMapper {

	public int modify(NoticeVO notice);

	public int del(int idx);
	
	
	public NoticeVO view(int idx);


	public void updateCount(int idx);
	public int getTotalCount(Criteria cri);
	
	public void create(NoticeVO notice);
	
	public List<NoticeVO> List();
	
	public List<NoticeVO> ListWithPaging(Criteria cri);
	public int getCount(int idx);
}
