<%-- 
    Document   : a
    Created on : Jan 8, 2026, 11:41:54 AM
    Author     : Cuong
--%>

<%@page import="Model.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="login.css">
    </head>
    <body>
        <%
            UserDTO u = (UserDTO) session.getAttribute("user");
            if (u != null) {
        %>
        <h1>Login Success<br>
            Welcome, <%=u.getFullName()%></h1>

        <form action="MainController" method="get">
            <p>Please choose your choice</p>

            <input type="hidden" name="action" value="logout">
             
            <div class="button-container">
               
                <input type="submit" value="Log out"/>
            </div>
            <a href="search.jsp">Seach</a>
        </form>
        <%
            } else {
                response.sendRedirect("index.jsp");
            }
        %>
    </form>

</body>
</html>
