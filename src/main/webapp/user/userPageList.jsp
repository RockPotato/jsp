<%@page import="kr.or.ddit.user.model.UserVO"%>
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/css/dashboard.css"
	rel="stylesheet">

</head>

<body>
	<%@ include file="/header.jsp"%>
	<%-- <%@ include file="left.jsp" %> --%>
	<jsp:include page="/left.jsp"></jsp:include>

	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<h1 class="page-header">전체 사용자 정보조회</h1>

		<%-- <%--             <%=request.getAttribute("userList") %> --%>

		<!--          </div> -->
		<div class="table-responsive">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>#</th>
						<th>사용자아이디</th>
						<th>사용자 이름</th>
						<th>별명</th>
						<th>등록일시</th>
					</tr>
				</thead>
				<tbody>
					<%
						List<UserVO> userList = (List<UserVO>) request
								.getAttribute("userpageList");
						for (int i = 0; i < userList.size(); i++) {

							out.print("<tr class=\"userTr\" data-userid=\""
									+ userList.get(i).getUserId() + "\">");
							out.print("<td>" + "</td>");
							out.print("<td>" + userList.get(i).getUserId() + "</td>");
							out.print("<td>" + userList.get(i).getUserNm() + "</td>");
							out.print("<td>" + "</td>");
							out.print("<td>" + userList.get(i).getReg_dt_fmt() + "</td>");
							out.print("</tr>");

						}
					%>

				</tbody>

			</table>
			<%
				int userCnt = (Integer) request.getAttribute("userCnt");
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
						<li><a href="<%=cp%>/userPageList" aria-label="Previous"> <span
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
						><a href="<%=cp%>/userPageList?page=<%=i%>"><%=i%></a></li>
					<%
						}
					%>	
					<% if(Cpage==lastPage){%>
					<li class="disabled"><a aria-label="Next"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
					<%}else{ %>
					<li><a href="<%=cp%>/userPageList?page=<%=lastPage%>" aria-label="Next"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
					<%} %>
					
				</ul>
			</nav>
		</div>






		<!--    <!-- Bootstrap core JavaScript -->
		<!--     ================================================== -->
		<!--    <!-- Placed at the end of the document so the pages load faster -->
		<!--    <script -->
		<!--       src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
		<%--    <%-- 순서 중요 --%>
		<!--    <script -->
		<!--       src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
</body>
</html>