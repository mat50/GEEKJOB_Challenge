<%-- 
    Document   : challenge10-08
    Created on : 2017/03/10, 13:37:34
    Author     : mat

以下の課題を、JavaからのJDBCを用いて実現してください。
profileIDで指定したレコードを削除できるフォームを作成してください
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%--データを受け取るサーブレットを指定--%>
        <form action="challenge10_10" method="post">
            <%--検索欄--%>
            削除するID：<input type = "text" name = "txtDeletion" ><br>
            <%--送信ボタン--%>
            <input type = "submit" name = "btnSubmit">

        </form>
    </body>
</html>
