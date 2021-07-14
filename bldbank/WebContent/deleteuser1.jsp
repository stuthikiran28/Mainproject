<%@page import="MyPack.MyDb"%>  

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
try{
	String uid = request.getParameter("uid");
	
    MyDb db = new   MyDb();
   Connection con = MyDb.getCon();
   Statement stmt = con.createStatement();
   stmt.executeUpdate("delete from uregister  where uid="+uid+" ");

response.sendRedirect("deleteuser.jsp");
} 
catch(Exception e){
    out.println(e);
    }

%>
