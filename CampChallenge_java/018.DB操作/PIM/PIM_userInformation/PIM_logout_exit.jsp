<%-- 
    Document   : PIM_logout_exit
    Created on : 2018/05/28, 17:14:59
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>商品情報管理ページ　-ログアウト</title>
    </head>
    <body>
        <%
            session.removeAttribute("login");
            session.removeAttribute("user");
            session.removeAttribute("usrName");
        %>
        <div class="header"></div>
        <div class="contents">
            <h3>ログアウトしました</h3>
            <p>ログインは<a href="PIM_login.jsp">こちら</a></p>
        </div>
        <div class="footer"></div>
    </body>
</html>
