<%-- 
    Document   : charrenge7-9
    Created on : 2017/02/27, 13:19:17
    Author     : mat
--%>

<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
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
       
       FileReader fr = new FileReader(txt);
       BufferedReader br = new BufferedReader(fr);
       out.print(br.readLine());
       br.close();
       
       %>
    </body>
</html>
