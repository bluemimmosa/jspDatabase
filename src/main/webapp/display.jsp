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
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
                Statement st = conn.createStatement();
                String query = "SELECT * FROM student;";
                ResultSet rs = st.executeQuery(query);
                out.println("<table border='1px'>");
                while(rs.next()){
                    out.println("<tr>");
                    out.println("<td>"+rs.getInt("id")+"</td>");
                    out.println("<td>"+rs.getString("name")+"</td>");
                    out.println("<td>"+rs.getString("address")+"</td>");
                    out.println("</tr>");
                }
                out.println("</table>");
                }catch(Exception e){%>
                <%out.println("ERROR");%>
            <%}
        %>
            
    </body>
</html>
