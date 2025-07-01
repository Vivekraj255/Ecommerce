<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%@include file="login.jsp"%>
<%

int id = 0;

//Getting all the parameters from the user
int productId = Integer.parseInt(request.getParameter("productId"));
String price = request.getParameter("price");
String mrp_price = request.getParameter("mrp_price");
HttpSession hs = request.getSession();
try {
    //If user session is null user have to re-login
    if ((String) hs.getAttribute("email") == null) {
        response.sendRedirect("login.jsp");
        //Inserting cart details to the database
    } else {
        int customerId = (int) hs.getAttribute("id");
        //Querying to the database.
        int addToCartAction = DatabaseConnection.insertUpdateFromSqlQuery("insert into tblcart values('" + id + "','" + price + "',1,'" + price + "','" + customerId + "','" + productId + "','" + mrp_price + "')");
        if (addToCartAction > 0) {
            response.sendRedirect("myCart.jsp");
        }
    }

} catch (Exception e) {
    e.printStackTrace();
}
%>