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
function projectDelete(cno){
if(confirm("是否删除流水号为["+cno+"]的一组数据吗？"))
window.location="deletesessionservlet?sessioncno="+cno;
}
</script>
<body>
<div class="biaoti" align="center">显示课程信息页面</div>
 <table>
 <tr>
  <td>序号</td>
  <td>课程编号</td>
  <td>课程名称</td>
  <td>操作</td>
 </tr>
 <c:set var="index" value="0" />
 <c:forEach items="${requestScope.list2}" var="item">
  <tr>
  <c:set var="index" value="${index+1}" />
  <td>${index}</td>
  <td>${item.getCno()}</td>
  <td>${item.getCn()}</td>
  <td><a href="${basePath}backstageframe.files/updatesession.jsp?cno=${item.getCno()}">修改</a><a href="javaScript:projectDelete('${item.getCno()}')">|删除</a></td>
  </tr>
 </c:forEach>
  <p>
       <a href="showsessionfenyeservlet?page=${paging.indexpage-1}">&lt;&lt; 首页 </a>
       <a href="showsessionfenyeservlet?page=${paging.page-1 }">    &lt; 上一页 </a>
       <strong>第${paging.page+1}页/共${paging.pagenumber}页</strong>
       <a href="showsessionfenyeservlet?page=${paging.page+1}">下一页 &gt;</a>
       <a href="showsessionfenyeservlet?page=${paging.pagenumber-1}">末页 &gt;&gt;</a>
   </p>
 </table>
</body>
</html>