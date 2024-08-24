<%-- 
    Document   : A
    Created on : Aug 24, 2024, 9:45:44 PM
    Author     : upekhansaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP A</title>
    </head>
    <body>
        <h1>This is A</h1>

        <c:forEach var="u" items="${sessionScope.userList}" step="1">
            <p style="color: coral; font-family: sans-serif; font-weight: bold; font-size: 20px;">${u.name}</p>
        </c:forEach>

        <c:forTokens var="t" items="Hello-Java-World-Web" delims="-">
            <p> ${t} </p>
        </c:forTokens>


        <c:set var="y" value="10" scope="session"/>
        ${sessionScope.y}

        <c:remove var="y" scope="session"/>

        <!--Redirect to a specific page-->
        <%--<c:redirect url="B.jsp"/>--%>

        <!--Redirect to a specific page with params-->
        <c:redirect url="B.jsp">
            <c:param name="n" value="10"/>
        </c:redirect>

    </body>
</html>
