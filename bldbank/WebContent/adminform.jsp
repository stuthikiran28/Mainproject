
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       try{
          String username = request.getParameter("username");
          String name = request.getParameter("adminname");
          String pass = request.getParameter("password");
          
          MyDb db = new   MyDb();
         Connection con = db.getCon();
         Statement stmt = con.createStatement();
         stmt.executeUpdate("insert into admin(username,name,password)values('"+username+"','"+name+"','"+pass+"') ");
         //out.println("welocme : "+name);
          //String redirectedPage = "/parentPage";
          response.sendRedirect("admin-user.jsp");
      
       }catch(Exception e){
       out.println(e);
       }
        
        %>
    </body>
</html>
