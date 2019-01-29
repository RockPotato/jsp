package kr.or.ddit.prod.service;

import static org.junit.Assert.*;

import java.util.List;

import kr.or.ddit.prod.model.LProdVO;

import org.junit.Test;

public class LprodServiceImplTest {

	ILprodService service = new LprodServiceImpl();
	
	@Test
	public void testGetAllLprod() {
		List<LProdVO> allLprod = service.getAllLprod();
		assertEquals(17, allLprod.size());
	}
	
	@Test
	public void testSelectLprod(){
		LProdVO selectLprod = service.selectLprod("5");
		assertEquals("5", selectLprod.getLprod_id());
	}

}
