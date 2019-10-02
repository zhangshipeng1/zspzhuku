<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="${basePath}css/bootstrap.min.css" />

<script type="application/javascript" src="${basePath}js/jquery-1.11.1.min.js"></script>

<script type="application/javascript" src="${basePath}js/bootstrap.min.js"></script>
<title></title>
<style>
.table1 {
	width: 350px;
	height: 250px;
	position: absolute;
	top: 230px;
	right: 100px;
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
	width: 98%;
	height: 95%;
	position: absolute;
	top: 10px;
	left: 15px;
}

.t {
	opacity: 1;
}
</style>
</head>
<body class="imag1">
	<div>
		<img class="imag1" src="${basePath}image/t01126e26a450138434.jpg" alt="" />
	</div>
	<form action="${basePath}servlet/managerservlet" name="login" method="post">
		<div class="l2">
			<table class="table1">
				<tr class="t">
					<td colspan="2" align="center" class="b1">管理员登录</td>
				</tr>
				<tr class="t1">

					<td align="center"><span class="glyphicon glyphicon-user"
						aria-hidden="true">&nbsp; </span> <input type="text" name="n1"
						class="d1" placeholder="用户名" align="center" /></td>
				</tr>
				<tr class="t2">

					<td align="center"><span class="glyphicon glyphicon-lock"
						aria-hidden="true">&nbsp; </span><input type="password" name="m1"
						class="d1" placeholder="密码" align="center" /></td>
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
