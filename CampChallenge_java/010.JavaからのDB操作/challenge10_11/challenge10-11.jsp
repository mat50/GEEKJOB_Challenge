<%-- 
    Document   : challenge10-08
    Created on : 2017/03/10, 13:37:34
    Author     : mat

以下の課題を、JavaからのJDBCを用いて実現してください。
profileIDで指定したレコードの、profileID以外の要素をすべて上書きできるフォームを作成してください
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
        <form action="challenge10_11" method="post">
            <%--データ更新欄--%>
            ID：<input type = "text" name = "txtReferenceID" ><br>
            名前：<input type = "text" name = "txtUpdateName" ><br>
            電話番号：<input type = "text" name = "txtUpdateTell" ><br>
            年齢：<input type = "text" name = "txtUpdateAge" ><br>
            生年月日<br>
            年(西暦)：<input type = "text" name = "txtUpdateBirthYear"><br>
            月：<input type = "text" name = "txtUpdateBirthMonth"><br>
            日：<input type = "text" name = "txtUpdateBirthDay"><br>
            <%--送信ボタン--%>
            <input type = "submit" name = "btnSubmit">

        </form>
    </body>
</html>
