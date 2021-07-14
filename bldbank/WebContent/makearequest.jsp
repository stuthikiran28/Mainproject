
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
          String name = request.getParameter("name");
          String gen = request.getParameter("gender");
          String  age = request.getParameter("age");
          String add = request.getParameter("loc");
          String mob = request.getParameter("mobile");
          String email = request.getParameter("email");
          String bld = request.getParameter("bld");
          String Adhaar_no = request.getParameter("Adhaar_no");
          
          MyDb db = new   MyDb();
         Connection con = MyDb.getCon();
         Statement stmt = con.createStatement();
         stmt.executeUpdate("insert into request(name,email,mobile,gender,age,bld,location,Adhaar_no)values('"+name+"','"+email+"','"+mob+"','"+gen+"','"+age+"','"+bld+"','"+add+"','"+Adhaar_no+"') ");
         out.println("welocme : "+name);
          String redirectedPage = "/parentPage";
          response.sendRedirect("success.html");
      
       }catch(Exception e){
       out.println(e);
       }
        
        %>
    </body>
</html>
