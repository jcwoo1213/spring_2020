package kr.ync.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ync.domain.CommentPageDTO;
import kr.ync.domain.CommentVO;
import kr.ync.domain.Criteria;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class CommentServiceTests {

	@Setter(onMethod_ = { @Autowired })
	private CommentService service;
//	@Test
//	public void testPageList() {
//		Criteria cri=new Criteria();
//		cri.setPageNum(2);
//		cri.setAmount(10);
//		
//		System.out.println(service.getListPage(cri, 42));
//		log.info(service.getListPage(cri, 42));
//	}
//	@Test
//	public void testCreate() {
//		CommentVO comment=new CommentVO();
//		comment.setBoard_idx(42);
//		comment.setContent("test4");
//		comment.setWriter("admin90");
//		service.create(comment);
//	}
	@Test
	public void testDelete() {
		int idx=64;
		service.delete(idx);
	}
//	@Test
//	public void testGetList() {
//		int board_idx=42;
//		Criteria cri=new Criteria();
//		log.info(service.getList(cri, board_idx));
//	}
//	@Test
//	public void testModify() {
//		CommentVO comment=new CommentVO();
//		comment.setIdx(26);
//		comment.setContent("re다시바뀐댓글");
//		service.modify(comment);
//	}
}
