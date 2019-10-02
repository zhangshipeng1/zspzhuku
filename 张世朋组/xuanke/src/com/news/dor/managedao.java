package com.news.dor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.news.db.ConnectionDB;
import com.news.feng.manager;
import com.news.feng.student;

public class managedao {

		public  int  addTeacher(String gh,String name,String sex,String password){
			String sql="insert into tb_teacher (gh,sn,sex,pas) values('"+gh+"','"+name+"','"+sex+"','"+password+"')";
			//String sql1="insert into tb_shouke (gh,cno) values('"+gh+"','"+bh+"')";
			int rst=0;
			//int rst1=0;
			Connection conn;
			try {
				conn = ConnectionDB.getConn();
				Statement st=conn.createStatement();
				 rst=st.executeUpdate(sql);
				//rst1=st.executeUpdate(sql1);
			
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return rst;
		}
		public  int addTeacher1(String gh,String bh){
			//String sql="insert into tb_teacher (gh,sn,sex,pas) values('"+gh+"','"+name+"','"+sex+"','"+password+"')";
			String sql1="insert into tb_shouke (gh,cno) values('"+gh+"','"+bh+"')";
			//int rst=0;
			int rst1=0;
			Connection conn;
			try {
				conn = ConnectionDB.getConn();
				Statement st=conn.createStatement();
				rst1=st.executeUpdate(sql1);
				//rst1=st.executeUpdate(sql1);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return rst1;
		}
		public  int  addStudent(String xh,String name,String sex,String password,String zy){
			String sql="insert into tb_student (sno,sn,sex,pas,zy) values('"+xh+"','"+name+"','"+sex+"','"+password+"','"+zy+"')";
			
			int rst=0;
			Connection conn;
			try {
				conn = ConnectionDB.getConn();
				Statement st=conn.createStatement();
				 rst=st.executeUpdate(sql);
			} catch (Exception e) {
			
				e.printStackTrace();
			}
			return rst;
		}
		public  int  addSession(String bh,String name){
			String sql="insert into tb_session (cno,cn) values('"+bh+"','"+name+"')";
			
			int rst=0;
			Connection conn;
			try {
				conn = ConnectionDB.getConn();
				Statement st=conn.createStatement();
				 rst=st.executeUpdate(sql);
			} catch (Exception e) {
			
				e.printStackTrace();
			}
			return rst;
		}
		public  static List<manager> getselectteacher(){ //查询所有信息
			 List<manager> list = new ArrayList<>(); //创建集合
			 String  sql= "select * from tb_teacher"; 
			//SQL查询语句
			 try {
			  Connection conn = ConnectionDB.getConn();
			  
			 Statement st= conn.createStatement();
			
			 ResultSet rs=st.executeQuery(sql);
			 
			  while (rs.next()) {
				  
			  manager manage= new manager();
			  
			  manage.setGh(rs.getString("gh")); 
			  
			  manage.setName(rs.getString("sn"));
			
			  manage.setSex(rs.getString("sex"));
			  
			  manage.setPassword(rs.getString("pas"));
			  
			  list.add(manage);
			 
			  }
			 ConnectionDB.closeConnection(conn, st, rs);
			 } catch (SQLException e) {
			  e.printStackTrace(); //抛出异常
			 } catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
			 return list; 
			 //返回一个集合
		 }
		public  static List<manager> getselectstudent(){ //查询所有信息
			 List<manager> list = new ArrayList<>(); //创建集合
			 String  sql= "select * from tb_student"; 
			//SQL查询语句
			 try {
			  Connection conn = ConnectionDB.getConn();
			  
			 Statement st= conn.createStatement();
			
			 ResultSet rs=st.executeQuery(sql);
			 
			  while (rs.next()) {
				  
			  manager manage=new manager();
			  
			  manage.setSno(rs.getString("sno")); 
			  
			  manage.setSn(rs.getString("sn"));
			
			  manage.setSex(rs.getString("sex"));
			  
			  manage.setPassword(rs.getString("pas"));
			  
			  manage.setZy(rs.getString("zy"));
			  
			  list.add(manage);
			 
			  }
			 ConnectionDB.closeConnection(conn, st, rs);
			 } catch (SQLException e) {
			  e.printStackTrace(); //抛出异常
			 } catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
			 return list; 
			 //返回一个集合
		 }
		public  static List<manager> getselectsession(){ //查询所有信息
			 List<manager> list = new ArrayList<>(); //创建集合
			 String sql= "select * from tb_session"; 
			//SQL查询语句
			 try {
			 Connection conn = ConnectionDB.getConn();
			  
			 Statement st= conn.createStatement();
			 
			 ResultSet rs=st.executeQuery(sql);
			 
			  while (rs.next()) {
				  
			  manager manage= new manager();
			  
			  manage.setCno(rs.getString("cno")); 
			 
			  manage.setCn(rs.getString("cn"));
			  
			  list.add(manage);
			  
			  }
			 ConnectionDB.closeConnection(conn, st, rs);
			 } catch (SQLException e) {
			  e.printStackTrace(); //抛出异常
			 } catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
			 return list; 
			 //返回一个集合
		 }
		public int deleteteacher(String gh){
			String sql1="delete from tb_shouke where gh='"+gh+"'";
			String sql="delete from tb_teacher where gh='"+gh+"'";
			int rs=0;
			int rt=0;
			Connection conn;
			try {
				conn = ConnectionDB.getConn();
				Statement st=conn.createStatement();
				rt=st.executeUpdate(sql1);
				rs= st.executeUpdate(sql);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return rs;
		}
		public int deletestudent(String ssno){
			String sql1="delete from tb_xuanke where sno='"+ssno+"'";
			String sql="delete from tb_student where sno='"+ssno+"'";
			int rs=0;
			int rt=0;
			Connection conn;
			try {
				conn = ConnectionDB.getConn();
				Statement st=conn.createStatement();
				rt=st.executeUpdate(sql1);
				rs= st.executeUpdate(sql);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return rs;
		}
		public int deletesession(String sessioncno) {
			String sql="delete from tb_shouke where cno='"+sessioncno+"'";
			String sql1="delete from tb_xuanke where cno='"+sessioncno+"'";
			String sql2="delete from tb_session where cno='"+sessioncno+"'";
			int rs=0;
			int rt=0;
			int ry=0;
			Connection conn;
			try {
				conn = ConnectionDB.getConn();
				Statement st=conn.createStatement();
				ry=st.executeUpdate(sql);
				rt=st.executeUpdate(sql1);
				rs=st.executeUpdate(sql2);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return rs;
		}
		public int updateteacher(String ugh,String uname,String usex,String upw){
			
			String sql1="update tb_teacher set sn='"+uname+"',sex='"+usex+"',pas='"+upw+"' where gh="+ugh;
			int rs=0;
			int rt=0;
			try {
				Connection conn=ConnectionDB.getConn();
				Statement st=conn.createStatement();
				rs=st.executeUpdate(sql1);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return rs;
		}
		public int updatestudent(String uxh, String uname, String usex, String upw) {
			// TODO Auto-generated method stub
			String sql="update tb_student set sn='"+uname+"',sex='"+usex+"',pas='"+upw+"' where sno='"+uxh+"'";
			int rs=0;
			try {
				Connection conn=ConnectionDB.getConn();
				Statement st=conn.createStatement();
				rs=st.executeUpdate(sql);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return rs;
		}
		public int updatesession(String ucno, String ucn) {
			// TODO Auto-generated method stub
			String sql="update tb_session set cn='"+ucn+"' where cno='"+ucno+"'";
			int rs=0;
			try {
				Connection conn=ConnectionDB.getConn();
				Statement st=conn.createStatement();
				rs=st.executeUpdate(sql);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return rs;
		}
		public static int luruscore(String sno,String cno,String score){
			String sql="update tb_xuanke set score='"+score+"' where sno='"+sno+"'and cno='"+cno+"'";
			int rst=0;
			Connection conn;
			try {
				conn = ConnectionDB.getConn();
				Statement st = conn.createStatement();
				rst=st.executeUpdate(sql);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return rst;
		}

public  static int deletescore(String id){
	 int rs;
	 rs=0;
	String sql="delete from tb_xuanke where id='"+id+"'";
	Connection conn;
	try {
		 conn = ConnectionDB.getConn();
		Statement st = conn.createStatement();
		rs=st.executeUpdate(sql);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return rs;
}
public static List<manager> selectgrade(){

	String sql="select tb_xuanke.id id,tb_xuanke.sno sno,sn,cn,tb_session.cno cno,sex,score,zy from tb_xuanke,tb_student,tb_session where tb_student.sno=tb_xuanke.sno and tb_xuanke.cno=tb_session.cno";
	
	List<manager> mage=new ArrayList<>();
	Connection conn;
	try {
		conn = ConnectionDB.getConn();
		Statement st=conn.createStatement();
		ResultSet rs=st.executeQuery(sql);
		while(rs.next()){
			manager mange=new manager();
			mange.setID(rs.getString("id"));
			mange.setCn(rs.getString("cn"));
			mange.setSno(rs.getString("sno"));
			mange.setCno(rs.getString("cno"));
			mange.setSn(rs.getString("sn"));
			mange.setZy(rs.getString("zy"));
			mange.setScore(rs.getString("score"));
			mange.setSex(rs.getString("sex"));
			mage.add(mange);
		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return mage;
}	public static int updatescore(String sno,String cno,String score){
	String sql="update tb_xuanke set score='"+score+"' where sno='"+sno+"'and cno='"+cno+"'";
	int rst=0;
	Connection conn;
	try {
		conn = ConnectionDB.getConn();
		Statement st = conn.createStatement();
		rst=st.executeUpdate(sql);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return rst;
}

}

