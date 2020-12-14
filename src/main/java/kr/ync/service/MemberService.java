package kr.ync.service;


import kr.ync.domain.MemberVO2;

public interface MemberService {

	public int create(MemberVO2 member);
	
	public int getCount(String userid);
}
