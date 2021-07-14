<%@page import="MyPack.MyDb"%>  

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
try{
	String hid = request.getParameter("uid");
    MyDb db = new   MyDb();
   Connection con = MyDb.getCon();
   Statement stmt = con.createStatement();
   String status= "Accepted";
   stmt.executeUpdate("update rhospital set rstatus='"+status+"' where hid='"+hid+"'");
   
response.sendRedirect("home.jsp?hid="+hid);
}
catch(Exception e){
    out.println(e);
    }

%>