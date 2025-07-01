<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up Form</title>
<link rel="stylesheet" href="Index.css"> 
<link rel="stylesheet" href="alert/dist/sweetalert.css">
</head>
<body>


  <section> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> 

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

   <div class="signin"> 

    <div class="content"> 

     <h2>Sign Up</h2> 

<%
   String success = (String) session.getAttribute("success-message");
   if (success != null) {
   session.removeAttribute("success-message");
%>
      <div class='alert alert-success' id='success' style="width: 680px;">Customer Register Successfully.</div>
<%
}
String fail = (String) session.getAttribute("fail-message");
if (fail != null) {
session.removeAttribute("fail-message");
%>
<div class="alert alert-danger" id='danger' style="width: 680px;">Customer Registration Fail,Please try again</div>
<%
}
%>

     <form method="post" action="signupAction.jsp" class="form" id="form">  

	        
			<label>User Name</label> <input type="text" name="name"  required=""> 
	   
			<label>Email</label> <input type="email" name="email" id="emailField"  required=""> 
	       
			<label>Password</label> <input type="password" id="psw" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="">

			<label>Re-Enter Your Password</label> <input type="password" name="re_pass"  required="">

			<label>Mobile No.</label> <input type="mobile" name="mobile"  required="">  

           <label>Gender :</label>  <br> 
         <select name="gender">
             <option>Male</option>
             <option>Female</option>
         </select>

			<label>Address</label> <input type="text" name="address"  required=""> 
	   
			<label>State</label> <input type="text" name="state"  required="">
	   
			<label>City</label> <input type="text" name="city"  required="">
			
			<label>Pin Code</label> <input type="pin" name="pincode"  required="">

			<label>Country</label> <input type="text" name="country"  required=""> 
 
        
        <div id="message">
            <h3>Password must contain the following:</h3>
            <p id="letter" class="invalid">a <b>lowercase</b> letter</p>
            <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
            <p id="number" class="invalid">1 <b>number</b></p>
            <p id="length" class="invalid">Minimum <b>8 characters</b></p>
        </div>
        
        <div class="inputBox"> 
          
			<input type="submit" onclick="return confirm('Are you sure Do you want to registor ?');" value="Signup">  
			             
        </div>
        
        <div class="links"> <a href="#"></a>
        	<button type="reset" class="btn btn-danger">Reset</button>
        	<a href="login.jsp">Back</a> 
        </div> 

     </form> 

    </div> 

   </div> 

  </section>


  <script src="Index.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <script type="text/javascript">
  var status = document.getElementById("status").value;
	if(status == "Success"){
		swal("Congrats","Account Create Successfully","Succuss");
	}
  </script>

</body>
</html>