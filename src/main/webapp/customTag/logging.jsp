<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- localhost/customTag/logging.jsp --%>
<h2>logging.tag</h2>
logging.tag  출력<br>
<tags:loggings/>
logging.tag  출력<br>
<tags:loggings/>

<h2>colorLogging.tag</h2>
<tags:colorLogging size="20" color="yellow"/>
</body>
</html>