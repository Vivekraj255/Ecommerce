<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title> Online Shopping </title>
    <link rel="stylesheet" href="AdminPage.css"> 
	<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
</head>
<body>
<!-- Defining Header for the Admin/Seller-->
<header class="menu-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="navbar-collapse collapse ">
                    <ul id="menu-top" class="nav navbar-nav navbar-right">
                    <%String uname=session.getAttribute("uname").toString(); %>
                    <h2><a href=""><%out.println(uname); %><i class='fas fa-user-alt'></i></a></h2>
                        <li><a href="dashboard.jsp">Home</a></li>
                        <li><a href="admin-add-product.jsp">Add Product</a></li>
                        <li><a href="admin-view-product.jsp">View All Products</a></li>
                        <li><a href="admin-all-orders.jsp">View All Orders</a></li>
                        <li><a href="admin-pending-orders.jsp">View Pending Orders</a></li>
                        <li><a href="messagesReceived.jsp">Messages Received</i></a></li>
                        <li><a href="admin-delivered-orders.jsp">View Delivered Orders</a></li>
                        <li><a href="admin-view-customers.jsp">View Customers</a></li>
                        <li><a href="admin-view-shopkeeper.jsp">View Shopkeepers</a></li>
                        <li><a href="admin-shopkeeper-singup.jsp">Shopkeepers Registration</a></li>
                        <li><a href="admin-logout.jsp">LOGOUT</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>
</body>
</html>