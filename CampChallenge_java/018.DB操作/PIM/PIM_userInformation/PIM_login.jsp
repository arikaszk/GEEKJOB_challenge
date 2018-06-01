<%-- 
    Document   : PIM_login
    Created on : 2018/05/28, 14:21:49
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>商品情報管理ページ　-ログイン</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            if(session.getAttribute("login") != null &&
                    !session.getAttribute("login").equals("true")) {
                out.print("ログインに失敗しました");
            }
        %>
        <div class="header"></div>
        <div class="contents">
            <div class="loginBox">
                <h2>商品管理者ログイン</h2>
                <form method="POST" action="PIM_login_entry.jsp">
                    <p><input type="text" name="loginID" size="30" maxlength="20" placeholder="loginID"></p>
                    <p><input type="password" name="password" size="30" maxlength="20" placeholder="password"></p>
                    <p><input type="submit" name="SUBMIT" class="submitBTN" value="ログイン"></p>
                </form>
            </div>
            <h4>&gt;管理者登録がお済みでない方は<a href="PIM_registration.html">こちら</a></h4>
        </div>
        <div class="footer"></div>
    </body>
</html>
