<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Frameset//EN">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<HTML><HEAD><TITLE>后台</TITLE>
<META http-equiv=Content-Type content="text/html;">
<base href="<%=basePath%>">
<FRAMESET id=index border=0 frameSpacing=0 rows=120,* frameBorder=no>
<FRAME id=topFrame name=topFrame src="backstageframe.files/Top.jsp" target ="_top" noResize scrolling=yes>
<FRAMESET border=0 frameSpacing=0 frameBorder=no cols=20%,*>
<FRAME id=leftFrame name=leftFrame src="backstageframe.files/Left.jsp" noResize scrolling=yes>
<FRAME id=mainFrame name=mainFrame src="backstageframe.files/main.jsp"  noResize scrolling=yes>
</FRAMESET>
</FRAMESET>
<noframes>
</noframes>
</HEAD>



</HTML>
