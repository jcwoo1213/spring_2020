package kr.ync.domain;



import java.util.List;

import lombok.Data;

@Data
public class MemberVO2 {

	private String userid;
	private String userpw;
	private String userName;
	private String auth;
	private boolean enabled;
	private List<AuthVO> authList;
}
