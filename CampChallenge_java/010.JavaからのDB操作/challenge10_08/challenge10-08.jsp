<%-- 
    Document   : challenge10-08
    Created on : 2017/03/10, 13:37:34
    Author     : mat

以下の課題を、JavaからのJDBCを用いて実現してください。
検索用のフォームを用意し、名前の部分一致で検索＆表示する処理を構築してください。
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
        <form action="challenge10_08" method="post">
            <%--検索欄--%>
            検索：<input type = "text" name = "txtSearch" ><br>
            <%--送信ボタン--%>
            <input type = "submit" name = "btnSubmit">

        </form>
    </body>
</html>
