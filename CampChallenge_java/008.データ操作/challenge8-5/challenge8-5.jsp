<%-- 
    Document   : challenge8-5
    Created on : 2017/02/27, 16:45:22
    Author     : mat

以下の機能を実装してください。

名前・性別・趣味を入力するページを作成してください。
また、入力された名前・性別・趣味を記憶し、次にアクセスした際に記録されたデータを初期値として表示してください。
※Javaと同時に、HTMLの知識が必要になります。
※入力フィールドの使い方を調べてみましょう。
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
            //セッション作成
            HttpSession hs = request.getSession(true);

            String DefName = (String) hs.getAttribute("Name");
            String DefSex = (String) hs.getAttribute("Sex");
            String DefHobby = (String) hs.getAttribute("Hobby");
            //テスト
            out.print(DefSex);

        %>

        <%--課題2で使うサーブレットを指定--%>
        <form action="challenge8_5" method="post">
            名前：<input type = "text" name="名前" value=<%=DefName%>> <br>
            性別：<br>
            <%--value内に入力内容を入れる--%>
            男性：<input type = "radio" name="性別" value="男性" <%if(DefSex.equals("男性")){out.print("checked");}%>> <br>
            女性：<input type = "radio" name="性別" value="女性"<%if(DefSex.equals("女性")){out.print("checked");}%>> <br>
            趣味：<textarea name="趣味"><%=DefHobby%> </textarea><br>
            <%--送信ボタンを押すとサーブレットにデータが送られる--%>
            送信：<input type = "submit" name="送信"> 
            
        </form>
    </body>
</html>
