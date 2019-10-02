package com.news.dor;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.news.db.ConnectionDB;
import com.news.feng.manager;
import com.news.feng.student;
import com.news.feng.teacher;

public class managerdao {
	public static boolean login(student student) {
		String password = student.getPassword();
		String username = student.getUsername();
		String sql = "select * from tb_student";

		Statement st;
		try {
			Connection conn = ConnectionDB.getConn();
			st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			while (rs.next()) {
				if (username.equals(rs.getString("sno"))
						&& password.equals(rs.getString("pas"))) {
					return true;
				}
			}
		ConnectionDB.closeConnection(conn, st, rs);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;

	}

	public static boolean teachelogin(teacher teacher) {
		String password = teacher.getPassword();
		String username = teacher.getUsername();
		String sql = "select * from tb_teacher";

		Statement st;
		try {
			Connection conn = ConnectionDB.getConn();
			st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				if (username.equals(rs.getString("gh"))
						&& password.equals(rs.getString("pas"))) {
					return true;
				}
			}
			ConnectionDB.closeConnection(conn, st, rs);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;

	}

	public static boolean managerlogin(manager manage) {
		String password = manage.getPassword();
		String username = manage.getUsername();
		String sql = "select * from tb_manager";

		Statement st;
		try {
			Connection conn = ConnectionDB.getConn();
			st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				if (username.equals(rs.getString("zh"))
						&& password.equals(rs.getString("pas"))) {
					return true;
				}
			}
			ConnectionDB.closeConnection(conn, st, rs);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;

	}

	public static List<student> selectScore(String number) {
		String sql = "select tb_session.cn,tb_xuanke.score from tb_xuanke join tb_session on(tb_session.cno=tb_xuanke.cno)where tb_xuanke.sno='"
				+ number + "'";

		Connection conn;
		Statement st;
		ResultSet rs;
		List<student> stu = new ArrayList<student>();
		try {
			conn = ConnectionDB.getConn();
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				student student = new student();
				student.setCouse(rs.getString("cn"));
				student.setScore(rs.getString("score"));
				stu.add(student);
			}
			ConnectionDB.closeConnection(conn, st, rs);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return stu;
	}

	public static List<student> selectkecheng() {
		String sql = "select *from tb_session";

		Connection conn;
		Statement st;
		ResultSet rs;
		List<student> course = new ArrayList<student>();
		try {
			conn = ConnectionDB.getConn();
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				student student = new student();
				student.setCno(rs.getString("cno"));
				student.setCn(rs.getString("cn"));
				course.add(student);
			}
			ConnectionDB.closeConnection(conn, st, rs);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return course;
	}

	public static List<student> chakanxuanke(String sno) {
		String sql = "select tb_student.sno,sn,sex,zy,tb_xuanke.cno,cn from tb_student,tb_xuanke,tb_session where tb_student.sno=tb_xuanke.sno and tb_xuanke.cno=tb_session.cno and tb_student.sno='"+sno+"' ";

		Connection conn;
		Statement st;
		ResultSet rs;
		List<student> kecheng = new ArrayList<student>();
		try {
			conn = ConnectionDB.getConn();
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {

				student student = new student();
				student.setSn(rs.getString("sn"));
				student.setCno(rs.getString("cno"));
				student.setCn(rs.getString("cn"));
				student.setSex(rs.getString("sex"));
				student.setUsername(rs.getString("sno"));
				student.setZy(rs.getString("zy"));

				kecheng.add(student);
			}
			ConnectionDB.closeConnection(conn, st, rs);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return kecheng;
	}
	public static List<student> selectteacher() {
		String sql = "select sn,tb_session.cno,tb_session.cn,sex,tb_teacher.gh from tb_shouke,tb_teacher,tb_session where tb_shouke.cno=tb_session.cno and tb_teacher.gh=tb_shouke.gh";

		Connection conn;
		Statement st;
		ResultSet rs; 
		List<student> teach = new ArrayList<student>();
		try {
			conn = ConnectionDB.getConn();
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {

				student teacher = new student();
				teacher.setSn(rs.getString("sn"));
				teacher.setCno(rs.getString("cno"));
				teacher.setCn(rs.getString("cn"));
				teacher.setSex(rs.getString("sex"));
				teacher.setGh(rs.getString("gh"));

				teach.add(teacher);
			}
			ConnectionDB.closeConnection(conn, st, rs);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return teach;
	}
	public static List<student> selectbijiao()
	{
		String sql="select sno,cno,teacher_gh from tb_xuanke";
		List<student> selects= new ArrayList<>();
		Connection conn;
		try {
			conn = ConnectionDB.getConn();
			Statement st= conn.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()){
				student s=new student();
				s.setUsername(rs.getString("sno"));
				s.setCno(rs.getString("cno"));
				s.setGh(rs.getString("teacher_gh"));
				selects.add(s);
				
			}
			ConnectionDB.closeConnection(conn, st, rs);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		return selects;
		
	}
	public static List<student> selecgh(String cno)
	{
		String sql="select gh from tb_shouke where cno='"+cno+"'";
		List<student> selectgh= new ArrayList<>();
		Connection conn;
		try {
			conn = ConnectionDB.getConn();
			Statement st= conn.createStatement();
			ResultSet rs =st.executeQuery(sql);
			while(rs.next()){
				student s=new student();
				s.setGh(rs.getString("gh"));
				selectgh.add(s);
			
			}
			ConnectionDB.closeConnection(conn, st, rs);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		return selectgh;
		
	}  
	public static int insertxuanke(String cno,String gh,String sno) {
		String sql ="insert into tb_xuanke (sno,cno,teacher_gh) values('"+sno+"','"+cno+"','"+gh+"')";
		int rs = 0;
		try {
			Connection conn= ConnectionDB.getConn();
			Statement st =conn.createStatement();
			rs=st.executeUpdate(sql);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
		
	}
}
