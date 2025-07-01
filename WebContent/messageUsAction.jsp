<%@ page import="com.connection.*"%>ovider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String subject = request.getParameter("subject");
String body = request.getParameter("body");

try{
	Connection con=DatabaseConnection.getConnection();
	PreparedStatement ps=con.prepareStatement("insert into massage(email,subject,body) values(?,?,?)");
	ps.setString(1, email);
	ps.setString(2, subject);
	ps.setString(3, body);
	ps.executeUpdate();
	response.sendRedirect("messageUs.jsp?msg=valid");
}catch(Exception e){
	System.out.println(e);
	response.sendRedirect("messageUs.jsp?msg=invalid");
}
%>