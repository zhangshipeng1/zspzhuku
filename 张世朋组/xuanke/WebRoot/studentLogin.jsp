<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="en">
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/bootstrap.min.css" />

<script type="application/javascript" src="js/jquery-1.11.1.min.js"></script>

<script type="application/javascript" src="js/bootstrap.min.js"></script>
<title></title>
<style>
.table1 {
	width: 350px;
	height: 250px;
	position: absolute;
	top: 230px;
	right: 200px;
	background-color: white;
	border-radius: 10px;
}

.td {
	color: mediumblue;
	font-size: 24px;
	font-weight: 600;
	font-family: sans-serif;
	font-variant: all-petite-caps;
}

.d1 {
	font-size: 20px;
}

.b1 {
	color: mediumblue;
	font-size: 30px;
	font-weight: 600;
	font-variant: full-width;
	font-family: monospace;
}

.imag1 {
	width: 95%;
	height: 95%;
	position: absolute;
	top: 10px;
	left: 25px;
}

.s2 {
	width: 70px;
	height: 40px;
	border-radius: 30px;
}

.s2:hover {
	width: 65px;
	height: 35px;
	color: white;
}

.imag2 {
	width: 700px;
	height: 400px;
}

.t {
	opacity: 1;
}
</style>
</head>
<body class="imag1">
	<div>
		<img class="imag1" src="image/328407-160915222Q228.jpg" alt="" />
	</div>
	<form action="servlet/logseverlet" name="login" method="post">
		<div class="l2">
			<table class="table1">
				<tr class="t">
					<td colspan="2" align="center" class="b1">学生登录</td>
				</tr>
				<tr class="t1">

					<td align="center"><span class="glyphicon glyphicon-user"
						aria-hidden="true">&nbsp;</span> <input type="text" name="n1"
						class="d1" placeholder="用户名" align="center"
						value="${sessionScope.us1}" /></td>
				</tr>
				<tr class="t2">

					<td align="center"><span class="glyphicon glyphicon-lock"
						aria-hidden="true">&nbsp;</span> <input type="password" name="m1"
						class="d1" placeholder="密码" align="center"
						value="${sessionScope.ps1}" /></td>
				</tr>
				<tr class="t3">
					<td colspan="1" align="center"><input type="submit"
						class="btn btn-primary" value="登录" /> <input type="reset"
						class="btn btn-primary" value="重置" /></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>
<script type="text/javascript">
var errori='<%=request.getParameter("error")%>'

	if (errori == 'yes') {
		alert("您输入的账号或密码有误请重新输入");
		document.form.n1.focus();
		document.form.m1.focus();
	}
</script>