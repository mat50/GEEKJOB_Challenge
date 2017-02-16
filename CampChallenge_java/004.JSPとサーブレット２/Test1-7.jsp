<%-- 
    Document   : Test2
    Created on : 2017/02/16, 15:27:55
    Author     : mat
--%>

<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%!
           String getProf(int id) {
           HashMap<Integer,String>req = new HashMap<Integer,String>();
           
           req.put(111,"名前:一郎<br>生年月日:2011/1/1<br>住所:東京都");
           req.put(222,"名前:二郎<br>生年月日:2012/2/2<br>住所:千葉県");
           req.put(333,"名前:三郎<br>生年月日:2013/3/3<br>住所:埼玉県");
           
           return req.get(id);
       }
       %>
       
        <%
       String req = getProf(111);
       out.print(req);
       %>
        
    </body>
</html>
