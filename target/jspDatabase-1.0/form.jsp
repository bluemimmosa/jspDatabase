<%-- 
    Document   : form
    Created on : May 18, 2023, 9:24:11 AM
    Author     : Niraj Khadka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form method="POST" action="processform.jsp">
            Id: <input type="text" name="id"/>
            Name: <input type="text" name="name"/>
            Address: <input type="text" name="address"/>
            <input type="submit" value="Enter Record"/>
        </form>
    </body>
</html>
