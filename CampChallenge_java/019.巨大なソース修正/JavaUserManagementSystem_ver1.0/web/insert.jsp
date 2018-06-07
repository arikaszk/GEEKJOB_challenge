<%@page import="jums.UserDataBeans"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%
    HttpSession hs = request.getSession();
    UserDataBeans udb = new UserDataBeans();
    if(hs.getAttribute("name") != (null)) {

        udb.setName((String) hs.getAttribute("name"));

    }

    if(hs.getAttribute("year") != (null)) {

        udb.setYear(Integer.valueOf((String) hs.getAttribute("year")));

    }

    if(hs.getAttribute("month") != (null)) {

        udb.setMonth(Integer.valueOf((String) hs.getAttribute("month")));

    }

    if(hs.getAttribute("day") != (null)) {

        udb.setDay(Integer.valueOf((String) hs.getAttribute("day")));

    }

    if(hs.getAttribute("type") != (null)) {

        udb.setType(Integer.valueOf((String) hs.getAttribute("type")));

    }

    if(hs.getAttribute("tell") != (null)) {

        udb.setTell((String) hs.getAttribute("tell"));

    }

    if(hs.getAttribute("comment") != (null)) {

        udb.setComment((String) hs.getAttribute("comment"));

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
        <input type="text" name="name" value="<%= udb.getName() %>" required>
        <br><br>

        生年月日:
        <select name="year" required>
            <option value="">----</option>
            <%
            for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>" <% if(udb.getYear() == i){out.print("selected");} %>> <%=i%> </option>
            <% } %>
        </select>年
        <select name="month" required>
            <option value="">--</option>
            <%
            for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>" <% if(udb.getMonth() == i){out.print("selected");} %>><%=i%></option>
            <% } %>
        </select>月
        <select name="day" required>
            <option value="">--</option>
            <%
            for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>" <% if(udb.getDay() == i){out.print("selected");} %>><%=i%></option>
            <% } %>
        </select>日
        <br><br>

        種別:
        <br>
        <input type="radio" name="type" value="1" <% if(udb.getType() == 0 || udb.getType() == 1){out.print("checked");} %>>エンジニア<br>
        <input type="radio" name="type" value="2" <% if(udb.getType() == 2){out.print("checked");} %>>営業<br>
        <input type="radio" name="type" value="3" <% if(udb.getType() == 3){out.print("checked");} %>>その他<br>
        <br>

        電話番号:
        <input type="text" name="tell" value="<%= udb.getTell() %>" required>
        <br><br>

        自己紹介文
        <br>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard" required>
            <%= udb.getComment() %>
        </textarea><br><br>

        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form>
        <br>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
