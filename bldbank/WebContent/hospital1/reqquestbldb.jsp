<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href ="innerdesign2.css"/>
<a href="hospitalindex.html"><font color="blue">Home</font></a>

<title>Request Form</title>
</head> 
<body>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.User"%>

<%
String bid=request.getParameter("bid");
User u=UserDao.getRecordByabldId(Integer.parseInt(bid));
%>
<h1>Blood Requset To Blood Bank</h1>
<form action="requestbldform.jsp" method="post">

<table>
<tr><td>
<input type="text" name="uid"  value="<%= u.getUId()%>" hidden/></td></tr>

<tr><td>
<tr><td>Blood Bank Name</td><td>
<input type="name" name="hname" value="<%= u.getName()%>" readonly/></td></tr>
<tr><td>Location</td><td>
<input type="text" name="hloc" value="<%= u.getAddress()%>" readonly/>
<tr><td>Request By</td><td>
<input type="text" name="bld" value="hopital" readonly/>
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
<select  style="width: 145px;" name="bld" required>
                                                    

                                            <option value="A+">A+</option>
                                                     
                                            <option value="B+">B+</option>
                                                     
                                            <option value="AB+">AB+</option>
                                            
                                            <option value="O+">O+</option>
                                            
                                            <option value="A-">A-</option>
                                                     
                                            <option value="B">B-</option>
                                                     
                                            <option value="AB-">AB-</option>
                                            
                                             <option value="O-">O-</option>
                                                    
                                            </select>
                                            
</td></tr>
<tr><td>Address</td><td>
<input type="text" name="loc" value="" required/>
</td></tr>
<tr><td colspan="2"><input type="submit" value="Submit"/></td></tr> 
</table>
</form>

</body>
</html> 