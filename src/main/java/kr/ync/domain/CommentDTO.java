package kr.ync.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor

public class CommentDTO {
	private int commentCnt;
	private List<CommentVO> list;
}
