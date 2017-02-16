<%-- 
    Document   : Servlet1-7
    Created on : 2017/02/15, 17:33:30
    Author     : mat

引き数に1つのid(数値)をとり、3人分のプロフィール(項目は課題5参照)をあらかじめメソッド内で
定義しておく。引き数のid値により戻り値として返却するプロフィールを誰のものにするか選択する。
それ以降などは課題「戻り値2」と同じ扱いにする。

>課題「引数、戻り値1」の3人分のプロフィールのうち1人だけ住所が値nullの状態で定義し、
ループ処理で全員分のプロフィールをid以外表示する処理を実行する。
この際、歯抜けになっているデータはcontinueで飛ばす
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
            String[] getProf(int id) {
                //三人分のプロフィール
                String prof1[] = {"一郎", "2011/1/1", "東京都"};
                String prof2[] = {"二郎", "2012/2/2", "千葉県"};
                String prof3[] = {"三郎", "2013/3/3", "null"};
                //返す値 配列3つ入る
                String[] req = new String[3];

                switch (id) {
                    case 111:
                        req = prof1;
                        break;
                    case 222:
                        req = prof2;
                        break;
                    case 333:
                        req = prof3;
                        break;

                }
                return req;

            }
        %>

        <%
            int ids[] = {111, 222, 333,};

            for (int i = 0; i < 3; i++) {
                //回数判定
                int x = ids[i];

                String req[] = getProf(x);
                String name = req[0];
                String birth = req[1];
                String add = req[2];

                out.println("名前:" + name + "<br>");
                out.println("生年月日:" + birth + "<br>");
                out.println("住所:" + add + "<br>");

                if (add == null) {
                    continue;
                }

            }
        %>
    </body>
</html>
