<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	java.util.Date date = new java.util.Date();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<script type="application/javascript" src="../js/jquery-1.11.1.min.js"></script>
<script type="application/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">学生选课系统</a>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-time"></span>
						<%=date.getYear() + 1900%>年<%=date.getMonth() + 1%>月<%=date.getDate()%>日</a></li>
				<li><a href="teacherLogin.jsp" target="kongbai.html"><span
						class="glyphicon glyphicon-log-in"></span> 登录</a></li>
			</ul>
		</div>
	</nav>
</body>
</html>
