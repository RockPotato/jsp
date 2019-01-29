package kr.or.ddit.user.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import kr.or.ddit.user.model.UserVO;

import org.junit.Test;

public class UserServiceImplTest {

	IUserService service = new UserServiceImpl();
	//getAllUser 메소드를 테스트 하는 메소드 작성
	@Test
	public void testGetAllUser() {
		/***Given***/
		/***When***/
		List<UserVO> allUser = service.getAllUser();
		/***Then***/
		for (int i = 0; i < allUser.size(); i++) {
			System.out.println(allUser.get(i));
		}
		
		assertEquals(5, allUser.size());
		assertNotNull(service.getAllUser());
	}
	
	@Test
	public void testSelectUser(){
		UserVO selectUser = service.selectUser("moon");
			System.out.println(selectUser);
		assertEquals("moon",selectUser.getUserId());
	}

}
