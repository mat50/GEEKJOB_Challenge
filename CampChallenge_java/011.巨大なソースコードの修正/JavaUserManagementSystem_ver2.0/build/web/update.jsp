<%@page import="jums.JumsHelper" 
        import="jums.UserDataDTO"
        import="java.util.ArrayList"%>
<%
    JumsHelper jh = JumsHelper.getInstance();
    ArrayList<UserDataDTO> udd = (ArrayList<UserDataDTO>) session.getAttribute("resultData");
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
        <title>JUMS変更画面</title>
    </head>
    <body>
        <form action="UpdateResult" method="POST">
            名前:
            <input type="text" name="name" value="<%= udd.get(I).getName()%>">
            <br><br>

            生年月日:　
            <select name="year">
                <option value="">----</option>
                <% for (int i = 1950; i <= 2010; i++) {%>
                <option value="<%=i%>" <% if (year == i) {
                        out.print("selected = \"selected\"");
                    }%>><%=i%></option>
                <% } %>
            </select>年
            <select name="month">
                <option value="">--</option>
                <% for (int i = 1; i <= 12; i++) {%>
                <option value="<%=i%>" <% if (month == i) {
                        out.print("selected = \"selected\"");
                    }%>><%=i%></option>
                <% } %>
            </select>月
            <select name="day">
                <option value="">--</option>
                <% for (int i = 1; i <= 31; i++) {%>
                <option value="<%=i%>" <% if (day == i) {
                        out.print("selected = \"selected\"");
                    }%>><%=i%></option>
                <% } %>
            </select>日
            <br><br>

            種別:
            <br>
            <% for (int i = 1; i <= 3; i++) {%>
            <input type="radio" name="type" value="<%=i%>"<%if (udd.get(I).getType() == i) {
                    out.print("checked = \"checked\"");
                }%>><%=jh.exTypenum(i)%><br>
            <% }%>
            <br>

            電話番号:
            <input type="text" name="tell" value="<%=udd.get(I).getTell()%>">
            <br><br>

            自己紹介文
            <br>
            <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"><%=udd.get(I).getComment()%></textarea><br><br>

            <input type="hidden" name="userID"  value="<%= udd.get(I).getUserID()%>">
            <input type="hidden" name="ac"  value="<%= session.getAttribute("ac")%>">
            <input type="submit" name="btnSubmit" value="確認画面へ">
        </form>
        <form action="ResultDetail" method="POST">
            <input type="submit" name="update" value="詳細画面へ戻る" style="width:100px">
        </form>
        <br>
        <%=jh.home()%>
    </body>
</html>
