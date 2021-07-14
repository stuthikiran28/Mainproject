<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin List</title>
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
 
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<a href="admin-user.html"><font color="blue">HOME</font></a>
<h1 style="margin-left:10%">Admin List</h1>

<%
List<User> alist=UserDao.getAllRecordsofAdmin();
request.setAttribute("list",alist);
%>
<center>
<table border="1" width="90%">
<tr><th>Id</th><th>NAME</th><th>USERNAME</th><th>Password</th><th>Action</th>
<c:forEach items="${list}" var="u">
<tr><td>${u.getUId()}</td><td>${u.getName()}</td><td>${u.getUsername()}</td>
<td>${u.getPass()}</td><td><a href="deleteadmin1.jsp?uid=${u.getUId()}">Delete</a>

</td></tr>
</c:forEach>
</table></center>
</body>
</html> 
