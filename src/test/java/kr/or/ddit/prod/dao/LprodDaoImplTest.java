package kr.or.ddit.prod.dao;

import static org.junit.Assert.*;

import java.util.List;

import kr.or.ddit.prod.model.LprodVO;

import org.junit.Test;

public class LprodDaoImplTest {
	ILprodDao dao = new LprodDaoImpl();

	@Test
	public void testGetAllLprod() {
		List<LprodVO> allLprod = dao.getAllLprod();
		assertEquals(17,allLprod.size());
	}
	
	@Test
	public void testSelectLprod(){
		LprodVO selectLprod = dao.selectLprod("5");
		assertEquals(5,selectLprod.getLprod_id());
	}

}
