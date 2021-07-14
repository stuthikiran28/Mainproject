<%@page import="MyPack.MyDb"%>  

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
try{
	String uid = request.getParameter("uid");
	
    MyDb db = new   MyDb();
   Connection con = MyDb.getCon();
   Statement stmt = con.createStatement();
   stmt.executeUpdate("delete from bregister  where bid="+uid+" ");

response.sendRedirect("deletebldbank1.jsp");
} 
catch(Exception e){
    out.println(e);
    }

%>
