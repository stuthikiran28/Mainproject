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
<title>Hospital</title>
<meta name="keywords" content="ddddd" />
<meta name="description" content="" />
<style>
   
    body{   
         background-color:#FFFAFA;   
        padding-top: 60px;
        padding-bottom: 40px;
    }
    .fixed-header, .fixed-footer{
        width: 100%;
        position: fixed;        
        background: #333;
        padding: 10px 10px;
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
        text-align: center;
        margin: 0 auto; /* Center the DIV horizontally */
    }
    nav a{
        color: #fff;
      
        text-decoration: none;
        padding: 7px 25px;
        display: inline-block;
    }
.login{  
        width: 382px;  
        overflow: hidden;  
        margin: auto;  
        margin: 20 0 0 450px;  
        padding: 80px;  
        background: #F5F5F5;  
        border-radius: 15px ;  
          
}  
h2{  
    text-align: center;  
    color: #277582;  
    padding: 20px;  
}
</style>
</head>
   
    <body>
    <div class="fixed-header">
  
        <div class="pcontainer">
       <a href="userindex.jsp"><font color="white"> Home</font></a>
        </div>
        </div>


<center>
                                      <h2>View Hospital</h2>
                                      </cenetr>
  <%
        try{
        String loc = request.getParameter("loc");
            String bld = request.getParameter("bld");
            
             MyDb db = new MyDb();
           Connection con =db.getCon();
           Statement stmt = con.createStatement();
           
           
           ResultSet rs = stmt.executeQuery("select*from hregister"); 
          while( rs.next()){
        	
        	  int uid = rs.getInt("hid");
           String name =  rs.getString("name");
           String email = rs.getString("emaill");
           String mobile = rs.getString("mobile");
           String add = rs.getString("address");
           
         
           
        %>
           <div  style="background-color: #F5F5F5; color: #ffffff;

  -webkit-border-radius:51px;
  -moz-border-radius: px;
  border-radius: 71px;
  text-align:center;
  font-family: Arial;
  color:#277582;
  margin-left:100px;
  margin-right:100px;
  font-size: 15px;
  padding: 10px 5px 5px 10px;
  text-decoration: none;">
 
               <div style=" padding-top: 10px; padding-bottom: 20px;">
               <label>NAME      :</label> <%out.println(name);%>
               <br/>
         <label>EMAIL           :</label> <%out.println(email);%> 
          <br/>
           <label>MOBILE NUMBER :</label> <%out.println(mobile);%>
              <br/>
          <label>ADDRESS        :</label> <%out.println(add);%><br>
                <a href="requesthospital.jsp?uid=<%out.println(uid);%>">Request</a>
       
             </div>
           </div>
           <%
           
          }
        
        }catch(Exception e){}
        
        
        %>


 <div class="fixed-footer">
      <center>    <div class="container">  Copyright &copy; 2021 GSK</div>    </center>      
    </div>

        
    </body>
</html>
