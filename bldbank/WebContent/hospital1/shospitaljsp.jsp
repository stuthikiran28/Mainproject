<%-- 
    Document   : viewhospital
    Created on : Feb 23, 2016, 3:11:10 AM
    Author     : Oops
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <link rel="stylesheet" type="text/css" href="register.css"/>
<title>SHospital</title><style>
 
    .fixed-header, .fixed-footer{
   
        width: 100%;
        position: fixed;        
        background: #333;
        padding: 10px 0;
        color: #fff;
    }
    .fixed-header{
        top: 0;
    }
    .fixed-footer{
        bottom: 0;
    }
    .container{
        width: 80%;
        text-align: center;}
        a{
        color:white;}
</style>
</head>
   
    <body>
       <div class="fixed-header">
        <div class="pcontainer">
        <a href="hospitalindex.html">Home</div></div>
        </div>
        </div>
 <div class="container">
  <%
        try{
        String loc = request.getParameter("address");
           
            
             MyDb db = new MyDb();
           Connection con =db.getCon();
           Statement stmt = con.createStatement();
           
           
           ResultSet rs = stmt.executeQuery("select*from hregister where address='"+loc+"' "); 
           
           while( rs.next()){
           	
         	  int uid = rs.getInt("hid");
            String name =  rs.getString("name");
            String email = rs.getString("emaill");
            String mobile = rs.getString("mobile");
            String add = rs.getString("address");
        %>
           <div style="background-color: #330D0D; color: #ffffff; margin-top: 40px ;;margin-left:350px; margin-right:200px; border-radius:80px;">
               <div style="margin-left: 20%; margin-right:20%; padding-top: 20px; padding-bottom: 20px;">
               <label>NAME      :</label> <%out.println(name);%>
               <br/>
         <label>EMAIL           :</label> <%out.println(email);%> 
          <br/>
           <label>MOBILE NUMBER :</label> <%out.println(mobile);%>
              <br/>
          <label>LOCATION       :</label> <%out.println(add);%>
          <br>  
         <a href="requesthospital.jsp?uid=<%out.println(uid);%>">Request</a>
             </div>
              
           </div><%
           
          }
        
        }catch(Exception e){}
        
        
        %>



<div class="fixed-footer">
      <center>    <div class="container">  Copyright &copy; 2021 GSK</div>    </center>      
    </div>



    </body>
</html>
