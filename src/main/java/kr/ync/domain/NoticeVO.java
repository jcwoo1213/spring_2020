package kr.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeVO {

	private int idx;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private int count;
	
}
