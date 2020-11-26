package kr.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AnswerVO {
	private int idx;
	private String title;
	private String content;
	private String writer;
	private int message_idx;
	private Date regdate;
}
