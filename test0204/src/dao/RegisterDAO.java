package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Register;

public class RegisterDAO {
		private final String JDBC_URL = "jdbc:mysql://localhost/weddingDB";
		private final String DB_USER = "root";
		private final String DB_PASS = "root";
//		DBから参列者情報を取得
		public List<Register> findAll() throws ClassNotFoundException{
			List<Register> registerList = new ArrayList<>();
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);
				String sql =
						"Select * from participant";
				PreparedStatement pStmt = conn.prepareStatement(sql);
				
				ResultSet rs = pStmt.executeQuery();
				
				while(rs.next()) {
					int id = rs.getInt("ID");
					String name = rs.getString("name");
					String kanaName = rs.getString("kanaName");
					String address = rs.getString("address");
					String tel = rs.getString("tel");
					String message = rs.getString("message");
					Register register = new Register(id, name, kanaName, address,tel,message);
					registerList.add(register);
				}
			}catch (SQLException e){
				e.printStackTrace();
				return null;
			}
			return registerList;
		}
//		登録フォームの内容をDBへ送信
		public boolean create(Register register) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");	
				Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);
				String sql =
						"insert into participant(name,kanaName,address,tel,message) values(?,?,?,?,?)";
				PreparedStatement pStmt = conn.prepareStatement(sql);
				pStmt.setString(1, register.getName());
				pStmt.setString(2, register.getKanaName());
				pStmt.setString(3, register.getAddress());
				pStmt.setString(4, register.getTel());
				pStmt.setString(5, register.getMessage());
				int result = pStmt.executeUpdate();
				if(result != 1) {
					return false;
				}
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
				return false;
			}catch(SQLException e) {
				e.printStackTrace();
				return false;
			}
			return true;
		}
	}
