<%-- 
    Document   : challenge7-1
    Created on : 2017/02/27, 10:31:13
    Author     : mat

2016年1月1日 0時0分0秒のタイムスタンプを作成し、表示してください。
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Calendar cal = Calendar.getInstance();
            cal.set(2016,0,1,0,00,00);
            Date calpast = cal.getTime();
            out.print(calpast);
        
        %>
    </body>
</html>
