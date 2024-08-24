<%-- 
    Document   : B
    Created on : Aug 25, 2024, 12:01:43 AM
    Author     : upekhansaja
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This is B</h1>

        <c:import var="i" url="header.jsp"/>
        ${i}

        <h1 style="color: chocolate;">Param Value for n is: ${param.n}</h1>

        <c:import var="f" url="footer.jsp">
            <c:param name="n" value="FOOTER"/>
        </c:import>
        ${f}
        
        
        <c:catch var="e">
            <%= 10/0 %>
        </c:catch>
        
        <p style="color: red;">${e}</p>
        
        
    </body>
</html>
