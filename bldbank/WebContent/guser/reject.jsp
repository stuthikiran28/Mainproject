<%@page import="MyPack.MyDb"%>  

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
try{
	String bid = request.getParameter("uid");
    MyDb db = new   MyDb();
   Connection con = MyDb.getCon();
   Statement stmt = con.createStatement();
   String status= "Accepted";
   stmt.executeUpdate("update rhospital set rstatus='"+"Rejected"+"' where hid='"+bid+"'");
   
response.sendRedirect("home.jsp?bid="+bid);
}
catch(Exception e){
    out.println(e);
    }

%>