<%-- 
    Document   : fmt
    Created on : Aug 25, 2024, 1:01:57 AM
    Author     : upekhansaja
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>@taglib fmt</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <fm:formatNumber var="v" value="10.686" pattern="#.######" scope="session"/>
        ${sessionScope.v}

        <br/>
        <br/>

        <fm:formatNumber var="vo" value="10.686" pattern="0.000000" scope="session"/>
        ${sessionScope.vo}

        <br/>
        <br/>

        <fm:formatNumber var="cur" value="10.686" type="currency" currencyCode="LKR" scope="session"/>
        ${sessionScope.cur}

        <br/>
        <br/>

        <fm:formatNumber var="per" value="10.686" type="percent" scope="session"/>
        ${sessionScope.per}

        <br/>
        <br/>

        <%
            Date d = new Date();
            session.setAttribute("date", d);
        %>

        <fm:formatDate var="dt" value="${sessionScope.date}" type="both" pattern="yyyy-MM-dd hh:mm a" scope="session"/> 
        ${sessionScope.dt}
        
        <br/>
        <br/>
        
        <fm:parseDate var="pd" value="2024-01-01" pattern="yyyy-MM-dd" scope="session"/>
        ${sessionScope.pd}

        </body>
    </html>
