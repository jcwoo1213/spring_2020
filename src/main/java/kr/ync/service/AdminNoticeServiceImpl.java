package kr.ync.service;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.domain.Criteria;
import kr.ync.domain.NoticeVO;
import kr.ync.mapper.AdminNoticeMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AdminNoticeServiceImpl implements AdminNoticeService {

	@Autowired
	AdminNoticeMapper mapper;
	@Override
	public int del(int idx) {
		// TODO Auto-generated method stub
		log.info("del"+idx);
		return mapper.del(idx);
	}

	@Override
	public int modify(NoticeVO notice) {
		// TODO Auto-generated method stub
		log.info("modify"+notice);
		return mapper.modify(notice);
	}

	@Override
	public NoticeVO view(int idx) {
		// TODO Auto-generated method stub
		log.info("view"+idx);
		return mapper.view(idx);
	}

	@Override
	public void updateCount(int idx) {
		// TODO Auto-generated method stub
		log.info("updateCount"+idx);
		mapper.updateCount(idx);
	}

	@Override
	public List<NoticeVO> ListWithPaging(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("listwithpaging"+cri);
		return mapper.ListWithPaging(cri);
	}

	@Override
	public int getTotalCount(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("gettotal"+cri);
		return mapper.getTotalCount(cri);
	}

	@Override
	public void create(NoticeVO notice) {
		// TODO Auto-generated method stub
		log.info("create:"+notice);
		mapper.create(notice);
	}

}
