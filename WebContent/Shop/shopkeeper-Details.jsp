<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
        <title> Online Shopping </title>
<link rel="stylesheet" href="ShopkeeperPage.css"> 
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

</head>
<body>
	<section> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box> <box></box>
        <div class="topn">


            <div class="content-wrapper">
                <div class="container">
                    	<h4 class="header-line"><span><center>Add Details</center></span></h4>
                <%
                    String message = (String) session.getAttribute("message");
                    if (message != null) {
                        session.removeAttribute("message");
                %>
                <div class="alert alert-danger" id="success">Registration Successfully.</div>
                <%
                    }
                %>
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-info">
                            <div class="panel-heading">Shopkeeper Details</div>
                            <div class="panel-body">
                                <form role="form" action="shopkeeper-DetailsAction.jsp" method="post"
                                      enctype="multipart/form-data">

                                    <div class="form-group">
                                        <label>Shop Name.</label> <input class="form-control" type="text" name="shop" required/>
                                    </div>

                                    <div class="form-group">
                                        <label>Status</label> 
                                        <select class="form-control" name="fstatus" required>
                                            <option>Active</option>
                                            <option>In-Active</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Aadhar No.</label> <input class="form-control" type="text" name="aadharNo" required/>
                                    </div>
									<div class="form-group">
                                        <label>Address</label> <input class="form-control" type="text" style="min-height: 100px;" name="description" required/>
                                    </div>
                                    <div class="form-group">
                                        <label>City</label> <input class="form-control" type="text" name="city" required/>
                                    </div>
                                    <div class="form-group">
                                        <label>State</label> <input class="form-control" type="text" name="state" required/>
                                    </div>
                                    <div class="form-group">
                                        <label>Pin Code</label> <input class="form-control" type="text" name="pincode" required/>
                                    </div>
                                    <div class="form-group">
                                        <label>Country</label> <input class="form-control" type="text" name="country" required/>
                                    </div>

                                    <div class="form-group">
                                        <label>Attach Shopkeeper Image</label> <input type="file" name="uploadLogo" required/>
                                    </div>

                                    <button type="submit" class="btn btn-success" onclick="return confirm('Are you sure Do you want to add details ?. Please read the form carefully');">Add Details</button>
                                    <button type="reset" class="btn btn-danger">Reset</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        </div>
	</section>
	
</body>
</html>