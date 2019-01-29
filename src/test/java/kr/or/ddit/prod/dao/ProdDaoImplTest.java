package kr.or.ddit.prod.dao;

import static org.junit.Assert.*;

import java.util.List;

import kr.or.ddit.prod.model.ProdVO;

import org.junit.Test;

public class ProdDaoImplTest {
	private IProdDao dao = new ProdDaoImpl();
	@Test
	public void testGetAllProd() {
		List<ProdVO> allLprod = dao.getAllProd();
		assertEquals(74, allLprod.size());
	}
	@Test
	public void testSelectProd() {
		List<ProdVO> selectProd = dao.selectProd("P202");
		assertEquals(21, selectProd.size());
	}

}
