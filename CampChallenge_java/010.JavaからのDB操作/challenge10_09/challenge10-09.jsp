<%-- 
    Document   : challenge10-08
    Created on : 2017/03/10, 13:37:34
    Author     : mat

以下の課題を、JavaからのJDBCを用いて実現してください。
フォームからデータを挿入できる処理を構築してください。
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
        <form action="challenge10_09" method="post">
            <%--データ挿入欄--%>
            ID：<input type = "text" name = "txtInsertID" ><br>
            名前：<input type = "text" name = "txtInsertName" ><br>
            電話番号：<input type = "text" name = "txtInsertTell" ><br>
            年齢：<input type = "text" name = "txtInsertAge" ><br>
            生年月日<br>
            年(西暦)：<input type = "text" name = "txtInsertBirthYear"><br>
            月：<input type = "text" name = "txtInsertBirthMonth"><br>
            日：<input type = "text" name = "txtInsertBirthDay"><br>
            <%--送信ボタン--%>
            <input type = "submit" name = "btnSubmit">

        </form>
    </body>
</html>
