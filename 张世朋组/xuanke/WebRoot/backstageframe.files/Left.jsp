<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<STYLE type=text/css> 
{
	FONT-SIZE: 12px
}
#menuTree A {
	COLOR: #566984; TEXT-DECORATION: none
}
</STYLE>
<SCRIPT src="Left.files/TreeNode.js" type=text/javascript></SCRIPT>
<SCRIPT src="Left.files/Tree.js" type=text/javascript></SCRIPT>
<META content="MSHTML 6.00.2900.5848" name=GENERATOR>
</HEAD>
<BODY 
style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(../images/bg.gif); BACKGROUND-REPEAT: repeat-x">
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
    <TR>
      <TD width=10 height=29><IMG src="Left.files/bg_left_tl.gif"></TD>
      <TD 
    style="FONT-SIZE: 18px; BACKGROUND-IMAGE: url(../images/bg_left_tc.gif); COLOR: white; FONT-FAMILY: system">Main Menu</TD>
      <TD width=10><IMG src="Left.files/bg_left_tr.gif"></TD>
    </TR>
    <TR>
      <TD style="BACKGROUND-IMAGE: url(../images/bg_left_ls.gif)"></TD>
      <TD id=menuTree 
    style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px; HEIGHT: 100%; BACKGROUND-COLOR: white" 
    vAlign=top></TD>
      <TD style="BACKGROUND-IMAGE: url(../images/bg_left_rs.gif)"></TD>
    </TR>
    <TR>
      <TD width=10><IMG src="Left.files/bg_left_bl.gif"></TD>
      <TD style="BACKGROUND-IMAGE: url(../images/bg_left_bc.gif)"></TD>
      <TD width=10><IMG 
src="Left.files/bg_left_br.gif"></TD>
    </TR>
  </TBODY>
</TABLE>
<SCRIPT type=text/javascript>
var tree = null;
var root = new TreeNode('系统菜单');
var fun1 = new TreeNode('教师管理');
var fun2 = new TreeNode('增加教师信息', 'addteacher.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun1.add(fun2);
var fun3 = new TreeNode('显示教师信息与操作', '../showteacherservlet', 'tree_node.gif', null, 'tree_node.gif', null);
fun1.add(fun3);
root.add(fun1);
var fun4 = new TreeNode('学生管理');
var fun5 = new TreeNode('增加学生信息', 'addstudent.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun4.add(fun5);
var fun6 = new TreeNode('显示学生信息与操作', '../showstudentservlet', 'tree_node.gif', null, 'tree_node.gif', null);
fun4.add(fun6);
root.add(fun4);
var fun7 = new TreeNode('课程管理');
var fun8 = new TreeNode('增加课程', 'addsession.jsp', 'tree_node.gif', null, 'tree_node.gif', null);
fun7.add(fun8);
var fun9 = new TreeNode('显示课程信息与操作', '../showsessionservlet', 'tree_node.gif', null, 'tree_node.gif', null);
fun7.add(fun9);
root.add(fun7);
var fun10 = new TreeNode('成绩管理');
var fun11 = new TreeNode('显示成绩信息与操作', '../selectgrade', 'tree_node.gif', null, 'tree_node.gif', null);
fun10.add(fun11);
root.add(fun10);
var fun12 = new TreeNode('录入成绩');
var fun13 = new TreeNode('录入成绩', 'append_1.jsp', 'tree_node.gif', null, 'tree_node.gif', null);var fun18 = new TreeNode('删除学生成绩', 'MailBox.aspx', 'tree_node.gif', null, 'tree_node.gif', null);
fun12.add(fun13);
root.add(fun12);
/*var fun17 = new TreeNode('角色管理', 'RoleMgr.aspx', 'tree_node.gif', null, 'tree_node.gif', null);
fun16.add(fun17);
var fun18 = new TreeNode('登录日志', 'LoginLog.aspx', 'tree_node.gif', null, 'tree_node.gif', null);
fun16.add(fun18);
var fun19 = new TreeNode('操作日志', 'OperationLog.aspx', 'tree_node.gif', null, 'tree_node.gif', null);
fun16.add(fun19);
var fun20 = new TreeNode('菜单排序', 'MenuSort.aspx', 'tree_node.gif', null, 'tree_node.gif', null);
fun16.add(fun20);
root.add(fun16);*/
tree = new Tree(root);
tree.show('menuTree');



/**var fun21 = new TreeNode('考勤管理');
var fun22 = new TreeNode('签到签退', 'SignInOrOut.aspx', 'tree_node.gif', null, 'tree_node.gif', null);
fun21.add(fun22);
var fun23 = new TreeNode('考勤查询', 'HistoryQuery.aspx', 'tree_node.gif', null, 'tree_node.gif', null);
fun21.add(fun23);
var fun24 = new TreeNode('考勤统计', 'TimeStatistics.aspx', 'tree_node.gif', null, 'tree_node.gif', null);
fun21.add(fun24);
root.add(fun21);
tree = new Tree(root);
tree.show('menuTree')
*/
</SCRIPT>
</BODY>
</HTML>
