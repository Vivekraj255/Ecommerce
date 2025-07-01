<%@ page import="com.connection.*"%>
<%@page import="java.sql.*"%>
<%
//Retrieving values from the frontend
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");
String mobile = request.getParameter("mobile");
String gender = request.getParameter("gender");
String address = request.getParameter("address");
String state = request.getParameter("state");
String city = request.getParameter("city");
String pincode = request.getParameter("pincode");
String country = request.getParameter("country");

//Creating Session
HttpSession hs = request.getSession();

//Inserting all values inside the database
try {
    //Connecting database connection and querying in the database
    int addCustomer = DatabaseConnection.insertUpdateFromSqlQuery("insert into tblcustomer(email,gender,name,password,phone,address,pin_code,state,city,country)values('" + email + "','" + gender + "','" + name + "','" + password + "','"
            + mobile + "','" + address + "','" + pincode + "','"+state+"','"+city+"','"+ country +"')");

    //If customer registered successfully
    if (addCustomer > 0) {
        String message = "Customer register successfully.";
        //Passing message via session.
        hs.setAttribute("success-message", message);
        //Sending response back to the user/customer
        response.sendRedirect("signup.jsp");
    } else {
        //If customer fails to register 
        String message = "Customer registration fail";
        //Passing message via session.
        hs.setAttribute("fail-message", message);
        //Sending response back to the user/customer
        response.sendRedirect("signup.jsp");
    }
} catch (Exception ex) {
    ex.printStackTrace();
}
%>