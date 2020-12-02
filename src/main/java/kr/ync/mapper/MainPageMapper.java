package kr.ync.mapper;

import java.util.List;

import kr.ync.domain.BoardVO2;
import kr.ync.domain.NoticeVO;

public interface MainPageMapper {
	public List<NoticeVO> getNotice();
	public List<BoardVO2> getBoard();
}
