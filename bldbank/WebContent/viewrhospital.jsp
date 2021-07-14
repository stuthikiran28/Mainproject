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

<title>Request</title>
<style>
body{
background-color: #F5F5F5;
}
th {
  background-color: #04AA6D;
  color: white;}
  
  tr:nth-child(even) {background-color: #ADD8E6;}

table {
  border-collapse: collapse;
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
<h2>Blood Request To Hospital</h2>
<center>
 <table  border="1" width="90%">
              <tr>
             <th>Hospital Name</th>
                 <th> Requester Name</th>
                  <th> Request By</th>
                   <th>Mobile Number</th>
                <th>Blood Group</th>
                 <th> Locatoin</th>
                  <th>Status</th>
            </tr>
               
                        <%
        try{
        	MyDb db = new MyDb();
        	Connection con =db.getCon();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select*from rhospital where rstatus='"+"not approved"+"' and hid!='"+"0.0"+"' "); 
        while( rs.next()){
        	String uid = rs.getString("bid");
        String name = rs.getString("hname");
        String mobile = rs.getString("rnumber"); 
        String bld = rs.getString("rblod"); 
        String add = rs.getString("rlocation");
        String rname = rs.getString("rname");
        String rtype = rs.getString("rtype");
        String status = "pending";
        %>
          <tr>
         <td><%out.println(name);%></td> 
              <td><%out.println(rname);%></td>
             <td><%out.println(rtype);%></td>
             <td><%out.println(mobile);%></td>
             <td><%out.println(bld);%></td>
              <td><%out.println(add);%></td>
               <td><%out.println(status);%></td>
             </tr>
           <%
          }
        }catch(Exception e){}
        %>
      </table>  </center>
</body>
</html>