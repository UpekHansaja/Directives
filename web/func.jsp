<%-- 
    Document   : func
    Created on : Aug 25, 2024, 2:50:42 PM
    Author     : upekhansaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fun" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Functions</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <h1 style="color: coral;">
            ${fun:contains("Java", "a")}
        </h1>

        <h1 style="color: cornflowerblue;">
            ${fun:endsWith("Java", "v")}
        </h1>

        <%
            String a[] = {"Java", "PHP", "C#"};
            session.setAttribute("a", a);
        %>

        <h1 style="color: cadetblue;">
            ${fun:join(sessionScope.a,"-")}
        </h1>

        <br/>
        <br/>

        <h1>${fun:length("Java")}</h1>

        <h1>${fun:replace("Java", "a", "_")}</h1>

        <h1>${fun:split("Java", "a")[0]}</h1>

        <h1>${fun:substring("Java", 1, 3)}</h1>
        
        <h1>${fun:toUpperCase("java")}</h1>

    </body>
</html>
