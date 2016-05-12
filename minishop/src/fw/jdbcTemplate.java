package fw;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

// 모든 DB처리 메소드에서 중복되는 기능을 모아놓은 클래스.
public class jdbcTemplate {
	//드라이버 로딩
	static{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			}catch(ClassNotFoundException e){
				e.printStackTrace();
				System.out.println("드라이버 로딩 실패");
			}
		}
	public static Connection getConnect(){
		String ur1 = "jdbc:oracle:thin:@192.168.9.49:1521:xe" ;
		String user = "scott"; 
		String password = "tiger";
		
		Connection con = null;
		try{
			con = DriverManager.getConnection(ur1,user,password);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return con;
	}
	public static void close(ResultSet rs, Statement ptmt, Connection con){
		try{
			if(rs!=null)rs.close();
			if(ptmt!=null)ptmt.close();
			if(con!=null)con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	//ResultSet반환
	public static void close(ResultSet rs){
		try{
			if(rs!=null)rs.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	//Statement반환
	public static void close(Statement ptmt){
		try{
			if(ptmt!=null)ptmt.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	//Connection 반환
	public static void close(Connection con){
		try{
			if(con!=null)con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
}
