<%-- 
    Document   : challenge8-6
    Created on : 2017/02/28, 10:35:33
    Author     : mat

HTMLについて調べましょう。
HTMLには入力フィールド意外にも様々なタグが存在します。
Webページをデザインする上で欠かせない知識なので、タグを調べ、色々と使ってみましょう。
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%--斜体--%>
        <i>
            <%--太字--%>
            <b>
                <%--サイズと色の変更--%>
                <font size="20" color="ff0000">HTMLタグ色々</font></b></i>
        <br>  HTMLには様々なタグが存在します。例を上げると、
        <%--リスト化--%>
        <Ul>
            <Li>&lt;b&gt;：太字 </Li>
            <Li>&lt;i&gt;斜体 </Li>
            <Li>&lt;br&gt;：改行 </Li>
            <Li>&lt;strike&gt;：打ち消し線 </Li>
            <Li>&lt;ul&gt;リスト化 </Li>
                <%--打ち消し線--%>
            <Li><strike>&lt;frame&gt;フレームを実装 </strike>※HTML5で廃止</Li> 
        などです。
    </Ul>
</body>
</html>
