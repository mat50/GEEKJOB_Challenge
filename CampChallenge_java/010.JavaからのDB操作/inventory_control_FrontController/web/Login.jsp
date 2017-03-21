<%-- 
    Document   : logout
    Created on : 2017/03/14, 19:50:46
    Author     : mat

以下の機能を満たすロジックを作成してください。
在庫管理システムを作成します。
まず、DBにユーザー情報管理テーブルと、商品情報登録テーブルを作成してください。
その上で、下記機能を実現してください。
①ユーザーのログイン・ログアウト機能
②商品情報登録機能
③商品一覧機能
※各テーブルの構成は各自の想像で作ってみてください。
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <form action="FrontController" method="post">
            <%
            HttpSession hs = request.getSession(true);
                    String LC = (String) hs.getAttribute("LoginCheck");

                    if ("OK!".equals(LC)) {
                        response.sendRedirect("Menu.jsp");
                        
                    } else if (LC != null) {
                        out.print(LC);
                        out.print("<br>");
                    }
            %>
            <%--ログインするためのフォームを作る（IDとパスワード）--%>      
            ID：<input type = "text" name ="loginID" size ="16" ><br>
            Password：<input type = "text" name ="loginPass" size ="16"><br>
             <button type="submit" name="action" value="1">送信</button>
        </form>
    </body>
</html>
