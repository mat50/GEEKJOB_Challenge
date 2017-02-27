<%-- 
    Document   : challenge8-2
    Created on : 2017/02/27, 16:11:15
    Author     : mat

クッキーに現在時刻を記録し、次にアクセスした際に、前回記録した日時を表示してください。
--%>

<%@page import="java.util.Date"%>
<%@page import="javax.servlet.http.Cookie"%>
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
            //クッキーに現在時刻を持たせる
            Cookie c = new Cookie("LastLogin", time.toString());
            //情報を保存
            response.addCookie(c);
            //次の訪問で
            //配列にクッキーの情報を入れる
            Cookie cs[] = request.getCookies();
            //クッキーに情報があれば
            if (cs != null) {
                //配列の最大数まで繰り返す
                for (int i = 0; i < cs.length; i++) {
                    //名前に同じものがあれば
                    if (cs[i].getName().equals("LastLogin")) {
                        out.print("最後のログインは、" + cs[i].getValue());
                        break;
                    }

                }
            }
        %>


    </body>
</html>
