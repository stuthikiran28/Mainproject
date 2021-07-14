<%@ page import ="java.sql.*" %>

<%

String adhaar = request.getParameter("Adhaar_no");    
String name = request.getParameter("name");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bldbank",
"root", "root");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select status from request where Adhaar_no='" + adhaar + "' and name='" +name+ "'");

if (rs.next()) {
session.setAttribute("adhaar", adhaar);
out.println("status " + rs.getString(1));
//out.println("<a href='makearequest.jsp'>home</a>");
//response.sendRedirect("makearequest.html");
} else {
out.println("Invalid Name/Adhaar Number <a href='status.html'>try again</a>");
}
%>
