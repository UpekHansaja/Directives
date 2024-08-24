# Directives in Java `<%@...%>`

In Java web application development, particularly with JavaServer Pages (JSP), **directives** are special instructions that provide global information about the entire JSP page. 
They don't produce any visible output themselves but influence the structure and behavior of the JSP page. 
There are _three main_ types of JSP directives:

### 1. Page Directive: 

This directive is used **to define global settings for the entire JSP page**, such as importing classes, setting content types, and managing error pages. 
For example:

   ```jsp
   <%@ page import="java.util.*, java.text.*" %>
   <%@ page contentType="text/html;charset=UTF-8" %>
   <%@ page errorPage="error.jsp" %>
   <%@ page session="true" %>
   <%@page isELIgnored="true" %>
   <%@page isThreadSafe="false" %>
   ```
   Common attributes include:
   - `import`: Specifies the Java packages or classes to import.
   - `contentType`: Defines the MIME type and character encoding for the response.
   - `errorPage`: Specifies the URL of the error page to forward to if an uncaught exception occurs.
   - `session`: Specifies whether the JSP page participates in HTTP sessions¹².

### 2. Include Directive: 

This directive is used **to include the content of another file** (static or dynamic) at the time the JSP page is translated into a servlet. 
This allows for _code reuse and modularity_. 
For example:

   ```jsp
   <%@ include file="header.jsp" %>
   <html>
   <head>
       <title>Include Directive Example</title>
   </head>
   <body>
       <h1>Welcome to JSP Include Directive Example</h1>
       <p>This content is included from another JSP file.</p>
       <%@ include file="footer.jsp" %>
   </body>
   </html>
   ```

### 3. Taglib Directive: 

This directive is used **to define a tag library that contains custom tags**. 
This allows developers to create _reusable components_ that encapsulate complex behavior. 
For example:

   ```jsp
   <%@ taglib uri="http://example.com/tags" prefix="ex" %>
   <html>
   <head>
       <title>Taglib Directive Example</title>
   </head>
   <body>
       <h1>Welcome to JSP Taglib Directive Example</h1>
       <ex:customTag attribute="value" />
   </body>
   </html>
   ```

These directives and their attributes is essential for creating well-structured and maintainable JSP applications.
