<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath", basePath);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<meta http-equiv="refresh" content="3;URL=${basePath}showsessionservlet">
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <title></title>
     <link rel="stylesheet" href="${basePath}css/bootstrap.min.css" />
    <script type="application/javascript" src="${basePath}js/jquery-1.11.1.min.js"></script>
    <script type="application/javascript" src="${basePath}js/bootstrap.min.js"></script>
  </head>
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

	font-size: 15px;
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
.c1{
width: 500px
	font-size: 10px;
	position: absolute;
	top:30px;
	left:5px;
}
.img1{
width: 960px;
height: 450px;
}
p{
position: absolute;
top:400px;
left: 200px;

}
.d1{
position: absolute;
font-size:30px;
top:200px;
left: 200px;
}

</style>

  <body >
  
 <img alt="" src="${basePath}teacher/img/beijing.jpg" class="img1">
	<div class="d1"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;删除<span ><font color="red">错误！！</font></span><br>3秒回到显示信息界面!</div>
  </body>
</html> 
