package kr.ync.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ync.domain.CommentVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.MessageVO;

public interface ContactMapper {
	public void input(MessageVO message);
	public List<MessageVO> getList(String writer);
	public MessageVO get(int idx);
	public int total(String writer);
	public List<MessageVO> getListWithPaging(@Param("cri")Criteria cri,@Param("writer")String writer);
}
