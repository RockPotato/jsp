package kr.or.ddit.user.service;

import java.util.List;

import kr.or.ddit.user.model.UserVO;

public interface IUserService {
	public List<UserVO> getAllUser();
	public UserVO selectUser(String userId);
}
