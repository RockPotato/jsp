<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fileUpload</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</head>
<body>
	<form action="${pageContext.request.contextPath}/fileUpload" 
	method="post" enctype="multipart/form-data">
		<input type="text" name="userId" value="brown" /> <br/>
		<input type="file" name="uploadFile"/> <br/>
		<input type="submit" value="전송" />
	</form>
</body>
</html>