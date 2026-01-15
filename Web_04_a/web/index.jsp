<%-- 
    Document   : index
    Created on : Jan 8, 2026, 10:03:25 AM
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
        <%
            String message= request.getAttribute("message")+"";
            message = (message.equals("null"))?"":message;
            %>
          <form action="ServletController" method="post">
            Username <input  type="text" name="txtUser"/><br/>
            Password <input  type="password" name="txtPass"/><br/>
            <span style=color:red ><%=message%></span><br>
            <input type="submit" value="Login"/>
            
        </form>
        
        
            
    </body>
</html>
