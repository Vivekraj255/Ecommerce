<%@ page import="com.connection.*"%>
<%@page import="java.sql.*"%>

<%
        try {
            //Getting all the parameters from the frontend (shopkeeper admin)
            String s_name = request.getParameter("s_name");
            String s_pass = request.getParameter("s_pass");

            //Retriving our session
            HttpSession hs = request.getSession();

            //Calling Connection method
            Connection con = DatabaseConnection.getConnection();

            //Creating Statement
            Statement st = con.createStatement();

            //Querying inside the database
            ResultSet resultset = st.executeQuery("select * from tblshopkeeper where email='" + s_name + "' AND password='" + s_pass + "'");
            //If all the details are correct
            if (resultset.next()) {
                hs.setAttribute("email", resultset.getString("email"));
                hs.setAttribute("code", resultset.getString("code"));
                //Redirecting admin to dashboard page
                response.sendRedirect("shopkeeperDashboard.jsp");

            } else {
                //If details are wrong
                String message = "You have enter wrong credentials";
                hs.setAttribute("credential", message);
                //Redirecting admin to admin login page
                response.sendRedirect("shopkeeper-login.jsp");
            }
        } catch (Exception e) {
            System.out.println(e);
        }

%>
