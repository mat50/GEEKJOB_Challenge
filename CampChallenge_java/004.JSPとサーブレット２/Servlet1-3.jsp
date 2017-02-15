<%-- 
    Document   : newjsp
    Created on : 2017/02/15, 13:48:20
    Author     : mat
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            String check(int x) {

                if (x % 2 == 0) {
                    return "は偶数です";

                } else {
                    return "は奇数です";
                }

            }
        %>

        <%
            //判定する数字
            int y = 3;
            out.print(y + check(y));


        %>
    </body>
</html>
