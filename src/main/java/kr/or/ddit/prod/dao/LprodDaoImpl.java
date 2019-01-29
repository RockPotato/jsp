package kr.or.ddit.prod.dao;

import java.util.List;

import kr.or.ddit.db.mybatis.MybatisSqlSessionFactory;
import kr.or.ddit.prod.model.LProdVO;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class LprodDaoImpl implements ILprodDao {

	@Override
	public List<LProdVO> getAllLprod() {
		SqlSessionFactory sqlSessionFactory = MybatisSqlSessionFactory.getSqlSessionFactory();
		SqlSession openSession = sqlSessionFactory.openSession();
		List<LProdVO> list =openSession.selectList("lprod.getAllLprod");
		openSession.close();
		
		return list;
	}

	@Override
	public LProdVO selectLprod(String lprod_id) {
		SqlSessionFactory sqlSessionFactory = MybatisSqlSessionFactory.getSqlSessionFactory();
		SqlSession openSession = sqlSessionFactory.openSession();
		LProdVO lprodVo=(LProdVO) openSession.selectOne("lprod.selectLprod",lprod_id);
		openSession.close();
		return lprodVo;
	}

}
