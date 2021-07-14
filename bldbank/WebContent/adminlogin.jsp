<%@ page import ="java.sql.*" %>

<%

String userid = request.getParameter("name");    
String pwd = request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bldbank",
"root", "root");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from admin where username='" + userid + "' and password='" + pwd + "'");
if (rs.next()) {
session.setAttribute("userid", userid);
//out.println("welcome " + userid);
//out.println("<a href='logout.jsp'>Log out</a>");
response.sendRedirect("admin-user.html");
} else {
out.println("Invalid username/password <a href='index.html'></a>");
}
%>
