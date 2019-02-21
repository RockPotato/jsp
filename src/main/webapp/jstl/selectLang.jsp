<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	select 변경 (ko ->ja) --> selectLang.jsp로 요청
	1.select로 변경한 로케일이 설정된 selectLang.jsp가 화면에 출력되도록
	2.select box option태그가 요청한 로케일로 선택이 되도록 설정
	3. 만약 로케일 파라미터가 없을 경우 기본값은 ko
	
 
 --%>
	<%
		// localhost/jstl/selectLang.jsp ===> lang 파라미터 미존재
		// form (button ->select) ==> lang 파라미터 존재

		String lang = request.getParameter("lang");
		lang = lang == null ? "ko" : lang;
		pageContext.setAttribute("lang", lang);
	%>


	<form id="frmSelect" method="get"
		action="${cp}/jstl/selectLang.jsp">
		<select id="lang" name="lang">
			<!-- name 속성을 부여해야 파라미터 보냄 -->
			<option value="ko" <c:if test="${lang =='ko'}">selected</c:if>>한국어</option>
			<option value="ja" <c:if test="${lang =='ja'}">selected</c:if>>日本の言葉</option>
			<option value="en" <c:if test="${lang =='en'}">selected</c:if>>english</option>
		</select><br> <!-- <input type="submit" value="전송"> -->
	</form>

	<fmt:setLocale value="${param.lang}" />
	<fmt:setBundle basename="kr.or.ddit.msg.msg" />
	<fmt:message key="hello" />
	<fmt:message key="visitor">
		<fmt:param value="james" />
		<fmt:param value="age" />
		<fmt:param value="alias" />
	</fmt:message>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script>
		"${param.lang}" == "" ? $("#lang").val("ko") : $("#lang").val(
				"${param.lang}");// 원리 여쭤보기

		$("#lang").on("change", function() {
			$("#frmSelect").submit();
		})
	</script>
</body>
</html>