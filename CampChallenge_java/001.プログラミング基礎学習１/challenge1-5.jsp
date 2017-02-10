<%-- 
    Document   : challenge1-5
    Created on : 2017/02/10, 15:43:27
    Author     : mat
--%>
<%
    int num = 1;
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
        if (num==1){
            out.print("1です！");
        }else if(num==2){
            out.print("プログラミングキャンプ！");
        }else
            out.print("その他です！");
        %>
    </body>
</html>
