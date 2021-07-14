<%@ page import ="java.sql.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<%

String userid = request.getParameter("uname");    
String pwd = request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bldbank",
"root", "root");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from bregister where name='" + userid + "' and pass='"+pwd +"'");

if (rs.next()) {	
	
session.setAttribute("userid", userid); 
int uid =rs.getInt("bid");
//out.println("welcome " + userid);
//out.println("<a href='logout.jsp'>Log out</a>");

response.sendRedirect("home.jsp?uid="+uid);
} else {
out.println("Invalid username/password <a href='index.html'></a>");
}
%>
