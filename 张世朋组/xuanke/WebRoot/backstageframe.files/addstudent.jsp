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
	width:300;
	bgcolor:#ffffff;
	}
</style>
  <script type="text/javascript">//填写内容是否为空
   function val1()
   {
      if(form2.ghname.value=="")
      {alert("学号不能为空!");return;}
      if(form2.Nname.value=="")
      {alert("姓名不能为空!");return;}
      if(form2.sexname.value=="")
      {alert("性别不能为空");return;}
      if(form2.pwname.value=="")
      {alert("密码不能为空!");return;}
      if(form2.zyname.value=="")
      {alert("专业不能为空");return;}
     if(1)
      {result=window.confirm("您确认提交吗？");}
      document.forms[0].submit();
   }
</script>
    <base href="<%=basePath%>">
    
    <title>添加学生页面</title>
    
	

  </head>
  
  <body>
  <div class="style1">
      <div class="biaoti" align="center">添加学生信息页面</div>
      
      <div class="style2">
  	<form action="${basePath}addstudentservlet" name="form2" method="post">
   	 <table width="500"height="200" border="1" cellpadding="8" cellspacing="10" >
    			<tr>
    			<td>请输入学生学号：</td>
    			<td><input type="text" name="xhname" value=""></td>
    			</tr>
    			<tr>
    			<td>请输入学生姓名：</td>
    			<td><input type="text" name="Nname" value=""></td>
    			</tr>
    			<tr>
    			<td>请输入学生性别：</td>
    			<td><input type="text" name="sexname" value=""></td>
    			</tr>
    			<tr>
    			<td>请输入学生密码：</td>
    			<td><input type="text" name="pwname" value=""></td>
    			</tr>
    			<tr>
    			<td>请输入学生专业：</td>
    			<td><input type="text" name="zyname" value=""></td>
    			</tr>
    			</table><br/><br/>
    			<div class="style3">
    			<input type="submit" name="Sumbit2" value="提交" onClick="val1()">
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    			<input type="reset" name="Sumbit1" value="重置">
    			</div>
    			</form>
    </div>
    </div>
  </body>
</html>
