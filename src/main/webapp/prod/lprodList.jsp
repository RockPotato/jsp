<%@page import="kr.or.ddit.prod.model.LprodVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Dashboard Template for Bootstrap</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Custom styles for this template -->
<link href="${cp}/css/dashboard.css"
	rel="stylesheet">

</head>

<body>
	<%@ include file="/header.jsp"%>
	<%-- <%@ include file="left.jsp" %> --%>
	<jsp:include page="/left.jsp"></jsp:include>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<h1 class="page-header">전체 상품 카테고리 리스트</h1>
		<!-- userList 정보를 화면에 출력하는 로직 작성  -->
		<div class="table-responsive">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>상품 분류 id</th>
						<th>상품 분류 코드</th>
						<th>상품 분류 이름</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${allLprod}" var="lprodVo">
					<tr class="lprodTr" data-lprodgu="${lprodVo.lprod_gu }">
						<td>${lprodVo.lprod_id}</td>
						<td>${lprodVo.lprod_gu}</td>
						<td>${lprodVo.lprod_nm}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<%-- 순서 중요 --%>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script>
		//문서 로딩이 완료된 이후 이벤트 등록
		$(document).ready(function(){
			console.log("document ready");
			
			// 사용자 tr 태그 클릭시 이벤트 핸들러
			/* $(".userTr").click(function(){
				
			}); */
			$(".lprodTr").on("click",function(){
				var index = $(".lprodTr").rowIndex;
				var id = $(this).children()[1].innerHTML;
				var lprodGu =$(this).data("lprodgu");
				
				// /user
				// 1. document
				//	document.location="/user?userId="+userId;
				
				// 2. form
				$("#lprodGu").val(lprodGu);
				/* $("#frm").attr("action","/userAllList"); */
				$("#frm").submit();
				
			});
		});
	</script>
	
	<form id="frm" action="${request.getContextPath()}/prodList" method="get">
		<input type="hidden" id="lprodGu" name="lprodGu"/>
	</form>
	
</body>
</html>
