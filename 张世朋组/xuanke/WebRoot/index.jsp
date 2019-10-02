<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.List"%>
<%
	java.util.Date date = new java.util.Date();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script type="application/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="application/javascript" src="js/bootstrap.min.js"></script>
<title></title>
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
	font-size: 20px;
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
</style>
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
				<li><a href="studentLogin.jsp"><span
						class="glyphicon glyphicon-log-in"></span> 登录</a></li>
			</ul>
		</div>
	</nav>

	​
	<div class="b2">
		<ul class="nav nav-pills nav-stacked b1">
			<li class="active"><a href="#">学生选课模块</a></li>
			<li><a href="xuanke.jsp">选课</a></li>
			<li><a href="course">查询可选课程</a></li>
			<li><a href="scoreservlet">查询成绩</a></li>
			<li><a href="xuankeqingkuangservlet">查看选课情况</a></li>
			<li><div class="dropdown">
					<button type="button" class="btn dropdown-toggle"
						id="dropdownMenu1" data-toggle="dropdown">
						查询选课相关信息 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownMenu1">
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="teacherservlet">查看任课教师</a></li>
					
						<li role="presentation" class="divider"></li>
						<li role="presentation"><a role="menuitem" tabindex="-1"
							href="https://www.baidu.com/?tn=78000241_11_hao_pg">百度入口</a></li>
					</ul>
				</div></li>
		</ul>
	</div>
	<div>
		<table border="1" class="b3">
			<tr>
				<td align="center" bgcolor="blue"><font color="white">重要声明</font></td>

			</tr>
			<tr>
				<td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本系统由**设计如有雷同纯属巧合！<br />
					开发人QQ：2630093345，如有任何问题请联系188****** <br />谢谢合作！！！
				</td>
			</tr>
		</table>
	</div>

	<img src="" alt="" />
	<div class="a1"></div>
	<footer>
		<ul class="a2">
			<li>联系方式</li>
			<li>201601010526</li>
			<li>2630093345@qq.com</li>
			<li>如有问题即使联系</li>
		</ul>
		<ul class="a3">
			<li>技术</li>
			<li>bootstrapt</li>
			<li>js</li>
			<li>HTML</li>
		</ul>

	</footer>
</body>
</html>