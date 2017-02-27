<%-- 
    Document   : charrenge7-10
    Created on : 2017/02/27, 13:54:32
    Author     : mat
--%>

<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.FileWriter"%>
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
            //日時取得
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH時mm分ss秒");
            String sdate = sdf.format(date);
            //ログファイル作成（追記モード） 場所はglassfishのコンフィグファイル内
            File txt = new File("Mathlog.txt");
            FileWriter fwa = new FileWriter(txt, true);
            //開始ログ
            fwa.write("処理開始/" + sdate + "<br>");

            //標準クラスはMathクラスを使用する。以下は、2の平方根の値が入る
            double x = Math.sqrt(2);
            //出力
            out.print(x + "<br>");

            //終了ログ
            fwa.write("処理終了/" + sdate + "<br>");
            fwa.close();

            //ログ読み込み
            FileReader fr = new FileReader(txt);
            BufferedReader br = new BufferedReader(fr);
            out.print(br.readLine());
            br.close();
        %>
    </body>
</html>
