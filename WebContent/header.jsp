<%@page errorPage="welcome.jsp" %>
<!DOCTYPE html>
<html>
<head>
<!-- Importing all ui libs -->
<link rel="stylesheet" href="FrontPage.css"> 
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
</head>
<body>
	<header>
    <!--Header-->
    <div class="topnav sticky">
     
			<%String name=session.getAttribute("name").toString(); %>
            
            <h4><a href=""><%out.println(name); %><i class='fas fa-user-alt'></i></a><span>
            <center>Online shopping</center></h4></span>
            <a href="index.jsp">Home<i class="fa fa-institution"></i></a>
            <a href="products.jsp">Products<i class="fa fa-institution"></i></a>
            <a href="checkoutCart.jsp">My Cart<i class='fas fa-cart-arrow-down'></i></a>
            <a href="my-orders.jsp">My Orders  <i class='fab fa-elementor'></i></a>
            <a href="changeDetails.jsp">Change Details <i class="fa fa-edit"></i></a>
            <a href="messageUs.jsp">Message Us <i class='fas fa-comment-alt'></i></a>
            <a href="about.jsp">About <i class="fa fa-address-book"></i></a>
            <a href="logout.jsp">Logout <i class='fas fa-share-square'></i></a>
            <div class="search-container">
            
             <form action="searchHome.jsp" method="post">
             <input type="text" placeholder="search" name="serch">
             <button type="submit"><i class="fa fa-search"></i></button>
             </form>
               
             
            </div>
          </div>
           <!--table-->
</header>