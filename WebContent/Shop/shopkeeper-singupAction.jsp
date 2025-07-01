<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="java.io.File"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%


String UPLOAD_DIRECTORY = "D:\\Eclipse\\E_Commerce\\WebContent\\shopkeeperImage";

//Creating session
HttpSession hs = request.getSession();
if (ServletFileUpload.isMultipartContent(request)) {
    try {
        //Taking all image requests
        List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
        String shopkeeper_Name = null;
        String gmail = null;
        String passwrd = null;
        String mobile = null;
        String gendr = null;
        String imageName = null;
        String shopName = null;
        String status = null;
        String aadharId = null;
        String address = null;
        String cities = null;
        String states = null;
        String pinCode = null;
        String countries = null;
        

        String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < 3) { // length of the random string.
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String code = salt.toString();

        for (FileItem item : multiparts) {
            if (!item.isFormField()) {
                //Getting image name
                imageName = new File(item.getName()).getName();
                //Storing in the specified directory
                item.write(new File(UPLOAD_DIRECTORY + File.separator + imageName));

                //Retriving all information from frontend & get(no..) also
                
                FileItem S_name = (FileItem) multiparts.get(0);
                shopkeeper_Name = S_name.getString();
                
                FileItem email = (FileItem) multiparts.get(1);
                gmail = email.getString();
                
                FileItem password = (FileItem) multiparts.get(2);
                passwrd = password.getString();
                
                FileItem phone = (FileItem) multiparts.get(4);
                mobile = phone.getString();
                
                FileItem s_gender = (FileItem) multiparts.get(5);
                gendr = s_gender.getString();
                
                FileItem shop = (FileItem) multiparts.get(6);
                shopName = shop.getString();
                
                FileItem fstatus = (FileItem) multiparts.get(7);
                status = fstatus.getString();
                
                FileItem aadharNo = (FileItem) multiparts.get(8);
                aadharId = aadharNo.getString();
                
                FileItem description = (FileItem) multiparts.get(9);
                address = description.getString();

                FileItem city = (FileItem) multiparts.get(10);
                cities = city.getString();

                FileItem state = (FileItem) multiparts.get(11);
                states = state.getString();

                FileItem pincode = (FileItem) multiparts.get(12);
                pinCode = pincode.getString();
                
                FileItem s_country = (FileItem) multiparts.get(13);
                countries = s_country.getString();

            }
        }
        
        try {
        	
        	int id = 0;
            String imagePath = UPLOAD_DIRECTORY + imageName;
            //Querying to insert product in the table
            int i = DatabaseConnection.insertUpdateFromSqlQuery("insert into tblshopkeeper(active,code,address,image,image_name,name,email,phone,shop_name,aadhar_no,city,state,pin_code,password,gender,country) values('" + status + "','" + code + "','" + address + "','" + imagePath + "','" + imageName + "','" + shopkeeper_Name + "','" + gmail + "','" + mobile + "','" + shopName + "','" + aadharId + "','" + cities + "','" + states + "','" + pinCode + "','" + passwrd + "','" + gendr + "','" +countries+ "')");
            //If product inserted sucessfully in the database
            if (i > 0) {
                String success = "Registration Successfully.";
                //Adding method in session.
                hs.setAttribute("message", success);
                //Response send to the admin-add-product.jsp
                response.sendRedirect("shopkeeper-singup.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    } catch (Exception ex) {
        //If any occur occured
        request.setAttribute("message", "File Upload Failed due to " + ex);
    }
} else {
    request.setAttribute("message", "Sorry this Servlet only handles file upload request");
}
%>