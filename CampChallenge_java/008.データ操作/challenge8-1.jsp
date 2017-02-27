<%-- 
    Document   : challenge8-1
    Created on : 2017/02/27, 15:16:34
    Author     : mat

以下の入力フィールドを持ったHTMLを、Javaで処理する想定で記述してください。
・名前（テキストボックス）、性別（ラジオボタン）、趣味（複数行テキストボックス）
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%--課題2で使うサーブレットを指定--%>
        <form action="challenge8_2" method="post">
            名前：<input type = "text" name="名前"> <br>
            性別：<br>
            <%--value内に入力内容を入れる--%>
            男性：<input type = "radio" name="性別" value="男性"> <br>
            女性：<input type = "radio" name="性別" value="女性"> <br>
            趣味：<textarea name="趣味"> </textarea><br>
            <%--送信ボタンを押すとサーブレットにデータが送られる--%>
            送信：<input type = "submit" name="送信"> 
        </form>
    </body>
</html>
