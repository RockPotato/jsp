package kr.or.ddit.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sumCalculation")
public class SumCalculation extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int start =Integer.parseInt(request.getParameter("start"));
		int end = Integer.parseInt(request.getParameter("end"));
		int sumResult =0;
		for (int i = start; i <= end; i++) {
			sumResult+=i;
		}
		System.out.println(sumResult);
		request.getSession().setAttribute("sumResult",sumResult);
		request.getRequestDispatcher("/jsp/sumResult.jsp").forward(request, response);
	}

}
