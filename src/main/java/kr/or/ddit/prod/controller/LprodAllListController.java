package kr.or.ddit.prod.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.prod.model.LprodVO;
import kr.or.ddit.prod.service.ILprodService;
import kr.or.ddit.prod.service.LprodServiceImpl;

/**
 * Servlet implementation class LprodAllListController
 */
@WebServlet("/lprodList")
public class LprodAllListController extends HttpServlet {
	private ILprodService service; 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<LprodVO> allLprod = service.getAllLprod();
		request.setAttribute("allLprod",allLprod);
		request.getRequestDispatcher("/prod/lprodList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	@Override
	public void init() throws ServletException {
		service = new LprodServiceImpl();
	}

}
