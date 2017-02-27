<%-- 
    Document   : challenge7-5
    Created on : 2017/02/27, 11:34:50
    Author     : mat

自分の氏名について、バイト数と文字数を取得して、表示してください。
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
        String moji = "松島令旺";
        out.println(moji.length());
        //UTF-8なので12バイト
        out.println(moji.getBytes().length);
        
        %>
    </body>
</html>
