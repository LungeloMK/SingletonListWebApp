<%-- 
    Document   : add_outcome
    Created on : 12 Mar 2026, 9:02:59 PM
    Author     : CASH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Outcome Page</title>
    </head>
    <body>
        <h1>Add outcome</h1>
        <%
          Integer num = (Integer)request.getAttribute("num");     
        %>
        
        <p>
            The number <b><%=num%></b> has been added to the list.
        </p>
        
        <p>
            Please click <a href="menu.html">here</a> to go back to the menu or
            <a href="index.html">here</a> to go back to the main page.
        </p>
    </body>
</html>
