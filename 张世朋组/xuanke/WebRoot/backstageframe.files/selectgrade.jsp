<%@ page language="java" import="java.util.*"  import="java.sql.*" pageEncoding="utf-8"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath", basePath);
%>
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="../css/bootstrap.min.css"/>
<title>显示成绩信息</title>
<style>
	
	body{
		background-image:url(../image/beijing.jpg);
	}
	.style1{
		border:1;
		
		border-style:outset;
	}
		.style2{
		margin-top:20px;
		margin-left:200px;
	    width:400px;
	    height:350px;
		font-size: 10px;
	    position: absolute;
	   
	}
	.style3{
		margin-top:200px;
		margin-left:150px;
	    position: absolute;
	    
	   
	}
	table{
	
	text-align: center;
	
	}

</style>
</head>
<script Language="JavaScript">
function projectDelete(ID){
if(confirm("是否删除流水号为["+ID+"]的一组数据吗？"))
     window.location="deletescore?studentscore="+ID;
}
</script>
<body>
<div class="style1">
        <div class="biaoti" align="center">显示学生成绩信息</div></div>
        <div class="style2">
    	<table width="700" border="1" cellpadding="0" cellspacing="0">
    		<tr><td>序号</td>
    			<td>ID号</td>
    			<td>姓名</td>
    			<td>学号</td>
    			<td>性别</td>
    			<td>课程名</td>
    			<td>课程号</td>
    			<td>成绩</td>
    			<td>专业</td>
    			<td>操作</td>
    		</tr>
				<c:set var="index" value="0" />
					<c:forEach items="${requestScope.score}" var="user">
			<tr class="success">
					<c:set var="index" value="${index+1}" />
		        <td>${index}</td>
		        <td>${user.getID()}</td>
				<td>${user.getSn()}</td>
				<td>${user.getSno()}</td>
				<td>${user.getSex()}</td>
				<td>${user.getCn()}</td>
				<td>${user.getCno()}</td>
				<td>${user.getScore()}</td>
				<td>${user.getZy()}</td>
				<td><a href="${basePath}backstageframe.files/updatescore.jsp?${user.getSno()}&${user.getCno()}">修改</a><a href="javaScript:projectDelete('${user.getID()}')">|删除</a></td>
			</tr>
		</c:forEach>
		 <div class="style3">
		<p >
       <a href="selectgradefenyeservlet?page=${paging.indexpage-1}">&lt;&lt; 首页 </a>
       <a href="selectgradefenyeservlet?page=${paging.page-1 }">    &lt; 上一页 </a>
       <strong>第${paging.page+1}页/共${paging.pagenumber}页</strong>
       <a href="selectgradefenyeservlet?page=${paging.page+1}">下一页 &gt;</a>
       <a href="selectgradefenyeservlet?page=${paging.pagenumber-1}">末页 &gt;&gt;</a>
        </p>
    	</table>
    	</div>
    	</div>
  </body>
</html>
