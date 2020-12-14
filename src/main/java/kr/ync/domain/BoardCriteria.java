package kr.ync.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@ToString
@Getter
@Setter
public class BoardCriteria extends Criteria{

	private int pageNum;
	private int amount;
  


	public BoardCriteria() {
		this(1, 5);
	}

	public BoardCriteria(int pageNum, int amount) {
		
//		if(!StringUtils.isNumeric(String.valueOf(pageNum)) || pageNum == 0) {
//			this.pageNum = 1;
//		} else {
//			this.pageNum = pageNum;
//		}

		//this.pageNum = (!StringUtils.isNumeric(String.valueOf(pageNum)) || pageNum == 0) ? 10 : pageNum;   
		this.pageNum = pageNum;
		this.amount = amount;
	}



}
