package kr.ync.service;

import java.util.List;

import kr.ync.domain.NoticeVO;
import kr.ync.domain.Criteria;

public interface NoticeService {

	public int del(int idx);
	
	public int modify(NoticeVO notice);
	public NoticeVO view(int idx);
	public void updateCount(int idx);
	public List<NoticeVO>ListWithPaging(Criteria cri);

	//추가
	public int getTotalCount(Criteria cri);
	
	public void create(NoticeVO notice);
}
