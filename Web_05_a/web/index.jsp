<%-- 
    Document   : index
    Created on : Jan 19, 2026, 9:39:07 AM
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
        <form action="MainController" method="post">
            <input type="hidden" name="action" value="login">
            User <input type="text" name="txtuser"required 
                 oninvalid="this.setCustomValidity('Please enter your answer')" 
                 oninput="this.setCustomValidity('')"><br>
            Pass <input type="password" name="txtpass"required 
                 oninvalid="this.setCustomValidity('Please enter your answer')" 
                 oninput="this.setCustomValidity('')"><br>
            <%
                String message = request.getAttribute("message") + "";
                message = (message.equals("null")) ? "" : message;
            %>
            <span style="color:red"> <%=message%></span><br>

            <input type="submit" value="Login">
        </form>
    </body>
</html>
