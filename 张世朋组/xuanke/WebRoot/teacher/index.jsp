<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("basePath", basePath);
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${basePath}css/bootstrap.min.css" />
<script type="application/javascript"
	src="${basePath}js/jquery-1.11.1.min.js"></script>
<script type="application/javascript"
	src="${basePath}js/bootstrap.min.js"></script>
<title></title>
<style>
.b2 {
	width: 300px;
	position: absolute;
	top: 0px;
	left: 0px;
}
</style>
</head>
<body>



	​
	<div class="b2">
		<ul class="nav nav-pills nav-stacked b1">
			<li class="active"><a href="welcome.jsp" target="right"
				data-ajax="false">教师管理模块</a></li>
			<li><a href="../selectprofessionservlet" target="right"
				data-ajax="false">查看选课学生</a></li>
			<li><a href="../selectscore" target="right" data-ajax="false">查询所带学生成绩</a></li>
			<li><a href="../teacher/enterscore.jsp" target="right"
				data-ajax="false">录入成绩</a></li>
			<li><a href="../selectcourse1" target="right" data-ajax="false">查看课程</a></li>
			<li><a href="../teacher/addkecheng.jsp" target="right"
				data-ajax="false">添加所授课程</a></li>




		</ul>
	</div>




</body>
</html>