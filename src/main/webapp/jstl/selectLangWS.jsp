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

	<form id="frmSelect" method="get" action="/selectLang">
		<select id="lang" name="lang">
			<!-- name 속성을 부여해야 파라미터 보냄 -->
			<option value="ko" >한국어</option>
			<option value="ja" >日本の言葉</option>
			<option value="en" >english</option>
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
	$(document).ready(function(){
		//sekect box selected 적용
		$("#lang > option").attr("selected",false);
		$("#lang > option[value=${lang}]").attr("selected",true);
	})
		$("#lang").on("change", function() {
			$("#frmSelect").submit();
		})
	</script>
</body>
</html>