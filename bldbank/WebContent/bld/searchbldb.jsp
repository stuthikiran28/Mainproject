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
<title>demo</title>
<meta name="keywords" content="ddddd" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
<link href="css/demo.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>
    </head>
    <body>
        <div id="tooplate_body_wrapper">
<div id="tooplate_wrapper">
	<div id="tooplate_top_bar">
    	<a class="social_btn twitter">&nbsp;</a>
        <a class="social_btn facebook">&nbsp;</a>
    </div>	
    
    <div id="tooplate_header">
        <div id="site_title"><h1> BLOOD BANK</h1></div>
        
	     <div id="tooplate_menu">
            <ul>
               <li><a href="bldindex.html" class="current">Home</a></li>

                
            </ul>    	
        </div> <!-- end of tooplate_menu -->
    </div> <!-- end of forever header -->
</div>

<div id="tooplate_middle_subpage">
    		
</div> <!-- end of middle -->



        <%
        try{
        String loc = request.getParameter("loc");
            
             MyDb db = new MyDb();
           Connection con =db.getCon();
           Statement stmt = con.createStatement();
           
           
           ResultSet rs = stmt.executeQuery("select*from bregister where address = '"+loc+"'"); 
           while(rs.next()){
        	   String bid = rs.getString("bid");
           String name = rs.getString("name");
           String mobile = rs.getString("mobile");
           String add = rs.getString("address");
           String email = rs.getString("emaill");
           
           %>
           <div style="background-color: #330D0D; color: #ffffff; margin-top: 20px;">
               <div style="margin-left: 200px; padding-top: 20px; padding-bottom: 20px;">
               <label>NAME      :</label> <%out.println(name);%>
               <br/>
          <label>MOBILE NUMBER  :</label> <%out.println(mobile);%>
         <br>
         
          <label>EMAIL          :</label> <%out.println(email);%>
         <br>
          <label>ADDRESS        :</label> <%out.println(add);%></br>
          <a href="reqquestbldb.jsp?bid=<%out.println(bid);%>">Request</a>
           <br/>
             </div>
           </div><%
           }
        
        }catch(Exception e){}
        
        
        %>
        
    
<div style="position: fixed;
   buttom: 0;
 background-color:#330D0D;
  width: 100%;
  height:20px;
  margin-buttom:2px;
  padding: 20px">
	
    	Copyright � 2016 <a href="#">javatoandroid</a>
		

</div>
    </body>
</html>
