package kr.ync.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;


import kr.ync.domain.MemberVO2;
import kr.ync.mapper.MemberMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberMapper mapper;
	


	@Override
	public int getCount(String userid) {
		// TODO Auto-generated method stub
		return mapper.getCount(userid);
	}



	@Override
	public int create(MemberVO2 member) {
		// TODO Auto-generated method stub
		return mapper.create(member);
	}

}
