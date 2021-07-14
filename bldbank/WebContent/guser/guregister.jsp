<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>


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
          String pass= request.getParameter("pass");
          
          MyDb db = new   MyDb();
         Connection con = MyDb.getCon();
         Statement stmt = con.createStatement();
         stmt.executeUpdate("insert into guregister(name,email,mobile,gender,age,bld,location,Adhaar_no,pass)values('"+name+"','"+email+"','"+mob+"','"+gen+"','"+age+"','"+bld+"','"+add+"','"+Adhaar_no+"','"+pass+"') ");

          String redirectedPage = "/parentPage";
          response.sendRedirect("success.html");
      
       }catch(Exception e){
       out.println(e);
       }
        
        %>
    </body>
</html>
