<%@page import="MyPack.MyDb"%>  

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
try{
	String uid = request.getParameter("uid");
    String name = request.getParameter("name");
    String username = request.getParameter("username");
  
    String pass = request.getParameter("pass");
    MyDb db = new   MyDb();
   Connection con = MyDb.getCon();
   Statement stmt = con.createStatement();
   stmt.executeUpdate("update admin set name='"+name+"',username='"+username+"',password='"+pass+"' where admin_id='"+uid+"'");

response.sendRedirect("editviewadmin.jsp");
}
catch(Exception e){
    out.println(e);
    }

%>

