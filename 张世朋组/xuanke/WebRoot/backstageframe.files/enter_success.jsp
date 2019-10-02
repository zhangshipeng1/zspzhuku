<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
	<meta http-equiv="refresh" content="3;URL=backstageframe.files/append_1.jsp">
		<!-- Page title -->
		<title>imooc - enter</title>
		<!-- End of Page title -->
		<!-- Libraries -->
		<link type="text/css" href="css/login.css" rel="stylesheet" />	
		<link type="text/css" href="css/smoothness/jquery-ui-1.7.2.custom.html" rel="stylesheet" />	
		<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="js/easyTooltip.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.7.2.custom.min.js"></script>
		<!-- End of Libraries -->	
		<style type="text/css">
		#box{
		position: absolute;
		top:200px;
		left: 200px;
		}
		</style>
	</head>
	<body>
	<img src="../image/t01b52ad80d1db4379e.jpg" alt="" />

		<div id="box">
		     恭喜您，录入成功!<br>
		</div>
	
	</body>
</html>