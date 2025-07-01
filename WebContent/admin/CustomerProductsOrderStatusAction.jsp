<%@ page import="com.connection.*"%>
<%@page import="java.sql.*"%>
<%
        try {
            int statusMode = 0;
            //Taking input from admin order-id to get the order status from the database
            ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select order_status from tblorders where order_no='" + request.getParameter("orderId") + "'");
            while (rs.next()) {
                if (rs.getString(1).equals("Deliver")) {
                    statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblorders set order_status='Pending' where order_no='" + request.getParameter("orderId") + "'");
                } else {
                    statusMode = DatabaseConnection.insertUpdateFromSqlQuery("update tblorders set order_status='Deliver' where order_no='" + request.getParameter("orderId") + "'");
                }
            }
            if (statusMode > 0) {
                //Sending response back to admin-all-orders.jsp page when sql query executed sucesfully
                response.sendRedirect("admin-all-orders.jsp");
            } else {
                //Sending response back to admin-all-orders.jsp page
                response.sendRedirect("admin-all-orders.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

%>