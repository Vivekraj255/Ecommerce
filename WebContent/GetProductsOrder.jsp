<%@ page import="com.connection.*"%>
<%@page import="java.sql.*"%>
<%
        //Creating Session
        session = request.getSession();
        int order_no = 1000;
        int orderProducts = 0;
        //Getting all the parameters from the user
        int paymentId = Integer.parseInt(request.getParameter("payment_id"));
        String customerName = request.getParameter("name");
        String mobile_number = request.getParameter("phone");
        String email_id = request.getParameter("email");
        String address = request.getParameter("address");
        String address_type = request.getParameter("addressType");
        String pincode = request.getParameter("pincode");
        String product_name = null;
        int quantity = 0;
        String product_price = null;
        String product_selling_price = null;
        String product_total_price = null;
        String order_status = null;
        String payment_mode = request.getParameter("payment");
        session = request.getSession();
        //Storing payment attrbute in session
        session.setAttribute("paymentId", paymentId);

        try {
            //Getting maximium column of tblorders table
            ResultSet rsMaxOrderNo = DatabaseConnection.getResultFromSqlQuery("select max(order_no) from tblorders");
            if (rsMaxOrderNo.next()) {
                order_no = rsMaxOrderNo.getInt(1);
                order_no = 1000 + order_no;
            }
            //Getting all the orders from the database
            ResultSet totalProduct = DatabaseConnection.getResultFromSqlQuery("select tblproducts.image_name,tblproducts.name,tblcart.quantity,tblcart.mrp_price,tblcart.discount_price,tblcart.total_price,tblcart.product_id from tblproducts,tblcart where tblproducts.id=tblcart.product_id and customer_id='"
                    + session.getAttribute("id") + "' ");
            while (totalProduct.next()) {
                order_no++;
                String image_name = totalProduct.getString(1);
                product_name = totalProduct.getString(2);
                quantity = totalProduct.getInt(3);
                product_price = totalProduct.getString(4);
                product_selling_price = totalProduct.getString(5);
                product_total_price = totalProduct.getString(6);
                order_status = "Pending";
                //Inserting product details inside the table
                orderProducts = DatabaseConnection.insertUpdateFromSqlQuery(
                        "insert into tblorders(order_no,customer_name,mobile_number,email_id,address,address_type,pincode,image,product_name,quantity,product_price,product_selling_price,product_total_price,order_status,payment_mode,payment_id) values('"
                        + order_no + "','" + customerName + "','" + mobile_number + "','"
                        + email_id + "','" + address + "','" + address_type + "','" + pincode + "','" + image_name + "','"
                        + product_name + "','" + quantity + "','" + product_price + "','"
                        + product_selling_price + "','" + product_total_price + "','" + order_status + "','"
                        + payment_mode + "','" + paymentId + "')");
            }
            DatabaseConnection.insertUpdateFromSqlQuery("delete from tblcart where customer_id='" + session.getAttribute("id") + "'");
            if (orderProducts > 0) {
                //Sending response back to the user/customer
                String message = "Thank you for your order.";
                session.setAttribute("success", message);
                response.sendRedirect("checkoutCart.jsp");
            } else {
                response.sendRedirect("checkoutCart.jsp");
            }
        } catch (Exception e) {
            System.out.println(e);
        }

%>
