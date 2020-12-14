package kr.ync.mapper;

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
public class AdminMemberMapperTest {
	
	@Setter(onMethod_ = @Autowired)
	private AdminMemberMapper mapper;
	
	@Test
	public void getList() {
		Criteria cri=new Criteria();
		cri.setPageNum(1);
		cri.setAmount(10);
		log.info(mapper.ListWithPaging(cri));
	}
}
