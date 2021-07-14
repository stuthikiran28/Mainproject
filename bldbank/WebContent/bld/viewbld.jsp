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
<title>view</title>
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
    		
</div> <!-- end of middle --><center><div style="color:#330D0D">
                                      <h2>Blood Banks</h2>
                                      </div></cenetr>
  <%
        try{
        //String loc = request.getParameter("loc");
            
            
             MyDb db = new MyDb();
           Connection con =db.getCon();
           Statement stmt = con.createStatement();
           
           
           ResultSet rs = stmt.executeQuery("select*from bregister;"); 
          while( rs.next()){
        	  String bid = rs.getString("bid");
           String name =  rs.getString("name");
           String email = rs.getString("emaill");
           String mobile = rs.getString("mobile");
           String add = rs.getString("address");
           
           
           
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
 
               <div style=" padding-top: 10px; padding-bottom: 20px;">
               <label>NAME      :</label> <%out.println(name);%>
               <br/>
         <label>EMAIL           :</label> <%out.println(email);%> 
          <br/>
           <label>MOBILE NUMBER :</label> <%out.println(mobile);%>
              <br/>
          <label>ADDRESS        :</label> <%out.println(add);%>
         
        <a href="reqquestbldb.jsp?bid=<%out.println(bid);%>">Request</a>
       
       
             </div>
           </div><%
           
          }
        
        }catch(Exception e){}
        
        
        %>







<pre>







</pre>







<div id="tooplate_footer_wrapper">
	
        
        <div class="cleaner"></div>
    </div>
</div>

<div id="tooplate_copyright_wrapper">
	<div id="tooplate_copyright">
	
    	Copyright � 2016 <a href="#">javatoandroid</a>
		
    </div>
</div>
        
    </body>
</html>
