package kr.ync.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ync.domain.Criteria;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

@Log4j
public class AdminMemberServiceTest {

	@Setter(onMethod_ = { @Autowired })
	private AdminMemberService service;
	
	@Test
	public void getList() {
		Criteria cri=new Criteria(1, 10);
		service.ListWithPaging(cri);
	}
}
