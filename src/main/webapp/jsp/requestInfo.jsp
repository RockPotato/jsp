<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>requestInfo</title>
</head>
<body>
<%
	// jsp 기본 객체 : jsp에서 기본적으로 제공해주는 객체(객체 선언 없이 )
	// request, response
	request.getLocalAddr();
%>
<%-- 서버 ip 주소 --%>
request.getLocalAddr() : <%=request.getLocalAddr() %><br>

<%-- 클라이언트 ip 주소 --%>
request.getRemoteAddr() : <%=request.getRemoteAddr() %><br>

<%-- 요청 메소드(HttpServlet service)--%>
request.getMethod() : <%=request.getMethod() %><br>

<%-- 요청 URI --%>
request.getRequestURI() : <%=request.getRequestURI() %><br>
request.getRequestURL() : <%=request.getRequestURL() %><br>

<%-- context path : web context --%>
request.getContextPath() : <%=request.getContextPath() %><br>

<%-- server name --%>
request.getServerName() : <%=request.getServerName() %><br>
</body>
</html>