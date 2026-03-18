<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get List Outcome Page</title>
    </head>
    <body>
        <h1>Get list outcome</h1>

        <%
            List<Integer> list = (List<Integer>) request.getAttribute("list");
        %>

        <p>Below are the list numbers:</p>

        <table>
            <%
                for (Integer num : list) {
            %>
            <tr>
                <td><b><%=num%></b></td>
            </tr>
            <%
                }
            %>
        </table>

        <p>
            Please click <a href="menu.html">here</a> to go back to the menu or
            <a href="index.html">here</a> to go back to the main page.
        </p>
    </body>
</html>