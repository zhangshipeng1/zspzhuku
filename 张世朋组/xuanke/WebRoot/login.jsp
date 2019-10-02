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
.d1 {
	width: 1300px;
	height: 600px;
	position: absolute;
	left: 35px;
	top: 15px;
}

.d2 {
	position: absolute;
	top: 400px;
	left: 600px;
}

.modal-body {
	font-size: 20px;
}

.d3 {
	font-size: 60px;
	color: black;
	position: absolute;
	top: 200px;
	left: 480px;
	width: 360px;
	height: 100px;
}
</style>
</head>
<body>
	<div class="d3">
		<span class="d4">学生选课系统</span>
	</div>
	<div>

		<img class="d1" src="image/log.jpg" alt="" />

		<div class="d2">
			<button type="button" class="btn btn-primary btn-lg"
				data-toggle="modal" data-target="#myModal">Do Login</button>

			<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">选择登录模式</h4>
						</div>
						<div class="modal-body">
							<a href="studentLogin.jsp">学生登录</a><br /> <a
								href="teacher/teacherLogin.jsp">教师登录</a><br /> <a
								href="managerLogin.jsp">管理员登录</a><br />
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Button trigger modal -->

	</div>
</body>
</html>