<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Factorial 구하기</h3>
	<%!public static int factorial(int param) {
		if (param < 0) {
			return 0;
		} else if (param == 0) {
			return 1;
		}
		return param * factorial(param - 1);
	}%>
	<%
		for (int i = 1; i < 9; i++) {
	%>
	<h4>
		factorial :<%=i%>!
	</h4><%=factorial(i)%>
	<%
		}
	%>
</body>
</html>