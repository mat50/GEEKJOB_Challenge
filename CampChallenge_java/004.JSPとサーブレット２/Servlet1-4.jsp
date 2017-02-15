<%-- 
    Document   : Servlet1-4
    Created on : 2017/02/15, 15:00:10
    Author     : mat
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
            Integer getNum(int a, int f, boolean type) {

                int x = a * f;
                //trueの場合、2乗
                if (type == true) {
                    x = x * x;

                }
                return x;
            }
            //デフォルト値の記述
            Integer getNum(int a) {

                return getNum(a, 5, false);
            }

            Integer getNum(int a, int b) {

                return getNum(a, b, false);
            }

            Integer getNum(int a, boolean type) {

                return getNum(a, 5, type);
            }


        %>

        <%
            Integer num = getNum(2,true);
            //出力が100になれば正常
            out.print(num);

        %>      
    </body>
</html>
