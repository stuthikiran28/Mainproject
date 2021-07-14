<%@page import="MyPack.MyDb"%>  

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
try{
	String uid = request.getParameter("uid");
    String name = request.getParameter("name");
    String  age = request.getParameter("age");
    String mob = request.getParameter("mobile");
    String email = request.getParameter("email");
    String bld = request.getParameter("bld");
    String pass = request.getParameter("pass");
    MyDb db = new   MyDb();
   Connection con = MyDb.getCon();
   Statement stmt = con.createStatement();
   stmt.executeUpdate("update uregister set name='"+name+"',email='"+email+"',mobile='"+mob+"',age='"+age+"',bld='"+bld+"',pass='"+pass+"' where uid='"+uid+"'");

response.sendRedirect("useredit.jsp");
}
catch(Exception e){
    out.println(e);
    }

%>

