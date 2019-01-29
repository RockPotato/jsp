package kr.or.ddit.user.dao;

import java.util.List;

import kr.or.ddit.user.model.UserVO;

public interface IUserDao {
	public List<UserVO> getAllUser();
	public UserVO selectUser(String userId);
}
