package kr.ync.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.Criteria;
import kr.ync.domain.MemberVO2;
import kr.ync.mapper.AdminMemberMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AdminMemberServiceImpl implements AdminMemberService {

	@Autowired
	AdminMemberMapper mapper;
	@Override
	public MemberVO2 read2(String userid) {
		// TODO Auto-generated method stub
		return mapper.read2(userid);
	}

	@Override
	public void create(MemberVO2 member) {
		// TODO Auto-generated method stub
		mapper.create(member);
	}

	@Override
	public int getCount(String userid) {
		// TODO Auto-generated method stub
		return mapper.getCount(userid);
	}

	@Override
	public List<MemberVO2> ListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
	
		return mapper.ListWithPaging(cri);
	}

	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return mapper.getTotalCount();
	}

	@Override
	public int delete(String userid) {
		// TODO Auto-generated method stub
		 return mapper.delete(userid);
	}

}
