<%@ page import="com.connection.*"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String mobileNumber = request.getParameter("mobileNumber");
String pass = request.getParameter("pass");

int check=0;
try{
	Connection con=DatabaseConnection.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from tblcustomer where email='"+email+"' and password='"+pass+"' ");
	while(rs.next()){
		check=1;
		st.executeUpdate("update tblcustomer set phone='"+mobileNumber+"'where email='"+email+"'");
		response.sendRedirect("changeMobileNumber.jsp?msg=done");
	}if(check==0){
		response.sendRedirect("changeMobileNumber.jsp?msg=wrong");
}
}catch(Exception e){
	System.out.println(e);
}
%>