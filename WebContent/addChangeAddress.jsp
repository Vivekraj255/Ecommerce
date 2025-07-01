<%@ page import="com.connection.*"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
		<title>Add of Change Address</title>
</head>
<body>
	<section> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box>
		<div class="topn">
<%
String msg = request.getParameter("msg");
if("valid".equals(msg)){
%>
<h3 class="alert">Address Successfully Updated !</h3>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h3 class="alert">Some thing Went Wrong! Try Again!</h3>
<%} %>

<%
try{
	Connection con=DatabaseConnection.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from tblcustomer where email='"+email+"' ");
	while(rs.next()){
		
%>

<form action="addChangeAddressAction.jsp" method="post">
<h3>Enter Name
   <input class="input-style" type="text" name="name" value="<%=rs.getString(5) %>" placeholder="Enter Name" required> </h3>
 <hr>
 
<h3>Enter Gender
   <input class="input-style" type="text" name="gender" value="<%=rs.getString(4) %>" placeholder="Enter Gender" required> </h3>
 <hr>
 
<h3>Enter Address
   <input class="input-style" type="text" name="address" value="<%=rs.getString(8) %>" placeholder="Enter Address" required> </h3>
 <hr>
 
 <h3>Enter City
  <input class="input-style" type="text" name="city" value="<%=rs.getString(11) %>" placeholder="Enter City" required> </h3>
<hr>

<h3>Enter State
  <input class="input-style" type="text" name="state" value="<%=rs.getString(10) %>" placeholder="Enter State" required> </h3>
<hr>

<h3>Enter Country
  <input class="input-style" type="text" name="country" value="<%=rs.getString(12) %>" placeholder="Enter Country" required> </h3>
<hr>

<h3>Pin Code
  <input class="input-style" type="text" name="pincode" value="<%=rs.getString(9) %>" placeholder="Enter pincode" required> </h3>
<hr>

 <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<%
}
}catch(Exception e){
	System.out.println(e);
}
%>

		</div>
	</section>
</body>
<br><br><br>
<br>
</html>