<%@ page import="java.sql.*" %>

<%
Connection conn = null;
	try{
		
		String url = "jdbc:mysql://localhost:3306/marketdb?serverTimezone=Asia/Seoul&useSSL=false";
		String user = "root";
		String password = "hope@153";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);
	}catch(SQLException ex){
		out.println("데이터베이스 연결이 실패했습니다.<sbr>");
		out.println("SQLException : "+ex.getMessage());
	}
	
%>