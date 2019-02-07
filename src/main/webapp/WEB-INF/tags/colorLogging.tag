<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="color" type="java.lang.String" required="false"%>
<%@ attribute name="size" type="java.lang.Integer" %>

<font color="skyblue">
	<c:forEach begin="2" end="${size}">=</c:forEach>
</font>