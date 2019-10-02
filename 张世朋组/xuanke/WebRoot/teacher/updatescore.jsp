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
	width: 300px;
	font-size: 10px;
	position: absolute;
	top: 150px;
	left: 150px;
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

.s1 {
	font-size: 15px;
}

.f1 {
	font-size: 20px;
}
</style>

<body>
	<img alt="" src="${basePath}teacher/img/beijing.jpg" class="img1">
	<form action="${basePath}updatescorepage" name="update" method="post">
		<table class="table table-striped c1" border="1">
			<tr>
				<th colspan="2" align="center" class="f1">修改成绩</th>
			</tr>
			<tr class="info">
				<input type="hidden" name="managerid" value="${teach.getID()}">
				<td class="s1">原成绩</td>
				<td>${teach.getScore()}<input type="hidden" name="yuanscore"
					value="${teach.getScore()}"></td>
			</tr>
			<tr class="success">

				<td class="s1">改后成绩</td>
				<td><input type="text" name="gaiscore" value=""></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					class="btn btn-primary" value="提交" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
