<%@page import="jums.JumsHelper" 
        import="jums.UserDataDTO"
        import="java.util.ArrayList"%>
<%
    JumsHelper jh = JumsHelper.getInstance();
    ArrayList<UserDataDTO> udd = (ArrayList<UserDataDTO>) session.getAttribute("resultData");
    ArrayList<String> chkList = (ArrayList<String>) session.getAttribute("chkUpdate");
    Integer I = (Integer) session.getAttribute("i");
    //Dateから年、月、日をそれぞれ取り出す
    Integer year = Integer.valueOf(String.format("%tY", udd.get(I).getBirthday()));
    Integer month = Integer.valueOf(String.format("%tm", udd.get(I).getBirthday()));
    Integer day = Integer.valueOf(String.format("%td", udd.get(I).getBirthday()));
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS更新結果画面</title>
    </head>
    <body>
        <% if (chkList.size() == 0) {%>
        <h1>更新結果</h1><br>
        名前:<%= udd.get(I).getName()%><br>
        生年月日:<%= year + "年" + month + "月" + day + "日"%><br>
        種別:<%= jh.exTypenum(udd.get(I).getType())%><br>
        電話番号:<%= udd.get(I).getTell()%><br>
        自己紹介:<%= udd.get(I).getComment()%><br>
        以上の内容で更新しました。<br>
        <form action="ResultDetail" method="POST">
            <input type="hidden" name="ac"  value="<%= session.getAttribute("ac")%>">c
            <input type="submit" name="return" value="詳細画面へ戻る" style="width:100px">
        </form>
        <% } else {%>
        <h1>入力が不完全です</h1>
        <form action="Update" method="POST">
            <input type="hidden" name="ac"  value="<%= session.getAttribute("ac")%>">
            <input type="submit" name="no" value="登録画面に戻る">
        </form>
        <%=jh.chkinput(chkList)%>

        <% }%>
    </body>
    <%=jh.home()%>
</html>
