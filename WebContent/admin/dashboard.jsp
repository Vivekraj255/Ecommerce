<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@include file="adminHeader.jsp"%>
<%@include file="footer.jsp"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title> Online Shopping </title>
</head>
<body>
	<section> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box>
 		<div class="topn">
        <%
            //Checking whether admin in session or not
            if (session.getAttribute("uname") != null && session.getAttribute("uname") !=" ") {
        %>

            <div class="content-wrapper">
                <div class="container">
                            <h4 class="header-line"><span><center>ADMIN DASHBOARD</center></span></h4>
                    <div class="row">
                    
                    <div class="col-md-4 col-sm-4 col-xs-6">
                        <div class="alert alert-success back-widget-set text-center">
                            <i class="fa fa-users fa-5x"></i>
                            <%
                                //Count customer query
                                ResultSet totalShopkeeper = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblshopkeeper");
                            totalShopkeeper.next();
                                int allShopkeeper = totalShopkeeper.getInt(1);
                            %>
                            <h3><%=allShopkeeper%></h3>
                            Total Shopkeeper
                        </div>
                    </div>
                    
                        <div class="col-md-4 col-sm-4 col-xs-6">
                            <div class="alert alert-info back-widget-set text-center">
                                <i class="fa fa-history fa-5x"></i>
                            <%
                                //Count product query
                                ResultSet totalProduct = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblproducts");
                                totalProduct.next();
                                int allProducts = totalProduct.getInt(1);
                            %>
                            <h3>
                                <%=allProducts%>
                            </h3>
                            Total Products
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-6">
                        <div class="alert alert-success back-widget-set text-center">
                            <i class="fa fa-users fa-5x"></i>
                            <%
                                //Count customer query
                                ResultSet totalCustomer = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcustomer");
                                totalCustomer.next();
                                int allCustomer = totalCustomer.getInt(1);
                            %>
                            <h3><%=allCustomer%></h3>
                            Total Customers
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-6">
                        <div class="alert alert-warning back-widget-set text-center">
                            <i class="fa fa-recycle fa-5x"></i>
                            <%
                                //Count orders query
                                ResultSet totalOrders = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblorders");
                                totalOrders.next();
                                int allOrders = totalOrders.getInt(1);
                            %>
                            <h3><%=allOrders%></h3>
                            Total Orders
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
            } else {
                response.sendRedirect("admin-login.jsp");
            }
        %>
        </div>
      </section>
      
</body>
</html>