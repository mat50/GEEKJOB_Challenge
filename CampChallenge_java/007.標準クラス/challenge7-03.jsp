<%-- 
    Document   : challenge7-3
    Created on : 2017/02/27, 10:50:28
    Author     : mat

2016年11月4日 10時0分0秒のタイムスタンプを作成し、「年-月-日 時:分:秒」で表示してください。
--%>

<%@page import="java.text.SimpleDateFormat"%>
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
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH時mm分ss秒");
        Calendar cal = Calendar.getInstance();
        cal.set(2016,10,4,10,0,0);
        Date calpast = cal.getTime();
        String sdate = sdf.format(calpast);
        out.print(sdate);
        
        //Date past = new Date();
        
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH時mm分ss秒");
//        Date sdfpast = sdf.parse("2016/11/4 10:00:00");
//        String sdate = sdf.format(sdfpast);
//        out.print(sdate);
        

        %>
    </body>
</html>
