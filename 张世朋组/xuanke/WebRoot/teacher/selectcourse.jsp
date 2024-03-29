<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("basePath", basePath);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>selectprofession</title>
<link rel="stylesheet" href="${basePath}css/bootstrap.min.css" />
<script type="application/javascript"
	src="${basePath}js/jquery-1.11.1.min.js"></script>
<script type="application/javascript"
	src="${basePath}js/bootstrap.min.js"></script>
</head>
<style>
.b1 {
	
}

.b2 {
	width: 20%;
	height: 100%;
	background-color: lightgrey;
	position: absolute;
	top: 53px;
}

.b3 {
	width: 450px;
	height: 200px;
	position: absolute;
	top: 200px;
	left: 540px;
}

table {
	font-size: 15px;
}

footer {
	width: 100%;
	background-color: #080808;
	/*     width: 2000px;*/
	height: 200px;
	position: absolute;
	top: 600px;
}

.a2 {
	position: absolute;
	top: 80px;
	left: 400px;
	color: white;
}

.a3 {
	position: absolute;
	top: 80px;
	left: 800px;
	color: white;
}

.c1 {
	width: 500px font-size: 10px;
	position: absolute;
	top: 30px;
	left: 5px;
}

.img1 {
	width: 640px;
	height: 480px;
}

p {
	position: absolute;
	top: 400px;
	left: 200px;
}
</style>
<script Language="JavaScript">
	function projectDelete(id) {
		if (confirm("是否删除流水号为[" + id + "]的一组数据吗？"))
			window.location = "kechengshanchu?ID=" + id;
	}
</script>
<body>

	<img alt="" src="${basePath}teacher/img/beijing.jpg" class="img1">
	<table class="table table-striped c1">
		<tr class="info">
			<th>ID</th>
			<th>课号</th>
			<th>课程</th>
			<th>操作</th>
		</tr>

		<c:set var="index" value="0" />
		<c:forEach items="${requestScope.course}" var="user">
			<tr class="success e1 ">
				<c:set var="index" value="${index+1}" />
				<td>${index}</td>
				<td>${user.getCn()}</td>
				<td>${user.getCno()}</td>
				<td><a href="JavaScript:projectDelete('${user.getID()}')">删除</a>
				</td>
			</tr>
		</c:forEach>

		<p>
			<a href="chengjifenye?page=${paging.indexpage-1}">&lt;&lt; 首页 </a> <a
				href="chengjifenye?page=${paging.page-1 }"> &lt; 上一页 </a> <strong>第${paging.page+1}页/共${paging.pagenumber}页</strong>
			<a href="chengjifenye?page=${paging.page+1}">下一页 &gt;</a> <a
				href="chengjifenye?page=${paging.pagenumber-1}">末页 &gt;&gt;</a>
		</p>
	</table>
</body>
</html>
