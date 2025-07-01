<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="FrontPage.css"> 
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
</head>
	<header>
    <!--Header-->
    <div class="topnav sticky">
    		<%String email=session.getAttribute("email").toString(); %>
            <center><h4>Change Details<i class="fa fa-edit"></i></center>
            <h2><a href="index.jsp"><i class='fas fa-arrow-circle-left'>Back</i></a></h2>
             <h2><a href="changeDetails.jsp">Profile(<%out.println(email); %>) <i class='fas fa-user-alt'></i></a></h2>
            <a href="changePassword.jsp">Change Password <i class='fas fa-key'></i></a>
            <a href="addChangeAddress.jsp">Add or change Address <i class='fas fa-map-marker-alt'></i></a>
            <a href="changeMobileNumber.jsp">Change Mobile Number <i class='fas fa-phone'></i></a>
            <!-- <a href="">Change Security Question <i class="fa fa-repeat"></i></a> -->
          </div>
           <br>
           <!--table-->
	</header>