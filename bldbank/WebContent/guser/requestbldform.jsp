
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;  CHARSET=latin1;">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       try{
    	   String uid = request.getParameter("uid");
    	   String hname = request.getParameter("hname");
    	   String hloc = request.getParameter("hloc");
          String rname = request.getParameter("rname");
          String rgen = request.getParameter("gender");
          String  rage = request.getParameter("age");
          String radd = request.getParameter("loc");
          String rmob = request.getParameter("mobile");
          String rbld = request.getParameter("bld");
          String radhaar = request.getParameter("adhaar");
         String rstatus="not approved";
         String type =request.getParameter("type");
          MyDb db = new   MyDb();
         Connection con = db.getCon();
         Statement stmt = con.createStatement();
        //stmt.executeUpdate("insert into rhospital('"+uid+"','"+hname+"','"+name+"','"+mob+"',"+bld+"','"+adhaar+"','"+rstatus+"','"+add+"','"+hloc+"','"+requestedby+"','"+gen+"','"+age+"') ");
        //stmt.executeUpdate("insert into rhospital(hid='"+uid+"',hname='"+hname+"',hlocation='"+hloc+"',rname='"+name+"',rnumber='"+mob+"',rgender='"+gen+"',rage='"+age+"',rAdhaar_no='"+adhaar+"',rlocation='"+add+"',blod='"+bld+"',requsetby='"+requestedby+"' )");

       stmt.executeUpdate("insert into rhospital(bid , hname , hlocation , rname , rnumber , rgender , rAdhaar_no , rblod ,rstatus,rtype,rage ,rlocation)value('"+uid+"','"+hname+"','"+hloc+"','"+rname+"','"+rmob+"','"+rgen+"','"+radhaar+"','"+rbld+"','"+rstatus+"','"+type+"','"+rage+"', '"+radd+"') ");
         //out.println("welocme : "+name);
         //out.println("welocme : "+name);
          //String redirectedPage = "/parentPage";
          response.sendRedirect("success.html");
      
       }catch(Exception e){
       out.println(e);
       }
        
        %>
    </body>
</html>
