package kr.or.ddit.prod.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.prod.dao.ILprodDao;
import kr.or.ddit.prod.dao.LprodDaoImpl;
import kr.or.ddit.prod.model.LprodVO;
import kr.or.ddit.util.model.PageVO;

public class LprodServiceImpl implements ILprodService {

	private ILprodDao dao;

	public LprodServiceImpl() {
		dao = new LprodDaoImpl();
	}

	@Override
	public List<LprodVO> getAllLprod() {
		return dao.getAllLprod();
	}

	@Override
	public LprodVO selectLprod(String lprod_id) {
		return dao.selectLprod(lprod_id);
	}

	@Override
	public Map<String, Object> lpordpageList(PageVO pageVo) {
		Map<String, Object> resultList = new HashMap<String, Object>();
		resultList.put("lprodList", dao.lprodpageList(pageVo));
		resultList.put("getLprodCnt", dao.getLprodCnt());
		return resultList;
	}

}
