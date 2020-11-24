package kr.ync.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import kr.ync.domain.MemberVO;
import kr.ync.domain.MemberVO2;
import kr.ync.mapper.MemberMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberMapper mapper;
	
	public void create_member(MemberVO2 member) {
		log.info(member);

		System.out.println(member);
		mapper.create(member);
	}

	@Override
	public int getCount(String userid) {
		// TODO Auto-generated method stub
		return mapper.getCount(userid);
	}

}
