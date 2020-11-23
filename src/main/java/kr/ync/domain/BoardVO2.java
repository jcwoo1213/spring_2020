package kr.ync.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO2 {

	private int idx;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private int count;
	private String img;

}
