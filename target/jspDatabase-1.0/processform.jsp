<%-- 
    Document   : processform
    Created on : May 18, 2023, 9:27:26 AM
    Author     : Niraj Khadka
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
                Statement st = conn.createStatement();
                String query = "INSERT INTO `student`.`student` (`id`, `name`, `address`) VALUES ('"+id+"', '"+name+"', '"+address+"');";
                st.executeUpdate(query);
                }catch(Exception e){%>
                <%out.println("ERROR");%>
            <%}
        %>
            
    </body>
</html>
