<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
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
        <div class="product-easys"> 

        <div class="electronics">
            <div class="container">
                <div class="clearfix"></div>
                    <h2><span><center>Our Products</center></span></h2>
                <div class="ele-bottom-grid">
<% 
//Getting all data from user/customer
String shopkeeperName = request.getParameter("shopkeeperName");
String shopkeeperId = request.getParameter("shopkeeperCode");
//Creating Session

try {
    //Creating Resultset
    ResultSet resultset = null;
    //Query to check Login Details
    resultset = DatabaseConnection.getResultFromSqlQuery("select * from tblproducts where shopkeeper_name='" + shopkeeperName + "' and shopkeeper_code='" + shopkeeperId + "'");
    //Checking whether the details of user are null or not
    if (shopkeeperName != null && shopkeeperId != null) {
        if (resultset.next()) {
            		
%>

					
                    <form action="AddToCart" method="post">
                        <div class="col-md-3 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item"> <input type="hidden" name="productId"
                                       value="<%=resultset.getInt("id")%>">
                                    <input type="hidden" name="productId" value="<%=resultset.getString("Shopkeeper_code")%>">
                                    <img src="uploads/<%=resultset.getString("image_name")%>" alt="" class="pro-image-front">
                                    <img src="uploads/<%=resultset.getString("image_name")%>" alt="" class="pro-image-back"> <span
                                       class="product-new-top"><%=resultset.getString("shopkeeper_name")%></span>
                                </div>
                                <div class="item-info-product ">
                                    <h4>
                                        <%=resultset.getString("name")%>
                                    </h4>
                                    <h5>
                                        Category: <%=resultset.getString("product_category")%>
                                    </h5>
                                    <div class="info-product-price">
                                        <input type="hidden" name="price" value="<%=resultset.getString("price")%>"> 
                                        <input type="hidden" name="mrp_price" value="<%=resultset.getString("mrp_price")%>"> <span class="item_price"><%=resultset.getString("price")%> Rs.</span>
                                        <del><%=resultset.getString("mrp_price")%> Rs.</del>
                                    </div>
                                    <input type="submit" value="Add to cart" class="btn btn-warning" onclick="return confirm('Are you sure Do you want to add this item in cart?');">
                                </div>
                            </div>
                        </div>
                    </form>

                    
<%
        }
        }
    }catch (Exception e) {
        System.out.println(e);
    }
%>

                </div>
            </div>
        </div>

   		</div>
	</section>       
 
    </body>
</html>