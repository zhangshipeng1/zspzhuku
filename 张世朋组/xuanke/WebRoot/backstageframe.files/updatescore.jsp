<%@ page language="java" import="java.util.*"  import="java.sql.*" pageEncoding="utf-8"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath", basePath);
%>
<html>
<head>
<link rel="stylesheet" href="../css/bootstrap.min.css"/>
<title>修改成绩</title>
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

</head>
<body>
  	<div class="style1">
        <div class="biaoti" align="center">修改成绩信息页面</div>
    	<div class="style2">
    		<form action="${basePath}updatescore" name="login" method="post">
    			<table width="400"height="200" border="1" cellpadding="4" cellspacing="10" >
    			<tr>
    			<td>学号：</td>
    			<td><input type="text" name="sno" value=""></td>
    			</tr>
    			<tr>
    			<td>课程号：</td>
    			<td><input type="text" name="cno" value=""></td>
    			</tr>
    			<tr>
    			<td>成绩</td>
    			<td><input type="text" name="score" value=""></td>
    			</tr>
    			</table><br/><br/>
    			<div class="style3">
    			<input type="submit" name="Submit" value="提交"  >
    			
    			
    			</div>
    		</form>
    	</div>
    </div>
  </body>
</html>
