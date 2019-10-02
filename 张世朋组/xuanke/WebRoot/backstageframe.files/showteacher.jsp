<%@ page language="java" contentType="text/html; charset=utf-8"
 pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath", basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>显示</title>
 <link rel="stylesheet" href="${basePath}css/bootstrap.min.css" />
    <script type="application/javascript" src="${basePath}js/jquery-1.11.1.min.js"></script>
    <script type="application/javascript" src="${basePath}js/bootstrap.min.js"></script>
 <style type="text/css">
 .biaoti{
		margin:20px;
		font-size:30px;
		color:#0000FF;
		font-weight:bold;
	}
  table {
  border: 1px solid black;
  margin: 0 auto;
  }
  td{
  width: 150px;
  border: 1px solid black;
  text-align:center;
  }
  p{
position: absolute;
top:400px;
left:300px;

}
 </style>
</head>
<script Language="JavaScript">
function projectDelete(gh){
if(confirm("是否删除流水号为["+gh+"]的一组数据吗？"))
window.location="deleteteacherservlet?teachergh="+gh;
}
</script>
<body>
<div class="biaoti" align="center">显示教师信息页面</div>
 <table>
 <tr>
  <td>序号</td>
  <td>教师工号</td>
  <td>教师姓名</td>
  <td>教师性别</td>
  <td>教师密码</td>
  <td>操作</td>
 </tr>
 <c:set var="index" value="0" />
 <c:forEach items="${requestScope.list1}" var="item">
  <tr>
  <c:set var="index" value="${index+1}" />
  <td>${index}</td>
  <td>${item.getGh()}</td>
  <td>${item.getName()}</td>
  <td>${item.getSex()}</td>
  <td>${item.getPassword()}</td>
  <td><a href="${basePath}backstageframe.files/updateteacher.jsp?gh=${item.getGh()}">修改</a>
  <a href="javaScript:projectDelete('${item.getGh()}')">|删除</a></td>
  </tr>
 </c:forEach>
  <p>
       <a href="showteacherfenyeservlet?page=${paging.indexpage-1}">&lt;&lt; 首页 </a>
       <a href="showteacherfenyeservlet?page=${paging.page-1 }">    &lt; 上一页 </a>
       <strong>第${paging.page+1}页/共${paging.pagenumber}页</strong>
       <a href="showteacherfenyeservlet?page=${paging.page+1}">下一页 &gt;</a>
       <a href="showteacherfenyeservlet?page=${paging.pagenumber-1}">末页 &gt;&gt;</a>
   </p>
 </table>
</body>
</html>