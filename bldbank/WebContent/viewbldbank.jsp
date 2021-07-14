<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href ="innerdesign2.css"/>
<title>Blood Bank List</title>
<style>
body{
background-color: #F5F5F5;
}
h1{
margin-left:80px
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
</head>
<body>
 
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<a href="admin-user.html"><font color="blue">HOME</font></a>
<h1>Blood Bank List</h1>

<%
List<User> blist=UserDao.getAllRecordsbldbank();
request.setAttribute("list",blist);
%>
<center>
<table border="1" width="90%">
<tr><th>Id</th><th>NAME</th><th>EMAIL</th><th>MOBILE_NO</th><th>Location</th><th>Password</th>
<c:forEach items="${list}" var="u">
<tr><td>${u.getUId()}</td><td>${u.getName()}</td><td>${u.getEmail()}</td><td>${u.getMobile()}</td><td>${u.getAddress()}</td>
<td>${u.getPass()}

</td></tr>
</c:forEach>
</table>

</body>
</html> 
