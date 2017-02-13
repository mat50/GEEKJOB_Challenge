<%-- 
    Document   : challenge2-10
    Created on : 2017/02/13, 14:47:01
    Author     : mat
--%>
<%
    String q = request.getParameter("suuji");
    int a = Integer.parseInt(q);
//クエリ
    int two = 0;
    int thr = 0;
    int fiv = 0;
    int sev = 0;
    int yojou = 0;
    out.println(a + "<br>");
//元の値

            yojou = a % 2;
        while (yojou == 0) {
            a = a/2;
            yojou = a % 2;
            two = two + 1;
        }
        out.println("2で");
        out.println(two + "回、割れます<br>");
        
            yojou = a % 3;
        while (yojou == 0) {
            a = a/3;
            yojou = a % 3;
            thr = thr + 1;
        }
        out.println("3で");
        out.println(thr + "回、割れます<br>");
        
            yojou = a % 5;
        while (yojou == 0) {
            a = a/5;
            yojou = a % 5;
            fiv = fiv + 1;
        }
        out.println("5で");
        out.println(fiv + "回、割れます<br>");

            yojou = a % 7;
        while (yojou == 0) {
            a = a/7;
            yojou = a % 7;
            sev = sev + 1;
        }
        out.println("7で");
        out.println(sev + "回、割れます<br>");
        
        
        
        if(a >= 11){
        out.println("その他の素数があります");
        }else if(two == 0 && thr == 0 && fiv == 0 && sev == 0){
        out.println("その他の素数があります");
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
