<%@ page import ="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<%

String userid = request.getParameter("name");    
String pwd = request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bldbank",
"root", "root");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from uregister where name='" + userid + "' and pass='" + pwd + "'");

if (rs.next()) {	
	int uid = rs.getInt("uid");
session.setAttribute("userid", userid); 
//out.println("welcome " + userid);
//out.println("<a href='logout.jsp'>Log out</a>");
response.sendRedirect("userhomejsp.jsp?uid="+uid);
} else {
out.println("Invalid username/password <a href='index.html'></a>");
}
%>
