<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-3 col-md-2 sidebar">
			<ul class="nav nav-sidebar">
				<li><a href="<%=request.getContextPath()%>/userAllList">사용자 리스트</a></li>
				<li><a href="<%=request.getContextPath()%>/userPagingList">사용자 리스트 페이징 조회</a></li>
			</ul>
			<ul class="nav nav-sidebar">
				<li><a href="<%=request.getContextPath()%>/lprodList">제품 그룹리스트 리스트</a></li>
				<li><a href="<%=request.getContextPath()%>/LprodpageList">제품리스트 리스트 페이징 조회</a></li>
			</ul>
		</div>
	</div>
</div>
