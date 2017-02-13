<%-- 
    Document   : challenge2-2
    Created on : 2017/02/13, 11:55:05
    Author     : mat
--%>
<%
char a = 'A' ; String message = " ";
switch(a){
    case 'A':
        message = "英語";
        break;
    case 'あ':
        message = "日本語";
        break;
}
out.println(message);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
    </body>
</html>
