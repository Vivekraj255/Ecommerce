<%@ page import="com.connection.*"%>
<%@page import="java.sql.*"%>

<%
        try {
            //Getting all the parameters from the frontend (admin)
            String email = request.getParameter("email");
            String pass = request.getParameter("upass");

            //Retriving our session
            HttpSession hs = request.getSession();

            //Calling Connection method
            Connection con = DatabaseConnection.getConnection();

            //Creating Statement
            Statement st = con.createStatement();

            //Querying inside the database
            ResultSet resultset = st.executeQuery("select * from tbladmin where email='" + email + "' AND password='" + pass + "'");
            //If all the details are correct
            if (resultset.next()) {
                hs.setAttribute("uname", resultset.getString("name"));
                //Redirecting admin to dashboard page
                response.sendRedirect("dashboard.jsp");

            } else {
                //If details are wrong
                String message = "You have enter wrong credentials";
                hs.setAttribute("credential", message);
                //Redirecting admin to admin login page
                response.sendRedirect("admin-login.jsp");
            }
        } catch (Exception e) {
            System.out.println(e);
        }

%>
