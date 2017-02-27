<%-- 
    Document   : challenge7-6
    Created on : 2017/02/27, 11:40:25
    Author     : mat

自分のメールアドレスの「@」以降の文字を取得して、表示してください。
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        //アドレスの@以降を取得したい
        String mail ="sanmaruni302@gmail.com";
        //@の場所を数値型で取得
        int at = mail.indexOf("@");
        //@以降を探す処理
        out.print(mail.substring(at));
        %>
    </body>
</html>
