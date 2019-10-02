package com.news.dor;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.ws.rs.core.Link;

import com.news.db.ConnectionDB;
import com.news.feng.teacher;

public class teacherdao {
public static List<teacher> selectprofession(String Gh){
	String sql="select tb_xuanke.id,cn,tb_session.cno,tb_student.sno as studentsno,tb_student.sn as studentsn,tb_student.sex as studentsex,tb_teacher.sn as teachersn,zy from tb_xuanke,tb_session,tb_student,tb_teacher where tb_xuanke.cno=tb_session.cno and tb_xuanke.sno=tb_student.sno and tb_xuanke.teacher_gh=tb_teacher.gh and tb_xuanke.teacher_gh='"+Gh+"'";
	List<teacher> teacher=new ArrayList<>();
	Connection conn;
	try {
		conn = ConnectionDB.getConn();
		Statement st=conn.createStatement();
		ResultSet rs= st.executeQuery(sql);  
		while(rs.next()){
			teacher teachers=new teacher();
			teachers.setCn(rs.getString("cn"));
			teachers.setCno(rs.getString("cno"));
			teachers.setSex(rs.getString("studentsex"));
			teachers.setSno(rs.getString("studentsno"));
			teachers.setStudentname(rs.getString("studentsn"));
			teachers.setTeachername(rs.getString("teachersn"));
			teachers.setID(rs.getString("id"));
			teachers.setZy(rs.getString("zy"));
			teacher.add(teachers);
		}
		ConnectionDB.closeConnection(conn, st, rs);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	return teacher;
	
}
public static int Deleteprofession(String Id){
	String sql="delete from tb_xuanke where id='"+Id+"'";
	int rs = 0;
	Connection conn;
	try {
		conn = ConnectionDB.getConn();
		Statement st=conn.createStatement();
		 rs= st.executeUpdate(sql);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
return rs;
}
//查询成绩从数据库取值进行封装然后把对象存进链表作为返回值返回给调用函数位置
public static List<teacher> selectscore(String Gh){
	String sql="select tb_xuanke.id,tb_xuanke.sno sno,sn,cn,sex,score from tb_xuanke,tb_student,tb_session where tb_student.sno=tb_xuanke.sno and tb_xuanke.cno=tb_session.cno and tb_xuanke.teacher_gh='"+Gh+"'";
	List<teacher> score=new ArrayList<>();
	Connection conn;
	try {
		conn = ConnectionDB.getConn();
		Statement st=conn.createStatement();
		ResultSet rs=st.executeQuery(sql);
		while(rs.next()){
			teacher teacher=new teacher();
			teacher.setID(rs.getString("id"));
			teacher.setSno(rs.getString("sno"));
			teacher.setStudentname(rs.getString("sn"));
			teacher.setCn(rs.getString("cn"));
			teacher.setSex(rs.getString("sex"));
			teacher.setScore(rs.getString("score"));
			score.add(teacher);
		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	return score;
}
public static int updateScore(String Id,Float score){
	String sql="update tb_xuanke set score='"+score+"' where id='"+Id+"'";
	Connection conn;
	int rs = 0;
	try {
		conn = ConnectionDB.getConn();
		Statement st=conn.createStatement();
		rs=st.executeUpdate(sql);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return rs;
}
public static int enterScore(String sno,String score,String cno,String Gh){
	String sql="update tb_xuanke set score='"+score+"' where sno='"+sno+"'and cno='"+cno+"' and teacher_gh='"+Gh+"'";
	Connection conn;
	int rs = 0;
	try {
		conn = ConnectionDB.getConn();
		Statement st=conn.createStatement();
		rs=st.executeUpdate(sql);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return rs;
}
public static List<teacher> selectcourse(String gh){
	String sql="select tb_shouke.id id,cn,tb_shouke.cno from tb_shouke,tb_session where tb_shouke.cno=tb_session.cno and gh='"+gh+"'";
	List<teacher> course=new ArrayList<>();
	Connection conn;
	try {
		conn = ConnectionDB.getConn();
		Statement st=conn.createStatement();
		ResultSet rs=st.executeQuery(sql);
		while(rs.next()){
			teacher teach=new teacher();
			teach.setID(rs.getString("id"));
			teach.setCn(rs.getString("cn"));
			teach.setCno(rs.getString("cno"));
			course.add(teach);
		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return course;
}
public static int Deletecourse(String Id){
	String sql="delete from tb_shouke where id='"+Id+"'";
	int rs = 0;
	Connection conn;
	try {
		conn = ConnectionDB.getConn();
		Statement st=conn.createStatement();
		 rs= st.executeUpdate(sql);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
return rs;
}
public static int addcourse(String gh,String cno){
	String sql="insert into tb_shouke (cno,gh) values('"+cno+"','"+gh+"')";
	int rs = 0;
	Connection conn;
	try {
		conn = ConnectionDB.getConn();
		Statement st=conn.createStatement();
		 rs= st.executeUpdate(sql);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
return rs;
}

}
