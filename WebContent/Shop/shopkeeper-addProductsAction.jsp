<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="java.io.File"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%

String UPLOAD_DIRECTORY = "D:\\Eclipse\\E_Commerce\\WebContent\\uploads";
//Creating session
HttpSession hs = request.getSession();
if (ServletFileUpload.isMultipartContent(request)) {
    try {
        //Taking all image requests
        List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
        String imageName = null;
        String productName = null;
        String productQuantity = null;
        String productPrice = null;
        String descrip = null;
        String mrpPrice = null;
        String status = null;
        String category = null;
        String shopkeeper_Name = null;
        String shopkeeper_Id = null;

        //SALTCHARS to generate unique code for product
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
                FileItem pName = (FileItem) multiparts.get(2);
                productName = pName.getString();

                FileItem price = (FileItem) multiparts.get(3);
                productPrice = price.getString();

                FileItem description = (FileItem) multiparts.get(4);
                descrip = description.getString();

                FileItem mprice = (FileItem) multiparts.get(5);
                mrpPrice = mprice.getString();

                FileItem fstatus = (FileItem) multiparts.get(6);
                status = fstatus.getString();

                FileItem pcategory = (FileItem) multiparts.get(7);
                category = pcategory.getString();
                
                
                FileItem S_name = (FileItem) multiparts.get(0);
                shopkeeper_Name = S_name.getString();
                
                FileItem S_Id_Code = (FileItem) multiparts.get(1);
                shopkeeper_Id = S_Id_Code.getString();

            }
        }
        try {
            int id = 0;
            String imagePath = UPLOAD_DIRECTORY + imageName;
            //Querying to insert product in the table
            int i = DatabaseConnection.insertUpdateFromSqlQuery("insert into tblproducts(id,active,code,description,image,image_name,name,price,mrp_price,product_category,shopkeeper_code,shopkeeper_name) values('" + id + "','" + status + "','" + code + "','" + descrip + "','" + imagePath + "','" + imageName + "','" + productName + "','" + productPrice + "','" + mrpPrice + "','" + category + "','"+shopkeeper_Name+"','"+shopkeeper_Id+"')");
            //If product inserted sucessfully in the database
            if (i > 0) {
                String success = "Product added successfully.";
                //Adding method in session.
                hs.setAttribute("message", success);
                //Response send to the admin-add-product.jsp
                response.sendRedirect("shopkeeper-add-products.jsp");
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