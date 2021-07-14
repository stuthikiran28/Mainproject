<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href ="innerdesign2.css"/>
<title>View Requests</title>
</head>
<body>
 
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<a href="home.jsp"><font color="blue">HOME</font></a>
<h1>Users List</h1>

<%
List<User> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" width="90%">
<tr><th>uid</th><th>NAME</th><th>Email</th><th>Mobile</th><th>PASSWORD</th>
<th>Age</th><th>Blood group</th><th>Action</th>
<c:forEach items="${list}" var="u">
<tr><td>${u.getUId()}</td><td>${u.getName()}</td><td>${u.getEmail()}</td><td>${u.getMobile()}</td>
<td>${u.getPass()}</td><td>${u.getAge()}</td><td>${u.getbld()}</td>
<td><a href="deleteuser.jsp?uid=${u.getUId()}">Delete</a></td></tr>
</td></tr>
</c:forEach>
</table>
<br/><a href="uregister.jsp">Add New User</a>

</body>
</html> tml>