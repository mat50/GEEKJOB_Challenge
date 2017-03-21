<%-- 
    Document   : menu
    Created on : 2017/03/14, 19:50:38
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

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="FrontController" method="post">
            <button type="submit" name="action" value="2" <% request.getSession(true).invalidate(); %>>ログアウト</button><br>

            
            <%--商品登録のためのフォームを作る（商品名と値段）--%>      
            商品名：<input type = "text" name ="goodsName" size ="30"><br>
            値段：<input type = "text" name ="goodsPrice" size ="11"><br>
            <button type="submit" name="action" value="3">送信</button><br>
            <button type="submit" name="action" value="3">一覧を更新</button><br>
            <% 
                HttpSession hs = request.getSession(true);
                 String gI = (String) hs.getAttribute("goodsInsert");
                if (gI != null) {
                    out.print(gI);
                }
                
                ArrayList gL = (ArrayList) hs.getAttribute("goodsList");
                if (gL != null) {
                    for(int i = 0;i<gL.size();i++){
                    out.print(gL.get(i));
                }
                }
            %>
        </form>
    </body>
</html>
