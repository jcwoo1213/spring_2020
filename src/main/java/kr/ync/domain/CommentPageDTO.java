package kr.ync.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class CommentPageDTO {

	  private int replyCnt;
	  private List<CommentVO> list;
}
