<%-- 
    Document   : challenge7-2
    Created on : 2017/02/27, 10:40:04
    Author     : mat

現在の日時を「年-月-日 時:分:秒」で表示してください。
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.*,java.text.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH時mm分ss秒");
        String sdate = sdf.format(date);
        out.print(sdate);
        %>
    </body>
</html>
