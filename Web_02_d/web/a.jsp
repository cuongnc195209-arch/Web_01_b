<%-- 
    Document   : a
    Created on : Jan 8, 2026, 11:41:54 AM
    Author     : Cuong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="login.css">
    </head>
    <body>

        <h1>Login Success</h1>
        
        <form action="LogOutServlet" method="get">
            <p>Please choose your choice</p>
            
            <div class="button-container">
                <input type="submit" value="Log out"/>
            </div>
        </form>

    </body>
</html>
