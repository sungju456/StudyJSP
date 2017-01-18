<html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import = "java.sql.*" %>

<%

Connection conn = null;

String userid = request.getParameter("id");
String userpw = request.getParameter("pw");

try{
	
	String url = "jdbc:mysql://localhost:3306/test";
	String id = "root";
	String pw = "apmsetup";

	int num = 10;
	String insertid = "aaa";
	String insertpw = "qqqq";

	Class.forName("com.mysql.jdbc.Driver");

	conn = DriverManager.getConnection(url,id,pw);

	String sql = "select * from jsp where id='"+userid+"' and pw='"+userpw+"';";
	Statement pstmp = conn.createStatement();

	ResultSet rs = pstmp.executeQuery(sql);
	int rowcount = rs.getRow();
	
	while(rs.next()){
	int selectNo = rs.getInt("no");
	String selectId = rs.getString("id");
	String selectPw = rs.getString("pw");

	session.setAttribute("no",selectNo);
	session.setAttribute("id",selectId);
	session.setAttribute("pw",selectPw);
	}

}

catch(Exception e){
	out.println("<script>alert('알수없는 오류가 발생하였습니다.'); history.back();<script />");
}
%>
no : <% out.println(session.getAttribute("no"));%>
<br>
id : <% out.println(session.getAttribute("id"));%>
<br>
pw : <% out.println(session.getAttribute("pw"));%>
<br>

<html />
