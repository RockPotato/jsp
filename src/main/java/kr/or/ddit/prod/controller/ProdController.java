package kr.or.ddit.prod.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.prod.model.ProdVO;
import kr.or.ddit.prod.service.IProdService;
import kr.or.ddit.prod.service.ProdServiceImpl;

/**
 * Servlet implementation class ProdController
 */
@WebServlet("/prodList")
public class ProdController extends HttpServlet {
	private IProdService service;
	
	
	@Override
	public void init() throws ServletException {
		service = new ProdServiceImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lprodGu = request.getParameter("lprodGu");
		List<ProdVO> selectProd = service.selectProd(lprodGu);
		request.setAttribute("selectProd",selectProd);
		request.getRequestDispatcher("/prod/prodList.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

