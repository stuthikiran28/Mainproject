
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <link rel="stylesheet" type="text/css" href="register.css"/>
<title>Hospital</title>
<meta name="keywords" content="ddddd" />
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

                   <div  style="color: #330D0D; text-align:center" ><h2>Doners</h2></div>

  <%
        try{
            
             MyDb db = new MyDb();
           Connection con =db.getCon();
           Statement stmt = con.createStatement();
           
           
           ResultSet rs = stmt.executeQuery("select*from uregister"); 
          while( rs.next()){
        	  String uid =  rs.getString("uid");
           String name =  rs.getString("name");
           String email = rs.getString("email");
           String mobile = rs.getString("mobile");
           String bld = rs.getString("bld");
           String add = rs.getString("location");
           
           
                  
        %>
        
           <div style="background-color: #330D0D; color: #ffffff;
  background-image: -webkit-linear-gradient(top, #30122b, #47340e);
  background-image: -moz-linear-gradient(top, #30122b, #47340e);
  background-image: -ms-linear-gradient(top, #30122b, #47340e);
  background-image: -o-linear-gradient(top, #30122b, #47340e);
  background-image: linear-gradient(to bottom, #30122b, #47340e);
  -webkit-border-radius:28px;
  -moz-border-radius: px;
  border-radius: 28px;
  text-align:center;
  font-family: Arial;
  color: #ffffff;
  margin-left:100px;
  margin-right:100px;
  font-size: 15px;
  padding: 10px 5px 5px 10px;
  text-decoration: none;">
               <div >
               <label>NAME       :</label> <%out.println(name);%>
               <br/>
         <label>EMAIL            :</label> <%out.println(email);%> 
          <br/>
           <label>MOBILE NUMBER  :</label> <%out.println(mobile);%>
              <br/>
              <label>Blood Group :</label> <%out.println(bld);%>
              <br/>
          <label>ADDRESS         :</label> <%out.println(add);%><br>
          <a href="requestdoner.jsp?uid=<%out.println(uid);%>">Request</a>
             </div>
           </div><%
           
          }
        
        }catch(Exception e){}
        
        
        %>


</pre>







 <div class="fixed-footer">
      <center>    <div class="container">  Copyright &copy; 2021 GSK</div>    </center>      
    </div>


        
    </body>
</html>
