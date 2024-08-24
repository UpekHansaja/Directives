<%-- 
    Document   : index
    Created on : Aug 22, 2024, 12:46:09 AM
    Author     : upekhansaja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--This is the page directive, contentType refered to the content of the response such as,
text/html , text/xml , text/json , application/pdf -->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Directives in JSP</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <br>

        <%@include file="header.jsp" %> 
        <!--This is include directive works during the translation time. In here we cannot pass parameters :(-->

        <br>

        <jsp:include page="footer.jsp"/>
        <!--This is jsp include in Standard Actions. In here optionally we can pass parameters :)-->

        <br>

        <%@page import="modal.User" %>
        <!--This is how an import statement is use in java file (this is usually for when java in used in the jsp)-->

        <br>

        ${10<5}

        <%--<%@page isELIgnored="true" %>--%>
        <!--this page directive with the attribute isELIgnored helps us to ignore EL in the jsp
        Usually we didn't use this, while the default is false --> 


        <%@page session="false" %>
        <!--This page directive with the attribute session helps us to determine whether the session should create or not,
        By default this is true because every request to the server side will automatically create a session-->

        <%@page isThreadSafe="false" %>
        <!--By default isThreadSafe attribute is true, When isThreadSafe attribute is set to false, it process the request by request -->

        <br>
        <br>

        <!-- Comment below line (55th line) to visit this page **************--> 
        <%--<%= 10 / 0%>--%>
        <!--We created an Arithmetic exception to check errorPage attribute in page directive-->

        <%@page errorPage="somethingWrong.jsp" %>
        <!--This helps us to conquer the error by redirecting the errorPage--> 


        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!--IF CONDITION-->
        <!--To make the below code fragment work, comment the above (39th line) isELIgnored="true" page directive or make it false-->
        <c:if test="${10>5}">
            <h3 style="color: lightseagreen"> Taglib Directive if check using a EL </h3>
        </c:if>

        <c:if test="true">
            <h3 style="color: lightseagreen"> Taglib Directive if check by boolean value </h3>
        </c:if>

        <!--IF ELSE CONDITION-->
        <c:choose>
            <c:when test="false">
                <h3 style="color: coral">Inside 1st if</h3>
            </c:when>
            <c:when test="true">
                <h3 style="color: coral">Inside 2nd if</h3>
            </c:when>
            <c:when test="false">
                <h3 style="color: coral">Inside 3rd if</h3>
            </c:when>
            <c:otherwise>
                <h3 style="color: coral">Inside else</h3>
            </c:otherwise>
        </c:choose>

        <!--jsp Expression (<%= ""%>)-->
        <c:out value="Hola"/>

        <br>
        <br>

        <!--FOR LOOP-->
        <!--To make the below code fragment work, comment the above (39th line) isELIgnored="true" page directive or make it false-->
        <c:forEach var="x" begin="0" end="10" step="1">
            ${x} <br>
        </c:forEach>


    </body>
</html>
