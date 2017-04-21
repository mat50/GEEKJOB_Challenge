<%@page import="jums.JumsHelper"
        import="jums.UserDataDTO"
        import="java.util.ArrayList"%>
<%
    JumsHelper jh = JumsHelper.getInstance();
    ArrayList<UserDataDTO> udd = (ArrayList<UserDataDTO>) request.getAttribute("resultData");
    session.setAttribute("resultData",udd);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS検索結果画面</title>
    </head>
    <body>
        <h1>検索結果</h1>
        <%if (udd.size() >= 1) {%>
        <%for (int i = 0; i < udd.size(); i++) {%>
        <table border=1>
            <tr>
                <th>ID</th>
                <th>名前</th>
                <th>生年</th>
                <th>種別</th>
                <th>登録日時</th>
            </tr>
            <tr>
                <td><a href="ResultDetail?i=<%= i%>&ac=<%= session.getAttribute("ac")%>"><%= udd.get(i).getUserID()%></a></td>
                <td><%= udd.get(i).getName()%></td>
                <td><%= udd.get(i).getBirthday()%></td>
                <td><%= udd.get(i).getType()%></td>
                <td><%= udd.get(i).getNewDate()%></td>
            </tr>
        </table>
        <%}%>
        <%} else if (udd.size() == 0) {%>
        該当するユーザーは、存在しませんでした。<br>
        <br>
        <%}%>
    </body>
    <%=jh.home()%>
</html>
