<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href ="innerdesign3.css"/>
<a href="admin-user.html"><font color="blue">Home</font></a>

<title>Edit Form</title>
</head> 
<body>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.User"%>

<%
String admin_id=request.getParameter("uid");
User u=UserDao.getAdminRecordById(Integer.parseInt(admin_id));
%>
<h1>Edit Form</h1>
<form action="editamdin.jsp" method="post">

<table>
<tr><td>uid:</td><td>
<input type="text" name="uid" value="<%= u.getUId()%>"  readonly/></td></tr>
<tr><td>Name:</td><td>
<input type="name" name="name" value="<%= u.getName()%>"/></td></tr>
<tr><td>Username:</td><td>
<input type="text" name="username" value="<%= u.getUsername()%>"/>
</tr>
</tr>
<tr><td>Password:</td><td>
<input type="text" name="pass" value="<%= u.getPass()%>"/></td></tr>
<tr><td colspan="2"><input type="submit" value="CONFORM" style="border-radius:30%; color:brown"/></td></tr> 
</table>
</form>

</body>
</html>
