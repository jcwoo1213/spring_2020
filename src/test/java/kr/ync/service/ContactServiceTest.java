package kr.ync.service;

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
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class ContactServiceTest {

	@Setter(onMethod_ = { @Autowired })
	private ContactService service;
	@Test
	public void getPageTest() {
		Criteria cri=new Criteria();
		cri.setAmount(9);
		cri.setPageNum(1);
		String writer="admin90";
		log.info(service.getListPage(cri, writer));
	}
//	@Test
//	public void createTest() {
//		MessageVO message=new MessageVO();
//		for(int i=0;i<10;i++) {
//			message.setTitle("testTitel"+i);
//			message.setContent("testContent"+i);
//			message.setWriter("admin90");
//			service.create(message);
//		}
//		
//	}
//	@Test
//	public void getListTest() {
//		String writer="temp1";
//		log.info("getList:"+writer);
//		log.info(service.getList(writer));
//	}
//	@Test
//	public void getTest() {
//		int idx=5;
//		log.info(service.get(idx));
//	}
}
