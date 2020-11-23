package kr.ync.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ync.domain.Criteria;
import kr.ync.domain.MessageVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ContactMapperTEST {
	@Setter(onMethod_ = @Autowired)
	private ContactMapper mapper;
	@Test
	public void getListTest() {
		Criteria cri=new Criteria();
		cri.setPageNum(1);
		cri.setAmount(9);
		String writer="admin90";
		mapper.getListWithPaging(cri, writer);
	}
//	@Test
//	public void createTest() {
//		MessageVO message=new MessageVO();
//		message.setContent("test");
//		message.setWriter("temp1");
//		mapper.input(message);
//	}
//	@Test
//	public void getListTest() {
//		String writer="temp1";
//		log.info(mapper.getList(writer));
//	}
//	@Test
//	public void getTest() {
//		int idx=5;
//		log.info(mapper.get(idx));
//	}
}
