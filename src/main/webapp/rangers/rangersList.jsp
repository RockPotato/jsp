<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		List<String> rangersList = (List<String>)request.getAttribute("rangersList");
	%>
	<table border="1">
		<tr>
		<th>이름</th>
		</tr>
		<%-- 출력 --%>
		<%
			for (String ranger : rangersList) {
				out.write("<tr>");
				out.write("	<td>");
				out.write(		ranger);
				out.write("	</td>");
				out.write("</tr>");
			}
		%>
	</table>
</body>
</html>