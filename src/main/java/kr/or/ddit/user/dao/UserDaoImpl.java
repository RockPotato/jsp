package kr.or.ddit.user.dao;

import java.util.List;

import kr.or.ddit.db.mybatis.MybatisSqlSessionFactory;
import kr.or.ddit.user.model.UserVO;
import kr.or.ddit.util.model.PageVO;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class UserDaoImpl implements IUserDao {
	/**
	* Method : getAllUser
	* 작성자 : PC04
	* 변경이력 :
	* @return
	* Method 설명 : 전체 사용자 조회
	*/
	@Override
	public List<UserVO> getAllUser(){
		SqlSessionFactory sqlSessionFactory = MybatisSqlSessionFactory.getSqlSessionFactory();
		SqlSession openSession = sqlSessionFactory.openSession();
		List<UserVO> list =openSession.selectList("user.getAllUser");
		openSession.close();
		
		return list;
	}

	

	/**
	* Method : selectUser
	* 작성자 : PC04
	* 변경이력 :
	* @return
	* Method 설명 : 틎정 사용자 조회
	*/
	@Override
	public UserVO selectUser(String userId) {
		SqlSessionFactory sqlSessionFactory = MybatisSqlSessionFactory.getSqlSessionFactory();
		SqlSession openSession = sqlSessionFactory.openSession();
		UserVO userVo = openSession.selectOne("user.selectUser",userId);
		openSession.close();
		return userVo;
	}



	@Override
	public List<UserVO> selectUserPagingList(PageVO pageVo) {
		SqlSessionFactory sqlSessionFactory= MybatisSqlSessionFactory.getSqlSessionFactory();
		SqlSession openSession =sqlSessionFactory.openSession();
		List<UserVO> userPageList =openSession.selectList("user.selectUserPagingList" , pageVo);
		openSession.close();
		return userPageList;
	}



	@Override
	public int getUserCnt() {
		SqlSessionFactory sqlSessionFactory= MybatisSqlSessionFactory.getSqlSessionFactory();
		SqlSession openSession =sqlSessionFactory.openSession();
		int userCnt =openSession.selectOne("user.getUserCnt");
		openSession.close();
		return userCnt;
	};
}
