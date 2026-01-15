 <%-- 
    Document   : b
    Created on : Jan 8, 2026, 11:42:04 AM
    Author     : Cuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <form action="ServletController" method="post">
            Username <input  type="text" name="txtUser"/><br/>
            Password <input  type="password" name="txtPass"/><br/>
            <p>Wrong pass or user !!</p>
            <input type="submit" value="Login"/>
        </form>
    </body>
</html>
