package kr.ync.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class MessagePageDTO {

	  private int replyCnt;
	  private List<MessageVO> list;
}
