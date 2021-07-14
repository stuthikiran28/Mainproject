<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href ="innerdesign2.css"/>
<title>Doner</title>
<style>
body{
background-color: #F5F5F5;
}
th {
  background-color: #04AA6D;
  color: white;}
  
 

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
tr:hover {background-color: black;}
</style>
</head>
<body>
 
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<a href="admin-user.html"><font color="blue">HOME</font></a>
<h1>Doner List</h1>

<%
List<User> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>
<center>
<table border="1" width="90%">
<tr><th>uid</th><th>NAME</th><th>Email</th><th>Mobile</th><th>PASSWORD</th>
<th>Age</th><th>Blood group</th><th>Location</th><th>Action</th>
<c:forEach items="${list}" var="u">
<tr><td>${u.getUId()}</td><td>${u.getName()}</td><td>${u.getEmail()}</td><td>${u.getMobile()}</td>
<td>${u.getPass()}</td><td>${u.getAge()}</td><td>${u.getbld()}</td><td>${u.getAddress()}</td>
<td><a href="editform.jsp?uid=${u.getUId()}">Edit</a>
</td></tr>
</c:forEach>
</table>
</center>
</body>
</html> 