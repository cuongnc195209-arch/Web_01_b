<%-- 
    Document   : login
    Created on : Jan 8, 2026, 11:09:12 AM
    Author     : Cuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ServletController" method="post">
            Username<input  type="text" name="txtUser"/><br/>
            Password <input  type="password" name="txtPass"/><br/>
            <input type="submit" value="Login"/>
        </form>
    </body>
</html>
