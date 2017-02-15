<%-- 
    Document   : Servlet1-6
    Created on : 2017/02/15, 16:45:51
    Author     : mat

戻り値としてある人物のid(数値),名前,生年月日、住所を返却するメソッドを作成し、受け取った後はid以外の値を表示する
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            Integer getId() {
                return 111;
            }

            String getName() {
                return "松島令旺";
            }

            String getBirth() {
                return "1992/11/16";
            }

            String getAdd() {
                return "神奈川県";
            }
        %>

        <%
            Integer id = getId();
            String name = getName();
            String birth = getBirth();
            String add = getAdd();

            out.println("名前:" + name + "<br>");
            out.println("生年月日:" + birth + "<br>");
            out.println("住所:" + add + "<br>");
        %>
    </body>
</html>
