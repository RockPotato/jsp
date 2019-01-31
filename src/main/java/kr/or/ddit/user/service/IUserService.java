package kr.or.ddit.user.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.user.model.UserVO;
import kr.or.ddit.util.model.PageVO;

public interface IUserService {
	public List<UserVO> getAllUser();
	public UserVO selectUser(String userId);
	Map<String,Object> selectUserPagingList(PageVO pageVo);
}
