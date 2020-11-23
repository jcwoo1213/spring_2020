package kr.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommentVO {
	
	private String content;
	private String writer;
	private int board_idx;
	private int idx;
	private Date regdate;
}
