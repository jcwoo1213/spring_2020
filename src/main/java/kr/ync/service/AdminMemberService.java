package kr.ync.service;

import java.util.List;

import kr.ync.domain.Criteria;
import kr.ync.domain.MemberVO2;

public interface AdminMemberService {

	public MemberVO2 read2(String userid);
	public void create(MemberVO2 member);
	public int getCount(String userid);
	public List<MemberVO2> ListWithPaging(Criteria cri);
	public int getTotalCount();
	public int delete (String userid);
}
