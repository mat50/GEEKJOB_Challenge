<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%@page import="jums.UserDataBeans" %>
<%
	HttpSession hs = request.getSession();
	UserDataBeans uBeans = (UserDataBeans)hs.getAttribute("uBeans");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
    <%
    if(		//未入力項目チェック
    		!uBeans.getName().equals("")
    		&& uBeans.getYear() >= 0
    		&& uBeans.getMonth() >= 0
    		&& uBeans.getDay() >= 0
    		&& uBeans.getType() != 0
    		&& !uBeans.getTell().equals("")
    		&& !uBeans.getComment().equals("")
    ){
    %>
        <h1>登録確認</h1>
        名前:<%= uBeans.getName()%><br>
        生年月日:<%= uBeans.getYear()+"年"+uBeans.getMonth()+"月"+uBeans.getDay()+"日"%><br>
        種別:<%= uBeans.getTypeName()%><br>
        電話番号:<%= uBeans.getTell()%><br>
        自己紹介:<%= uBeans.getComment()%><br>
        上記の内容で登録します。よろしいですか？
        <form action="insertresult" method="POST">
        	<input type="hidden" name="ac"  value="<%=hs.getAttribute("ac")%>">
            <input type="submit" name="yes" value="はい">
        </form>

    <%
    }
    	if(uBeans.getName().equals("") ){	%>
    	名前が入力されていません<br>
    <%	 }if(uBeans.getYear() <= 0 )	{%>
    	生年月日（年）が入力されていません<br>
    <%	 }if(uBeans.getMonth() <= 0 )	{%>
    	生年月日（月）が入力されていません<br>
    <%	 }if(uBeans.getDay() <= 0 )	{%>
    	生年月日（日）が入力されていません<br>
    <%	 }if(uBeans.getType() == 0 )          {%>
    	種別が入力されていません<br>
    <%	 }if(uBeans.getTell().equals("") )	{%>
    	電話番号が入力されていません<br>
    <%	 }if(uBeans.getComment().equals("") )	{%>
    	自己紹介が入力されていません<br>
    <% } %>

        <form action="insert" method="POST">
            <input type="submit" name="no" value="登録画面に戻る"><br>
        	<%=JumsHelper.getInstance().home()%>
        </form>
    </body>
</html>
