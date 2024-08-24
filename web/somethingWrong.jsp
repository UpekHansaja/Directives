<%-- 
    Document   : somethingWrong
    Created on : Aug 24, 2024, 8:21:18 PM
    Author     : upekhansaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!--The error from which the exception occurs from can obtain to this page by defining the isErrorPage as true -->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Something when wrong on the requested page, that's why you are here</h1>
        
        <h3 style="color: red">
            <%= exception.getMessage() %>
            <!--we can access exception implicit object here, because we declare this page as a error page by
            mentioning it at the top of the page as isErrorPage="true" from a page directive -->
        </h3>
    </body>
</html>
