<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href ="innerdesign2.css"/>
<title>Admin Home</title>
</head>
<style>
body{
background-color:#F5F5F5;
}
th {
  background-color: #04AA6D;
  color: white;}
  
  tr:nth-child(even) {background-color: #ADD8E6;}

table {
  border-collapse: collapse;
  margin-left:60px;
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
<body>

<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<a href="admin-user.html"><font color="blue">HOME</font></a>
<h1>Hospital List</h1>

<%
List<User> clist=UserDao.geta();
request.setAttribute("list",clist);
%>

<table border="1" width="90%">
<tr><th>Id</th><th>NAME</th><th>Email</th><th>Mobile</th><th>Password</th><th>Action</th>

<c:forEach items="${list}" var="u">
<tr><td>${u.getUId()}</td><td>${u.getName()}</td><td>${u.getEmail()}</td><td>${u.getMobile()}</td>
<td>${u.getPass()}</td><td><a href="deletehospital1.jsp?uid=${u.getUId()}">Delete</a>

</td></tr>
</c:forEach>

</body>
</html>