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
            <button type="submit" name="action" value="2" >ログアウト</button><br>
            <%
                //商品追加処理の結果
                HttpSession hs = request.getSession(true);
                String gI = (String) hs.getAttribute("goodsInsert");
                if (gI != null) {
                    out.print("商品追加できたか？：");
                    out.print(gI);
                    out.print("<br>");
                    out.print("<br>");
                }
            %>

            <%--商品登録のためのフォームを作る（商品名と値段）--%>      
            商品名：<input type = "text" name ="goodsName" size ="30"><br>
            値段：<input type = "text" name ="goodsPrice" size ="11"><br>
            <button type="submit" name="action" value="3">送信</button><br>
            <button type="submit" name="action" value="4">一覧を更新</button><br>
            <%
                //追加された商品の一覧
                ArrayList gL = (ArrayList) hs.getAttribute("goodsList");
                
                if (gL == null) {
                    out.print("データがありません");

                } else  {

                    for (int i = 0; i < gL.size(); i++) {
                        if (i % 2 == 0) {
                            out.print("商品名:");
                            out.print(gL.get(i));
                            out.print("<br>");
                        } else {
                            out.print("値段:");
                            out.print(gL.get(i));
                            out.print("円");
                            out.print("<br>");

                        }

                    }
                }
            %>
        </form>
    </body>
</html>
