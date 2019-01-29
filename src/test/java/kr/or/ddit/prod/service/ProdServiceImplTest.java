package kr.or.ddit.prod.service;

import static org.junit.Assert.*;

import java.util.List;

import kr.or.ddit.prod.model.LProdVO;
import kr.or.ddit.prod.model.ProdVO;

import org.junit.Test;

public class ProdServiceImplTest {

	IProdService service = new ProdServiceImpl();
	
	@Test
	public void testGetAllLprod() {
		List<ProdVO> allLprod = service.getAllProd();
		assertEquals(74, allLprod.size());
	}
	
	@Test
	public void testSelectLprod(){
		List<ProdVO> selectProd = service.selectProd("P202");
		assertEquals(21, selectProd.size());
	}

}
