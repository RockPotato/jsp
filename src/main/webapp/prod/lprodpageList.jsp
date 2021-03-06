<%@page import="kr.or.ddit.prod.model.LprodVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<!-- 정적 include -->
	<br>

	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<h1 class="page-header">전체 상품 정보조회</h1>


		<!--          </div> -->
		<div class="table-responsive">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>#</th>
						<th>Lprod_gu</th>
						<th>Lprod_nm</th>
						<!-- 						<th>Lprod_nm</th> -->
						<th>등록일시</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${lprodList}" var="lprodVo">
						<tr class="LprodTr" data-lprodgu="${lprodVo.lprod_gu}">
							<td>--</td>
							<td>${lprodVo.lprod_nm}</td>
							<td>${lprodVo.lprod_gu}</td>
							<td>-</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<c:set var="lastPage"
				value="${Integer(lprodCnt / pageSize + (lprodCnt % pageSize > 0 ? 1 : 0))}" />

			<nav style="text-align: center;">
				<ul class="pagination">
					<c:choose>
						<c:when test="${page==1 }">
							<li class="disabled">
								<a aria-label="Previous"> 
								<span aria-hidden="true">&laquo;
								</span>
								</a>
							</li>
						</c:when>
						<c:otherwise>
							<li>
								<a href="${request.getContextPath()}/LprodpageList" aria-label="Previous">
								<span aria-hidden="true">&laquo;
								</span>
								</a>
							</li>
						</c:otherwise>
					</c:choose>
					<c:forEach begin="1" end="${lastPage}" var="i">
						<c:set var="active" value=""/>
						<c:if test="${page== i}">
							<c:set var="active" value="active"/>
						</c:if>
						<li class="${active}"><a href="${cp }/LprodpageList?page=${i}">${i}</a></li>
					</c:forEach>
						
					<c:choose>
						<c:when test="${page==lastPage }">
							<li class="disabled"><a aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="${cp }/LprodpageList?page=${lastPage}"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</c:otherwise>
					</c:choose>
					
				</ul>
			</nav>
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
			$(document).ready(function() {
				console.log("document ready");

				//사용시 TR 태그 클릭시 이벤트 핸들러
				$(".LprodTr").on("click", function() {
					console.log("LprodTr click");
					var lprodGu = $(this).data("lprodgu");

					// /user/

					// 						1. document
					// 						document.location = "/prod/prod?lprod_gu=" + lprod_gu;
					// 						2. form 
					$("#lprodGu").val(lprodGu);
					// 						$("#frm").attr("action","/prodallList");
					$("#frm").submit();

				});
			});
		</script>

		<form id="frm" action="${request.getContextPath() }/prodList"
			method="get">
			<input type="hidden" id="lprodGu" name="lprodGu" />
		</form>
</body>
</html>
<%-- localhost/module/main.jsp --%>