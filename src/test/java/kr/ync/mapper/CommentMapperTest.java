package kr.ync.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ync.domain.CommentVO;
import kr.ync.domain.Criteria;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CommentMapperTest {
	@Setter(onMethod_ = @Autowired)
	private CommentMapper mapper;
//	@Test
//	public void testList() {
//		Criteria cri=new Criteria();
//		List<CommentVO> comments=mapper.getListWithPaging(cri, 42);
//		comments.forEach(comment -> log.info(comment));
//	}
//	@Test
//	public void testCreate() {
//		for(int i=0;i<30;i++) {
//			CommentVO commentVO=new CommentVO();
//			commentVO.setBoard_idx(42);
//			commentVO.setContent("retest"+i);
//			commentVO.setWriter("admin90");
//			mapper.create(commentVO);
//		}
//		
//	}
//	@Test
//	public void testDelete() {
//		int idx=21;
//		mapper.delete(idx);
//	}
//	@Test
//	public void testgetList() {
//		int board_idx=42;
//		System.out.println(mapper.getList(board_idx));
//	}
//	@Test
//	public void testModify() {
//		CommentVO comment=new CommentVO();
//		comment.setIdx(26);
//		comment.setContent("바뀐댓글");
//		mapper.modify(comment);
//	}
}
