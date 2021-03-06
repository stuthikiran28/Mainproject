<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>home index</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="innerdesign4css.css">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  </head>
  <body>
    <div class="btn">
      <span class="fas fa-bars"></span>
    </div>
    <nav class="sidebar">
      <div class="text">Main Menu</div>
      <ul>
        <li class="active"><a href="makearequest.html">Request Blood</a></li>
          <li class="active"><a href="view.jsp?status=not approve">General Requests</a></li>
        <li>
          <a href="#" class="feat-btn">Doner
            <span class="fas fa-caret-down first"></span>
          </a>
          <ul class="feat-show">
            <li><a href="viewdoner.jsp">View</a></li>
            <li><a href="searchdoner.html">Search</a></li>
          </ul>
        </li>
        <li>
          <a href="#" class="serv-btn">Hospitals
            <span class="fas fa-caret-down second"></span>
          </a>
          <ul class="serv-show">
            <li><a href="viewhospital.jsp">View</a></li>
            <li><a href="hospital.html">Search</a></li>
          </ul>
        </li>
        <li>
          <a href="#" class="serv-btn">Blood banks
            <span class="fas fa-caret-down second"></span>
          </a>
          <ul class="serv-show">
            <li><a href="viewbld.jsp">View</a></li>
            <li><a href="bloodbank.html">Search</a></li>
          </ul>
        </li>
        <li><a href="status.html">Check status</a></li>
        <li><a href="logout.jsp">Logout</a></li>
      </ul>
    </nav>
    <div class="content">
      <div class="header">Your Little Effort Can Others</div>
      <p>Second Chance to Live Life</p>
    </div>

    <script>
    $('.btn').click(function(){
      $(this).toggleClass("click");
      $('.sidebar').toggleClass("show");
    });
      $('.feat-btn').click(function(){
        $('nav ul .feat-show').toggleClass("show");
        $('nav ul .first').toggleClass("rotate");
      });
      $('.serv-btn').click(function(){
        $('nav ul .serv-show').toggleClass("show1");
        $('nav ul .second').toggleClass("rotate");
      });
      $('nav ul li').click(function(){
        $(this).addClass("active").siblings().removeClass("active");
      });
    </script>

  </body>
</html>
