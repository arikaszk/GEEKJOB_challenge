<%-- 
    Document   : PIM_welcome
    Created on : 2018/05/28, 16:54:34
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>商品情報管理ページ　-ログイン</title>
    </head>
    <body>
        <%
            String name = (String)session.getAttribute("usrName");
        %>
        <div class="header">
            <ul>
                <li><a href="PIM_logout.jsp">ログアウト</a></li>
            </ul>
        </div>
        <div class="contents">
            <h3>ようこそ、<% out.print(name); %>さん</h3>
            <p><a href="../PIM_itemInformation/PIM_itemlist.jsp">こちらのページ</a>より作業を開始してください</p>
        </div>
        <div class="footer"></div>
    </body>
</html>
