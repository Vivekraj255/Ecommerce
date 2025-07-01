<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="java.io.File"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%

String email=session.getAttribute("email").toString();

String UPLOAD_DIRECTORY = "D:\\Eclipse_1\\Commerce\\WebContent\\shopkeeperImage";

//Creating session
HttpSession sess = request.getSession();
if (ServletFileUpload.isMultipartContent(request)) {
    try {
        //Taking all image requests
        List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
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

                //Retriving all information from frontend
                
                FileItem shop = (FileItem) multiparts.get(0);
                shopName = shop.getString();

                FileItem fstatus = (FileItem) multiparts.get(1);
                status = fstatus.getString();

                FileItem aadharNo = (FileItem) multiparts.get(2);
                aadharId = aadharNo.getString();
                
                FileItem description = (FileItem) multiparts.get(3);
                address = description.getString();

                FileItem city = (FileItem) multiparts.get(4);
                cities = city.getString();

                FileItem state = (FileItem) multiparts.get(5);
                states = state.getString();

                FileItem pincode = (FileItem) multiparts.get(6);
                pinCode = pincode.getString();
                
                FileItem country = (FileItem) multiparts.get(7);
                countries = country.getString();

            }
        }
        int check=0;
        try {
        	
        	Connection con=DatabaseConnection.getConnection();
        	Statement st=con.createStatement();
        	ResultSet rs=st.executeQuery("select *from tblShopkeeper where email='"+email+"'");
        	
            
            String imagePath = UPLOAD_DIRECTORY + imageName;
            //Querying to insert product in the table
            int i = DatabaseConnection.insertUpdateFromSqlQuery("update tblShopkeeper set active='" + status + "',code='" + code + "',address='" + address + "',image='" + imagePath + "',image_name='" + imageName + "',shop_name='"+ shopName +"',aadhar_no='" + aadharId + "',city='" + cities + "',state='" + states + "',pin_code='" + pinCode + "',country='" + countries + "' where email='"+email+"'");
            //If product inserted sucessfully in the database
            if (i > 0) {
                String success = "Registration Successfully.";
                //Adding method in session.
                sess.setAttribute("message", success);
                //Response send to the admin-add-product.jsp
                response.sendRedirect("shopkeeper-Details.jsp");
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