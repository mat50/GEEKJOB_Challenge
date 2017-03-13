<%-- 
    Document   : challenge10-08
    Created on : 2017/03/10, 13:37:34
    Author     : mat

以下の課題を、JavaからのJDBCを用いて実現してください。
検索用のフォームを用意し、名前、年齢、誕生日を使った複合検索ができるようにしてください。
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
        <form action="challenge10_12" method="post">
            <%--データ更新欄--%>
            名前：<input type = "text" name = "txtSearthName" ><br>
            年齢：<input type = "text" name = "txtSearthAge" ><br>
            生年月日<br>
            年(西暦)：<input type = "text" name = "txtSearthBirthYear"><br>
            月：<input type = "text" name = "txtSearthBirthMonth"><br>
            日：<input type = "text" name = "txtSearthBirthDay"><br>
            <%--送信ボタン--%>
            <input type = "submit" name = "btnSubmit">

        </form>
    </body>
</html>
