package kr.or.ddit.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class selectLang
 */
@WebServlet("/selectLang")
public class selectLang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lang = request.getParameter("lang");
		lang = lang == null ? "ko" :lang;
		request.setAttribute("lang", lang);
		request.getRequestDispatcher("/jstl/selectLangWS.jsp").forward(request, response);
	}

}
