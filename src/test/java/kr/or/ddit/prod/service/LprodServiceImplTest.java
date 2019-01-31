package kr.or.ddit.prod.service;

import static org.junit.Assert.*;

import java.util.List;

import kr.or.ddit.prod.model.LprodVO;

import org.junit.Test;

public class LprodServiceImplTest {

	ILprodService service = new LprodServiceImpl();
	
	@Test
	public void testGetAllLprod() {
		List<LprodVO> allLprod = service.getAllLprod();
		assertEquals(17, allLprod.size());
	}
	
	@Test
	public void testSelectLprod(){
		LprodVO selectLprod = service.selectLprod("5");
		assertEquals("5", selectLprod.getLprod_id());
	}

}
