<%-- 
    Document   : get_size_outcome
    Created on : 12 Mar 2026, 9:17:37 PM
    Author     : CASH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Size Outcome Page</title>
    </head>
    <body>
        <h1>Get size outcome</h1>
        <%
        Integer listSize = (Integer)request.getAttribute("size");
        
        %>
        
        <p>
            There are <b><%=listSize%></b> numbers in  the list.
        </p>
        
        <p>
            Please click <a href="menu.html">here</a> to go back to the menu or
            <a href="index.html">here</a> to go back to the main page.
        </p>
    </body>
</html>
