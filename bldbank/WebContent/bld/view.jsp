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

<title>Insert title here</title>
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
<body><h2 style="margin-left:8%">Requests</h2><center>
 <table  border="1" width="90%">
              <tr>
             <th>Name</th>
               <th>Mobile Number</th>
                <th>Blood Group</th>
                 <th> Locatoin</th>
                 <th> status</th>
                 <th> Accept</th>
            </tr>
               
                        <%
        try{
        	MyDb db = new MyDb();
        	Connection con =db.getCon();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select*from request where status='"+"not approve"+"' "); 
        while( rs.next()){
        	String uid = rs.getString("uid");
        String name = rs.getString("name");
        String mobile = rs.getString("mobile"); 
        String bld = rs.getString("bld"); 
        String add = rs.getString("location"); 
        String status = "pending";
        %>
          <tr>
         <td><%out.println(name);%></td> 
            <td><%out.println(mobile);%></td>
             <td><%out.println(bld);%></td>
             <td><%out.println(add);%></td>
             <td><%out.println(status);%></td>
             <td><a href="acceptgrequest.jsp?uid=<%out.println(uid);%>">Accept</a></td>
             </tr>
           <%
          }
        }catch(Exception e){}
        %>
      </table>  </center>
</body>
</html>