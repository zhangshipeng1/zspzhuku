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
	width: 300px;
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
	top: 120px;
	left: 160px;
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

.b1 {
	font-size: 15px;
}

.s1 {
	font-size: 20px;
	text-align: center;
	font-weight: 600;
}
</style>

<body>

	<img alt="" src="${basePath}teacher/img/beijing.jpg" class="img1">
	<form action="${basePath}addcnoservlet" name="enterscore" method="post">
		<table class="table table-hover c1" border="2">
			<tr class="info">
				<td colspan="2" class="s1">添加所教课程</td>
			</tr>
			<tr class="success">
				<td class="b1" align="right">课程号：</td>
				<td><input type="text" name="cno" value=""></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit"
					class="btn btn-primary" value="提交" /></td>
			</tr>
		</table>
	</form>

</body>
</html>
