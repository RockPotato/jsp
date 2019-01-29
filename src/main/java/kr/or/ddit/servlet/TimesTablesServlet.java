package kr.or.ddit.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TimesTablesServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter pw = resp.getWriter();
		pw.println("<!DOCTYPE html>                            ");
		pw.println("<html>                                     ");
		pw.println("<head>                                     ");
		pw.println("<meta charset=\"UTF-8\">                    ");
		pw.println("<title>Insert title here</title>           ");
		pw.println("</head>                                    ");
		pw.println("<body>                                     ");
		pw.println("<table border=\"1\">                                   ");
		for (int i = 2; i < 10; i++) {
			pw.println("<tr>                                   ");
			for (int j = 1; j < 10; j++) {
				pw.println("<td>"+i+"  *"+j +" = "+ i*j+"</td>                      ");
			}
			pw.println("</tr>                                   ");
		}
		pw.println("</table>                                   ");
		pw.println("</body>                                    ");
		pw.println("</html>                                    ");
		pw.println("                                           ");
		pw.flush();
		pw.close();
	}

	@Override
	public void destroy() {
	}

	@Override
	public void init() throws ServletException {
	}
	
}
