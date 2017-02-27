<%-- 
    Document   : challenge7-7
    Created on : 2017/02/27, 11:46:08
    Author     : mat

以下の文章の「I」⇒「い」に、「U」⇒「う」に入れ替える処理を作成し、結果を表示してください。
「きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます」
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
         String moji = "きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます";
         out.print(moji.replace("I", "い").replace("U","う"));

        %>
    </body>
</html>
