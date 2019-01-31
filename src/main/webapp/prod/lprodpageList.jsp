<%@page import="kr.or.ddit.prod.model.LprodVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
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
<link rel="stylesheet"6
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/css/dashboard.css"
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
					<%
					List<LprodVO> LprodList = (List<LprodVO>)request.getAttribute("lprodList");
						for(int i =0; i<LprodList.size(); i++){   
					            
					                out.print("<tr class=\"LprodTr\" data-lprodgu=\""+LprodList.get(i).getLprod_gu()+"\">");
					            	out.print("<td>"+"</td>");
					              	out.print("<td>"+LprodList.get(i).getLprod_nm()+"</td>");
					              	out.print("<td>"+LprodList.get(i).getLprod_gu()+"</td>");
					              	out.print("<td>"+"</td>");
					                out.print("</tr>");
					              }
					%>

				</tbody>
			</table>
				<%
				int userCnt = (Integer) request.getAttribute("lprodCnt");
				int pageSize = (Integer) request.getAttribute("pageSize");
				int lastPage = userCnt / pageSize
						+ (userCnt % pageSize > 0 ? 1 : 0);
				int Cpage = (Integer)request.getAttribute("page");
				String cp = request.getContextPath();
			%>

			<nav style="text-align: center;">
				<ul class="pagination">
				<%if(Cpage==1){ %>
					<li class="disabled"><a aria-label="Previous"> <span
							aria-hidden="true">&laquo;</span>
						
					</a></li>
						<%}else{ %>
						<li><a href="<%=cp%>/LprodpageList" aria-label="Previous"> <span
							aria-hidden="true">&laquo;</span>
							</a>
							</li>
						
						<%} %>
					<%
						for (int i = 1; i <= lastPage; i++) {
						
					%>
					
					<li
					<%if(i ==Cpage){%>
					class="active"
						<% }%>
						><a href="<%=cp%>/LprodpageList?page=<%=i%>"><%=i%></a></li>
					<%
						}
					%>	
					<% if(Cpage==lastPage){%>
					<li class="disabled"><a aria-label="Next"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
					<%}else{ %>
					<li><a href="<%=cp%>/LprodpageList?page=<%=lastPage%>" aria-label="Next"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
					<%} %>
					
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
				console.log("document reday");

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
		
		<form id="frm" action="<%=request.getContextPath() %>/prodList" method ="get">
			<input type="hidden" id="lprodGu" name ="lprodGu"/>
		</form>
</body>
</html>
<%-- localhost/module/main.jsp --%>