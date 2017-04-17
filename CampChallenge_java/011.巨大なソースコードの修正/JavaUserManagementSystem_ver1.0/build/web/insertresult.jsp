<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%@page import="jums.UserDataBeans" %>
<%
    HttpSession hs = request.getSession();
    UserDataBeans uBeans = (UserDataBeans)hs.getAttribute("uBeans");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録結果画面</title>
    </head>
    <body>
        <h1>登録結果</h1><br>
        名前:<%= uBeans.getName() %><br>
        生年月日:<%= uBeans.getYear()+"年"+uBeans.getMonth()+"月"+uBeans.getDay()+"日"%><br>
        種別:<%= uBeans.getType()%><br>
        電話番号:<%= uBeans.getTell()%><br>
        自己紹介:<%= uBeans.getComment()%><br>
        以上の内容で登録しました。<br>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
