<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href ="innerdesign2.css"/>
<a href="hospitalindex.html"><font color="blue">Home</font></a>

<title>Request</title>
</head> 
<body>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.User"%>

<%
String uid=request.getParameter("uid");
User u=UserDao.getRecordById(Integer.parseInt(uid));
%>
<h1>Blood Request Doner</h1>
<form action="requesthform.jsp" method="post">

<table>
<tr><td>
<input type="text" name="uid"  value="<%= u.getUId()%>" hidden/></td></tr>

<tr><td>
<tr><td>Doner Name</td><td>
<input type="name" name="hname" value="<%= u.getName()%>" readonly/></td></tr>
<tr><td>Location</td><td>
<input type="text" name="hloc" value="<%= u.getAddress()%>" readonly/>
<tr><td>Request By</td><td>
<input type="text" name="hloc" value="hospital" readonly/>
<tr><td>Name</td><td>
<input type="text" name="rname" value="" required/>
</td></tr>

<tr><td>Number</td><td>
<input type="text" name="mobile" value="" required/>
</td></tr>
<tr><td>Date</td><td>
<input type="date" name="adhaar" value="" required/>
</td></tr>
<tr><td>Gender</td><td>
<select  style="width: 145px;" name="gender" required>
                                                    

                                            <option value="male">male</option>
                                                     
                                            <option value="female">female</option>
                                                     
                                            <option value="other">other</option></select>
</td></tr>
<tr><td>Age</td><td>
<input type="text" name="age" value="" required/>
</td></tr>
<tr><td>Blood Group</td><td>
<input type="name" name="bld" value="<%= u.getbld()%>" readonly/>
</td></tr>
<tr><td>Address</td><td>
<input type="text" name="loc" value="" required/>
</td></tr>
<tr><td colspan="2"><input type="submit" value="submit"/></td></tr> 
</table>
</form>

</body>
</html> 