<%-- 
    Document   : challenge7-8
    Created on : 2017/02/27, 11:54:03
    Author     : mat

ファイルに自己紹介を書き出し、保存してください。
--%>

<%@page import="java.io.FileWriter"%>
<%@page import="java.io.File"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       //場所はglassfishのコンフィグファイル内
       File txt = new File("test22.txt");
       
       //txt.createNewFile();
       
       FileWriter fw = new FileWriter(txt);
       fw.write("こんにちは、松島です");
       fw.close();
       
       
       %>
    </body>
</html>
