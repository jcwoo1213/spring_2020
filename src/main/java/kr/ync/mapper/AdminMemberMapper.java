package kr.ync.mapper;

import java.util.List;

import kr.ync.domain.Criteria;
import kr.ync.domain.MemberVO2;

public interface AdminMemberMapper {

	public MemberVO2 read2(String userid);
	public int create(MemberVO2 member);
	public int getCount(String userid);
	public List<MemberVO2> ListWithPaging(Criteria cri);
	public int getTotalCount();
	public int delete (String userid);
	
}
