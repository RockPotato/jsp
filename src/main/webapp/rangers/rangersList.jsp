<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<h2>스크립틀릿 / 표현식</h2>
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
	<h2> jstl / el</h2>
	<table border="1">
		<tr>
			<th>이름</th>
		</tr>
		<%-- 출력 --%>
		<%-- 
			for(String str : request.getAttribute("rangersList"))
		 --%>
		<c:forEach items="${rangersList}" var="ranger" >
			<tr>
				<td>${ranger}</td>
			</tr>
		</c:forEach>
	</table>
	<h2>jstl / el - vo</h2>
	<table border="1">
		<tr>
			<th>이름</th>
			<th>별명</th>
			<th>나이</th>
		</tr>
		<c:forEach items="${rangersVOList}" var="ranger">
			<tr>
				<td>${ranger.name} / ${ranger.getName() } / ${ranger.test }</td> <%-- testGetter : getTest() --%>
				<%-- getter가 있어야 하고 속성명을 적으면 getter 호출 접근제어자 상관x --%>
				<td>${ranger.alias}</td>
				<td>${ranger.age}</td>
			</tr>
		</c:forEach>
	</table>
	
	<h2> 동일한 속성명</h2>
	userName(request - 표현식) : <%=request.getAttribute("userName") %><br>
	userName(application - 표현식) : <%=application.getAttribute("userName") %><br>
	userName(el - default) : ${userName}<br>
	userName(el - request) : ${requestScope.userName}<br>
	userName(el - session) : ${sessionScope.userName}<br>
	userName(el - application) : ${applicationScope.userName}<br>
	
	<h2>el 기본객체 param</h2>
	표현식 : <%=request.getParameter("p") %><br>
	el : ${param.p }<br>
</body>
</html>