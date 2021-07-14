<%@page import="MyPack.MyDb"%>  

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
try{
	String uid = request.getParameter("uid");
    String name = request.getParameter("name");
   
    String mob = request.getParameter("mobile");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String pass = request.getParameter("pass");
    MyDb db = new   MyDb();
   Connection con = MyDb.getCon();
   Statement stmt = con.createStatement();
   stmt.executeUpdate("update hregister set name='"+name+"',emaill='"+email+"',mobile='"+mob+"',address ='"+address+"',pass='"+pass+"' where hid ='"+uid+"'");

response.sendRedirect("editviewhospitala.jsp");
}
catch(Exception e){
    out.println(e);
    }

%>

