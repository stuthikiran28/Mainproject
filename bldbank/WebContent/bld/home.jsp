<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>

<title>home</title>
 <link rel="stylesheet" href="style.css">
 <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <style>
 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>

<title>home</title>
<style>
body{
background-color: #F5F5F5;
}
th {
  background-color: #04AA6D;
  color: white;}
  
  tr:nth-child(even) {background-color: #ADD8E6;}
tr:nth-child(odd) {background-color:#F5F5F5 ;}
table {
  border-collapse: collapse;
background-color:purple;
}
td {
  text-align: center;
 font-weight: bold;
}
th, td {
  border-bottom: 2px solid #ddd;
}
tr:hover {background-color: #f5f5f5;}
</style>
 
</head>
<body>
<h3 ><a href="bldindex.html">HOME</a></h3>
<h1 style="margin-left:10%">Direct Request</h1>
 <center>
<table  border="1" width="90%">
              <tr>
             <th> Name</th>
                 <th> Mobile_no</th>
                <th>Blood Group</th>
                 <th> Locatoin</th>
                  <th>Status</th>
                  <th>Action</th>
            </tr>
               
                      <%
        try{
        	String id = request.getParameter("uid");
        	MyDb db = new MyDb();
        	Connection con =db.getCon();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select*from rhospital where bid='"+id+"' and rstatus='"+"not approved"+"' "); 
       
        while( rs.next()){
        	String rname = rs.getString("rname");
        String mobile = rs.getString("rnumber"); 
        String bld = rs.getString("rblod"); 
        String add = rs.getString("rlocation");
        String status = "pending";
       // String hid =rs.getString("hid");
        %>
          <tr>
         
              <td><%out.println(rname);%></td>
             <td><%out.println(mobile);%></td>
             <td><%out.println(bld);%></td>
              <td><%out.println(add);%></td>
               <td><%out.println(status);%></td>
              <td><a href="Accept.jsp?uid=<%out.println(id);%>">Accept</a>
            </td></tr> 
             <%  
        }
       
            
}catch(Exception e){out.println("check login data");}
                      %> 
      </table></center>
    
    <script>
    
      </script> 
    
  </body>
</html>
