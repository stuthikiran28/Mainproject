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
String uid=request.getParameter("uid");
User u=UserDao.getRecordById(Integer.parseInt(uid));
%>
<h1>Edit Form</h1>
<form action="edituser.jsp" method="post">

<table>
<tr><td>
<input type="text" name="uid" value="<%= u.getUId()%>"  hidden/></td></tr>
<tr><td>Name:</td><td>
<input type="name" name="name" value="<%= u.getName()%>"/></td></tr>
<tr><td>Email:</td><td>
<input type="email" name="email" value="<%= u.getEmail()%>"/>
</tr>
</tr>
<tr><td>Mobile:</td><td>
<input type="text" name="mobile" value="<%= u.getMobile()%>"/></td></tr
>
<tr><td>bld</td><td>
<input type="text" name="bld" value="<%= u.getbld()%>"/>
</td></tr>
<tr><td>Age:</td><td>
<input type="text" name="age" value="<%= u.getAge()%>"/>
</td></tr>
<tr><td>Password:</td><td>
<input type="text" name="pass" value="<%= u.getPass()%>"/></td></tr
>
</td></tr>
<tr><td colspan="2"><input type="submit" value="Conform" style="border-rradius:39%; color:brown"/></td></tr> 
</table>
</form>

</body>
</html> 