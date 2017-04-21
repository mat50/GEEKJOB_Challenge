<%@page import="jums.JumsHelper"
        import="jums.UserDataDTO"
        import="java.util.ArrayList"%>
<%
    JumsHelper jh = JumsHelper.getInstance();
    ArrayList<UserDataDTO> udd = (ArrayList<UserDataDTO>) session.getAttribute("resultData");
    Integer I = (Integer) session.getAttribute("i");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>削除確認</h1>
        以下の内容を削除します。よろしいですか？<br>
        名前:<%= udd.get(I).getName()%><br>
        生年月日:<%= udd.get(I).getBirthday()%><br>
        種別:<%= jh.exTypenum(udd.get(I).getType())%><br>
        電話番号:<%= udd.get(I).getTell()%><br>
        自己紹介:<%= udd.get(I).getComment()%><br>
        登録日時:<%= udd.get(I).getNewDate()%><br>
        
        <form action="DeleteResult" method="POST">
            <input type="hidden" name="userID"  value="<%= udd.get(I).getUserID()%>">
            <input type="hidden" name="ac"  value="<%= session.getAttribute("ac")%>">
            <input type="submit" name="YES" value="はい" style="width:100px">
        </form><br>
        <form action="ResultDetail" method="POST">
            <input type="submit" name="NO" value="詳細画面に戻る" style="width:100px">
        </form>
    </body>
</html>
