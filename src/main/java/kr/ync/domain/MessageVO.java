package kr.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MessageVO {
	private int idx;
	private String content;
	private String writer;
	private Date regdate;
	private String title;
}
