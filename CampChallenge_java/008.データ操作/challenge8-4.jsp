<%-- 
    Document   : challenge8-4
    Created on : 2017/02/27, 16:36:48
    Author     : mat

課題「クッキーの記録と表示」と同じ機能をセッションで作成してください。
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            //ユーザーの1回目の訪問
            //Dateを作成
            Date time = new Date();
            //セッション作成
            HttpSession hs = request.getSession(true);
            //時間を取得
            hs.setAttribute("LastLogin",time.toString());
            //次の訪問で
            out.print("最後のログインは、"+hs.getAttribute("LastLogin"));
            
       %>
    </body>
</html>
