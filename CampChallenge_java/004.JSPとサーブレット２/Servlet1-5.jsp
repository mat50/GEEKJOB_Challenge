<%-- 
    Document   : MyName
    Created on : 2017/02/15, 13:20:58
    Author     : mat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <%! 
        String getName() {
            return "松島令旺";
        }

        String getBirth() {
            return "1992/11/16";
        }

        String getGreet() {
            return "よろしくおねがいします";
        }

        boolean getType() {
            return true;
        }
    %>

    <%
        String name = getName();
        String birth = getBirth();
        String profile = getGreet();
        boolean type = getType();
        int x = 1;

        for (int i = 0; i < 10; i++) {
            //out.println(x +"回目<br>");
            //x = x+1;
            out.println("名前:" + name + "<br>");
            out.println("生年月日:" + birth + "<br>");
            out.println("自己紹介:" + profile + "<br>");
            if (type == true) {
                out.println("「この処理は正しく実行できました」<br>");
            } else {
                out.println("「この処理は正しく実行できませんでした」<br>");
            }
        }
    %>

</body>
</html>
