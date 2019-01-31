package kr.or.ddit.user.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.user.dao.IUserDao;
import kr.or.ddit.user.dao.UserDaoImpl;
import kr.or.ddit.user.model.UserVO;
import kr.or.ddit.util.model.PageVO;

public class UserServiceImpl implements IUserService {
	
	private IUserDao userDao;
	
	
	public UserServiceImpl() {
		this.userDao = new UserDaoImpl();
	}

	/**
	* Method : getAllUser
	* 작성자 : PC04
	* 변경이력 :
	* @return
	* Method 설명 : 전체 사용자 조회
	*/
	public List<UserVO> getAllUser(){
		return userDao.getAllUser();
	}

	/**
	* Method : selectUser
	* 작성자 : PC04
	* 변경이력 :
	* @param userId
	* @return
	* Method 설명 : 틎정 사용자 조회
	*/
	@Override
	public UserVO selectUser(String userId) {
		return userDao.selectUser(userId);
	}

	@Override
	public Map<String, Object> selectUserPagingList(PageVO pageVo) {
		Map<String,Object> resultMap = new HashMap<String,Object>();
		resultMap.put("userList", userDao.selectUserPagingList(pageVo));
		resultMap.put("getUserCnt", userDao.getUserCnt());
		return resultMap;
	};
}
