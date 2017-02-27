<%-- 
    Document   : callenge7-4
    Created on : 2017/02/27, 11:22:19
    Author     : mat

2015年1月1日 0時0分0秒と2015年12月31日 23時59分59秒の差（ミリ秒）を表示してください。
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
            cal.set(2015, 0, 1, 00, 0, 0);
            Date calpast1 = cal.getTime();
            cal.set(2015, 11, 31, 23, 59, 59);
            Date calpast2 = cal.getTime();

            long cal1 = calpast1.getTime();
            long cal2 = calpast2.getTime();

            out.print("2015年1月1日 0時0分0秒と2015年12月31日 23時59分59秒の差（ミリ秒）を表示<br>" + (cal2 - cal1));


        %>
    </body>
</html>
