﻿<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath", basePath);
%>
<HTML>

<HEAD id=Head1>
<TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<style type=text/css> 
*{
	FONT-SIZE: 12px; COLOR: white
}
#logo {
	COLOR: white
}
#logo A {
	COLOR: white
}
FORM {
	MARGIN: 0px
}
</style>
<script src="Top.files/Clock.js" type=text/javascript></script>
</HEAD>
<BODY 
style="BACKGROUND-IMAGE: url(../images/bg.gif); MARGIN: 0px; BACKGROUND-REPEAT: repeat-x">
<form id="form1">
  <DIV id=logo 
style="BACKGROUND-IMAGE: url(../images/logo.png); BACKGROUND-REPEAT: no-repeat">
    <DIV 
style="PADDING-RIGHT: 50px; BACKGROUND-POSITION: right 50%; DISPLAY: block; PADDING-LEFT: 0px; BACKGROUND-IMAGE: url(../images/bg_banner_menu.gif); PADDING-BOTTOM: 0px; PADDING-TOP: 3px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 30px; TEXT-ALIGN: right">
<A href="http://localhost:1479/Web/sys/Top.aspx#">
<IMG src="Top.files/mail.gif" align=absMiddle border=0></A> 您有新消息<A id=HyperLink1 href="">5</A>条 
<IMG src="Top.files/menu_seprator.gif" align=absMiddle> 
<a href="exit.jsp" onclick="return confirm('确定要退出嘛老弟弟？');" target="_top">退出</a>   </DIV>  
    <DIV style="DISPLAY: block; HEIGHT: 54px"></DIV>
    <DIV 
		style="BACKGROUND-IMAGE: url(../images/bg_nav.gif); BACKGROUND-REPEAT: repeat-x; HEIGHT: 30px">
      <TABLE cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
          <TR>
            <TD>
              <DIV><IMG src="Top.files/nav_pre.gif" align=absMiddle> 欢迎 <SPAN 
      id=lblBra>学生选课系统</SPAN>  [系统管理员 ] 光临 </DIV>
            </TD>
            <TD align=right width="70%"><SPAN style="PADDING-RIGHT: 50px"><A 
      href="javascript:history.go(-1);"><IMG src="Top.files/nav_back.gif" 
      align=absMiddle border=0>后退</A> <A href="javascript:history.go(1);"><IMG 
      src="Top.files/nav_forward.gif" align=absMiddle border=0>前进</A> <A 
      href="../managerLogin.jsp" target=_top><IMG 
      src="Top.files/nav_changePassword.gif" align=absMiddle border=0>重新登录</A> 
      <A href="http://localhost:1479/Web/sys/updatePwd.aspx" 
      target=mainFrame><IMG src="Top.files/nav_resetPassword.gif" 
      align=absMiddle border=0>修改密码</A> <A 
      href="http://www.baidu.com" target=mainFrame><IMG 
      src="Top.files/nav_help.gif" align=absMiddle border=0>帮助</A> <IMG 
      src="Top.files/menu_seprator.gif" align=absMiddle> <SPAN 
      id=clock></SPAN></SPAN></TD>
          </TR>
        </TBODY>
      </TABLE>
    </DIV>
  </DIV>
  <SCRIPT type=text/javascript>
    var clock = new Clock();
    clock.display(document.getElementById("clock"));
</SCRIPT>
</form>
</BODY>
</HTML>
