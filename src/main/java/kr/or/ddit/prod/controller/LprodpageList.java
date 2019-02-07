package kr.or.ddit.prod.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.prod.model.LprodVO;
import kr.or.ddit.prod.service.ILprodService;
import kr.or.ddit.prod.service.LprodServiceImpl;
import kr.or.ddit.util.model.PageVO;

/**
 * Servlet implementation class LprodpageList
 */
@WebServlet("/LprodpageList")
public class LprodpageList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private ILprodService iLprodService;

	public void init(ServletConfig config) throws ServletException {
		iLprodService = new LprodServiceImpl();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageStr = request.getParameter("page");
		String pageSizeStr = request.getParameter("pageSize");
		
		int page = pageStr == null? 1 : Integer.parseInt(request.getParameter("page"));
		int pageSize = pageSizeStr == null? 5 : Integer.parseInt(request.getParameter("pageSize"));
		
		PageVO pageVo = new PageVO(page,pageSize);
		
		Map<String,Object> resultList = iLprodService.lpordpageList(pageVo);
		List<LprodVO> lprodpageList = (List<LprodVO>) resultList.get("lprodList");
		int lprodCnt = (Integer)resultList.get("getLprodCnt");
		request.setAttribute("page", page);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("lprodList", lprodpageList);
		request.setAttribute("lprodCnt", lprodCnt);
		
		request.getRequestDispatcher("/prod/lprodpageList.jsp").forward(request, response);
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
