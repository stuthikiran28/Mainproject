<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href ="innerdesign.css"/>
<a href="admin-user.jsp"><font color="blue">Home</font></a>
<a href="useredit.jsp"><font color="blue">Back</font></a>
<title>Edit Form</title>
</head> 
<body>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.User"%>

<%
String bid=request.getParameter("uid");
User u=UserDao.getRecordByabldId(Integer.parseInt(bid));
%>
<h1>Edit Form</h1>
<form action="editbldbank.jsp" method="post">

<table>
<tr><td>uid:</td><td>
<input type="text" name="uid" value="<%= u.getUId()%>"  readonly/></td></tr>
<tr><td>Name:</td><td>
<input type="name" name="name" value="<%= u.getName()%>"/></td></tr>
<tr><td>Email:</td><td>
<input type="email" name="email" value="<%= u.getEmail()%>"/>
</tr>
</tr>
<tr><td>Mobile:</td><td>
<input type="text" name="mobile" value="<%= u.getMobile()%>"/></td></tr
>
<tr><td>Location:</td><td>
<input type="text" name="address" value="<%= u.getAddress()%>"/>
</td></tr>
<tr><td>Password:</td><td>
<input type="text" name="pass" value="<%= u.getPass()%>"/></td></tr
>
</td></tr>
<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr> 
</table>
</form>

</body>
</html> 