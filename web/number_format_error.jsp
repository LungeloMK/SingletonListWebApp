<%-- 
    Document   : number_format_error
    Created on : 13 Mar 2026, 10:11:14 AM
    Author     : CASH
--%>

<%@page   isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Number Format Page</title>
    </head>
    <body>
        <h1>Number format</h1>
        
        <%
            String errorMsg  = exception.getMessage();
        %>
        
        <p>
            <b>Error message  -->  <%=errorMsg%></b>
        </p>
        
        Click <a href="index.html">here</a>  to go back to the main page.
    </body>
    
    
</html>
