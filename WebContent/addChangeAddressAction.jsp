<%@ page import="com.connection.*"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String address = request.getParameter("address");
String pincode = request.getParameter("pincode");
String city = request.getParameter("city");
String state = request.getParameter("state");
String country = request.getParameter("country");
try{
	Connection con=DatabaseConnection.getConnection();
	PreparedStatement ps=con.prepareStatement("update tblcustomer set gender=?,name=?,address=?,pin_code=?,city=?,state=?,country=? where email=?");
	ps.setString(1,gender);
	ps.setString(2,name);
	ps.setString(3,address);
	ps.setString(4,pincode);
	ps.setString(5,city);
	ps.setString(6,state);
	ps.setString(7,country);
	ps.setString(8,email);
	ps.executeUpdate();
	response.sendRedirect("addChangeAddress.jsp?msg=valid");
}catch(Exception e){
	System.out.println(e);
	response.sendRedirect("addChangeAddress.jsp?msg=invalid");
}
%>