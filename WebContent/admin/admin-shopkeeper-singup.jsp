<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up Form</title>
<link rel="stylesheet" href="../Shop/ShopkeeperPage.css"> 
<link rel="stylesheet" href="alert/dist/sweetalert.css">
</head>
<body>


  <section> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

   <div class="signin"> 

    <div class="content"> 

     <h2>Shopkeeper Resistration</h2> 

<%
   String success = (String) session.getAttribute("success-message");
   if (success != null) {
   session.removeAttribute("success-message");
%>
      <div class='alert alert-success' id='success' style="width: 680px;">Shopkeeper Register Successfully.</div>
<%
}
String fail = (String) session.getAttribute("fail-message");
if (fail != null) {
session.removeAttribute("fail-message");
%>
<div class="alert alert-danger" id='danger' style="width: 680px;">Shopkeeper Registration Fail,Please try again</div>
<%
}
%>

     <form role="form" action="../Shop/shopkeeper-singupAction.jsp" class="form" method="post" enctype="multipart/form-data">  

         

          <label>Username :</label> <input type="text" name="S_name"  required="">
     
 

          <label>Email :</label> <input type="email" name="email" id="emailField" required="">



          <label>Password :</label> <input type="password" id="psw" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required=""> 



          <label>Re-Enter Your Password :</label> <input type="password" name="re_pass"  required=""> 



          <label>Mobile No :</label> <input type="mobile" name="phone"  required="">


         <label>Gender :</label> 
         <select name="s_gender" required="">
             <option>Male</option>
             <option>Female</option>
         </select>

         <label>Shop Name :</label> <input type="text" name="shop" required=""> 

         <label>Status :</label> 
         <select name="fstatus" required="">
         <option>Active</option>
         <option>In-Active</option>
         </select>

         <label>Aadhar No :</label> <input type="text" name="aadharNo" required=""> 
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

         <label>Address :</label> <input type="text" name="description" required="">

         <label>City :</label> <input type="text" name="city" required="">

         <label>State :</label> <input type="text" name="state" required="">

         <label>Pin Code :</label> <input type="text" name="pincode" required="">

         <label>Country :</label> <input type="text" name="s_country" required="">

         <label>Attach Shopkeeper Image :</label> <input type="file" name="uploadLogo" required=""/>


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
        <a href="dashboard.jsp">Back</a> </div> 


     </form> 

    </div> 

   </div> 

  </section>


  <script src="../Index.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <script type="text/javascript">
  var status = document.getElementById("status").value;
	if(status == "Success"){
		swal("Congrats","Account Created Successfully","Succuss");
	}
  </script>

</body>
</html>