<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/module/jsLib.jsp"%>
<!-- 정적 include -->
</head>
<body>
	<!-- 정적 include -->
	<%@ include file="/module/header.jsp"%>
	<br> module/main.jsp
	<br>

	<%
		RequestDispatcher rd = request
				.getRequestDispatcher("/module/footer.jsp");
		rd.include(request, response);
	%>

</body>
</html>
<%-- localhost/module/main.jsp --%>