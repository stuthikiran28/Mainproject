<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href ="innerdesign2.css"/>
<title>Delete</title>
</head><style>
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
h1{margin-left:80px;}

td {
  text-align: center;
 font-weight: bold;
}
th, td {
  border-bottom: 2px solid #ddd;
}
</style>
<body>
 
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<a href="home.jsp"><font color="blue">HOME</font></a>
<h1>Blood Bank List</h1>

<%
List<User> blist=UserDao.getAllRecordsbldbank();
request.setAttribute("list",blist);
%>
<center>
<table border="1" width="90%">
<tr><th>Id</th><th>NAME</th><th>EMAIL</th><th>MOBILE_NO</th><th>Location</th><th>Password</th><th>Action.</th>
<c:forEach items="${list}" var="u">
<tr><td>${u.getUId()}</td><td>${u.getName()}</td><td>${u.getEmail()}</td><td>${u.getMobile()}</td><td>${u.getAddress()}</td>
<td>${u.getPass()}<td><a href="deletebldbank1.jsp?uid=${u.getUId()}">Delete</a>

</td></tr>
</c:forEach>
</table>
</center>
</body>
</html> 
