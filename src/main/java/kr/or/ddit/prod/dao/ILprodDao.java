package kr.or.ddit.prod.dao;

import java.util.List;

import kr.or.ddit.prod.model.LProdVO;

public interface ILprodDao {
	public List<LProdVO> getAllLprod();
	public LProdVO selectLprod(String lprod_id);
}
