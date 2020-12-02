package kr.ync.service;

import java.util.List;

import kr.ync.domain.BoardVO2;
import kr.ync.domain.NoticeVO;

public interface MainPageService {
	public List<NoticeVO> getNotice();
	public List<BoardVO2> getBoard();
}
