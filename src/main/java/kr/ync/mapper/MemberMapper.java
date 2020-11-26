package kr.ync.mapper;

import kr.ync.domain.MemberVO;
import kr.ync.domain.MemberVO2;

public interface MemberMapper {

	
	public MemberVO2 read2(String userid);
	public int create(MemberVO2 member);
	public int getCount(String userid);
}
