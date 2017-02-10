<%-- 
    Document   : challenge1-4
    Created on : 2017/02/10, 15:16:11
    Author     : mat
--%>
<%
    int hen = 10;
    final int tei = 10; 
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
        out.println(hen+1);
        out.println(tei+1);
        out.println(hen-1);
        out.println(tei-1);
        out.println(hen*2);
        out.println(tei*2);
        out.println(hen/2);
        out.println(tei/2);
        %>
    </body>
</html>
