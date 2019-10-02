<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath", basePath);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <link rel="stylesheet" href="../css/bootstrap.min.css"/>
<style>
	
	body{
		background-image:url(../image/beijing.jpg);
	}
	.biaoti{
		margin:20px;
		font-size:30px;
		color:#0000FF;
		font-weight:bold;
	}
	.style1{
		border:1;
		
		border-style:outset;
	}
	.style2{
		margin-top:40px;
		margin-left:200px;
	    width:400px;
	    height:350px;
		border:1;	
	}
	.style3{
		margin-left:15%;
		width:400px;
	    height:100px;
	}
	td{
	width:171;
	bgcolor:#ffffff;
	}
	
	
</style>



    <base href="<%=basePath%>">
    
    <title>修改课程信息</title>

  </head>
  
  <body>
  	<div class="style1">
        <div class="biaoti" align="center">修改课程信息页面</div>
    	<div class="style2">
    		<form action="${basePath}updatesessionservlet" name="form5" method="post">
    			<table width="500"height="200" border="1" cellpadding="4" cellspacing="10" >
    			<tr>
    			<td>课程编号：</td>
    			<td><%=request.getParameter("cno") %><input type="hidden" name="cno" value="<%=request.getParameter("cno") %>"></td>
    			</tr>
    			<tr>
    			<td>修改的课程名称：</td>
    			<td><input type="text" name="cn" value=""></td>
    			</tr>
    			</table><br/><br/>
    			<div class="style3">
    			<input type="submit" name="Submit" value="修改" onClick="val()">
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			<input type="reset" name="Submit2" value="重置">
    			
    			</div>
    		</form>
    	</div>
    </div>
  </body>
</html>