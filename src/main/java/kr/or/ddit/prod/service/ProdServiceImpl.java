package kr.or.ddit.prod.service;

import java.util.List;

import kr.or.ddit.prod.dao.IProdDao;
import kr.or.ddit.prod.dao.ProdDaoImpl;
import kr.or.ddit.prod.model.ProdVO;

public class ProdServiceImpl implements IProdService{
	
	private IProdDao dao;
	
	public ProdServiceImpl() {
		dao = new ProdDaoImpl();
	}

	@Override
	public List<ProdVO> getAllProd() {
		return dao.getAllProd();
	}

	@Override
	public List<ProdVO> selectProd(String prod_lgu) {
		return dao.selectProd(prod_lgu);
	}

}
