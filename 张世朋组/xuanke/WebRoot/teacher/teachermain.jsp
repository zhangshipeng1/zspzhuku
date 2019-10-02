<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>teachermain</title>
<frameset rows="" cols="*,60%,*" frameborder="NO" border="0"
	framespacing="0">
	<frame src="teacher/kongbai.html" scrolling="NO" noresize>
	<frameset rows="8%,80%,20%" cols="" frameborder="NO" border="0"
		framespacing="0">

		<frame src="teacher/daohang.jsp" scrolling="NO" noresize>
		<frameset rows="" cols="20%,80%" frameborder="NO" border="0"
			framespacing="0">
			<frame src="teacher/index.jsp" scrolling="NO" noresize>
			<frame src="teacher/welcome.jsp" scrolling="false" noresize
				name="right" scrolling="NO" noresize bordercolor="#006699">
		</frameset>
		<frame src="teacher/yejiao.html" scrolling="NO" noresize>
	</frameset>
	<frame src="teacher/kongbai.html" scrolling="NO" noresize>
</frameset>
</head>


</html>
