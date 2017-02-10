<%-- 
    Document   : challenge1-6
    Created on : 2017/02/10, 16:24:19
    Author     : mat
--%>
<%
    String hen1 = request.getParameter("sougaku");
    String hen2 = request.getParameter("kosuu");
    String hen3 = request.getParameter("syubetu");

    int sonum = Integer.parseInt(hen1);
    int konum = Integer.parseInt(hen2);
    int synum = Integer.parseInt(hen3);

    out.println("種別");

    if (synum == 1) {
        out.println("雑貨");
    } else if (synum == 2) {
        out.println("生鮮食品");
    } else {
        out.println("その他");
    }

    out.println("総額");
    out.println(sonum);
    out.println("円");
    out.println("1個当たり");
    out.print(sonum / konum);
    out.println("円");
    if (sonum >= 5000) {
        out.println("付与ポイント数" + sonum * 0.05);
    } else if (sonum >= 3000) {
        out.println("付与ポイント数" + sonum * 0.04);
    }else{
        out.println(0);
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    </body>
</html>
