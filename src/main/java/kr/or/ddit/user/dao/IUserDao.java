package kr.or.ddit.user.dao;

import java.util.List;

import kr.or.ddit.user.model.UserVO;
import kr.or.ddit.util.model.PageVO;

public interface IUserDao {
	/**
	* Method : getAllUser
	* 작성자 : PC04
	* 변경이력 :
	* @return
	* Method 설명 : 전체 사용자 조회
	*/
	public List<UserVO> getAllUser();
	/**
	* Method : selectUser
	* 작성자 : PC04
	* 변경이력 :
	* @param userId
	* @return
	* Method 설명 : 사용자 조회
	*/
	public UserVO selectUser(String userId);
	
	/**
	* Method : selectUserPagingList
	* 작성자 : PC04
	* 변경이력 :
	* @param pageVo
	* @return
	* Method 설명 : 사용자 페이지 리스트 조회
	*/
	List<UserVO> selectUserPagingList(PageVO pageVo);
	
	int getUserCnt();
}
