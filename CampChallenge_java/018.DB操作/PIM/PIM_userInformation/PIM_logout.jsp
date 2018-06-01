<%-- 
    Document   : PIM_logout
    Created on : 2018/05/28, 17:07:15
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
        <div class="header"></div>
        <div class="contents">
            <div class="logoutBox">
                <h3>管理者からログアウトしますか？</h3>
                <form method="POST" action="PIM_logout_exit.jsp">
                    <input type="submit" name="SUBMIT" class="submitBTN" value="ログアウト">
                </form>
                <a href="javascript:history.back()">元のページに戻る</a>
            </div>
        </div>
        <div class="footer"></div>
    </body>
</html>
