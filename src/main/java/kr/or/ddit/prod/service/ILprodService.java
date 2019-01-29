package kr.or.ddit.prod.service;

import java.util.List;

import kr.or.ddit.prod.model.LProdVO;

public interface ILprodService {
	public List<LProdVO> getAllLprod();
	public LProdVO selectLprod(String lprod_id);
}
