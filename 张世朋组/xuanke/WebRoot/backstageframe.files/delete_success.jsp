<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
   request.setAttribute("basePath",basePath);
%>
<html>
	<head>
	<link rel="stylesheet" href="../css/bootstrap.min.css"/>
	<meta http-equiv="refresh" content="3;URL=${basePath}selectgrade">
		<!-- Page title -->
		<title>imooc - login</title>
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
		img{
		width:1000px;
		height: 450px;
		}
		</style>
	</head>
	<body>
	<img alt="" src="${basePath}teacher/img/beijing.jpg" class="img1">

		<div id="box">
		     删除成功!<br>
		</div>

	</body>
</html>