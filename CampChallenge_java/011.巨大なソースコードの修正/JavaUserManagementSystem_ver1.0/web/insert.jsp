<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%@page import="jums.UserDataBeans" %>
<%//デフォルト値取得
    HttpSession hs = request.getSession();
	UserDataBeans uBeans = (UserDataBeans)hs.getAttribute("uBeans");

	if (uBeans == null) {
		uBeans = new UserDataBeans();
	}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録画面</title>
    </head>
    <body>
    <form action="insertconfirm" method="POST">
        名前:
        <input type="text" name="name" value="<%=uBeans.getName() %>">
        <br><br>

        生年月日:
        <select name="year">
            <option value="-1">----</option>
            <%
            for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>" <%=uBeans.getSelectYear(i)%>><%=i%> </option>
            <% } %>
        </select>年
        <select name="month">
            <option value="-1">--</option>
            <%
            for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>"<%=uBeans.getSelectMonth(i)%>><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <option value="-1">--</option>
            <%
            for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>"<%=uBeans.getSelectDay(i)%>><%=i%></option>
            <% } %>
        </select>日
        <br><br>
        
        種別:
        <br>      
        <input type="radio" name="type" value="1" <%=uBeans.getDefaultType(1)%>>エンジニア<br>
        <input type="radio" name="type" value="2" <%=uBeans.getDefaultType(2)%>>営業<br>
        <input type="radio" name="type" value="3" <%=uBeans.getDefaultType(3)%>>その他<br>
        <br>
        
        電話番号:
        <input type="text" name="tell" value="<%=uBeans.getTell()%>">
        <br><br>

        自己紹介文
        <br>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"><%=uBeans.getComment()%></textarea><br><br>

        <input type="hidden" name="ac"  value="<%=hs.getAttribute("ac")%>">
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form>
        <br>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
