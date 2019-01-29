package kr.or.ddit.user.dao;

import static org.junit.Assert.*;

import java.util.List;

import kr.or.ddit.user.model.UserVO;

import org.junit.Test;

public class UserDaoImplTest {
	 IUserDao userDaoImpl = new UserDaoImpl();

	//getAllUser 메소드를 테스트 하는 메소드 작성
	@Test
	public void testGetAllUser() {
		/***Given***/
		/***When***/
		List<UserVO> allUser = userDaoImpl.getAllUser();
		/***Then***/
		for (int i = 0; i < allUser.size(); i++) {
			System.out.println(allUser.get(i));
		}
		assertEquals(5, allUser.size());
		assertNotNull(userDaoImpl.getAllUser());
	}
	
	@Test
	public void testSelectUser(){
		UserVO selectUser = userDaoImpl.selectUser("moon");
		System.out.println(selectUser);
		assertEquals("moon",selectUser.getUserId());
	}

}
