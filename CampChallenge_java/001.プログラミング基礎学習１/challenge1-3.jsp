<%-- 
    Document   : challenge1-3
    Created on : 2017/02/10, 15:02:38
    Author     : mat
--%>
<%
    String message = "私の名前は松島です";
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            out.print(message);
        %>
        </body>
</html>
