<%-- 
    Document   : html2
    Created on : 2018/05/14, 18:18:52
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>入力内容の確認</title>
        <link rel="stylesheet" type="text/css" href="html2.css">
    </head>
    <body>
        
        <%
            request.setCharacterEncoding("UTF-8");
            String name = request.getParameter("NAME");
            String gender = request.getParameter("GENDER");
            String text = request.getParameter("TEXT");
            text = text.replaceAll("\n", "<br>");
        %>

        <div>
            <h1 class="TITLE" id="top2">HTMLについて</h1>
        </div>
        <div class="all">
            <div class="nav">
                <ul>
                    <li><a href=html2.html#FIFTH>ご意見</a></li>
                    <li><a href=html2.html#top>トップ</a></li>
                </ul>
            </div>
            <div class="left">
                <ul>
                    <li class="menu"><b>◆ menu ◆</b></li>
                    <li>1.<a href=html2.html#one>HTMLって？</a></li>
                    <li>2.<a href=html2.html#two>HTMLのタグ</a></li>
                    <li>3.<a href=html2/html#three>実際に書いてみる</a></li>
                </ul>
            </div>
            <div class="right">
                <div class="sub">
                    <h2 class="HEADLINE">入力内容の確認</h2>
                    <h3 class="finish">下記の内容で入力しました！</h3>
                    <div class="hoge">
                        <table class="Ftable">
                            <colgroup>
                                <col style="width: 30%">
                                <col style="width: 70%">
                            </colgroup>
                            <%
                                out.print("<tr><td class=\"LT\">ニックネーム：</td><td class=\"RT\">" + name + "</td></tr>");
                                out.print("<tr><td class=\"LT\">性別：</td><td class=\"RT\">" + gender + "</td></tr>");
                                out.print("<tr><td class=\"LT\">コメント：</td><td class=\"RT\">" + text + "</td></tr>");
                            %>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <p><a href=#top2><input type="button" value="このページのトップへ戻る" class="btn"></a></p>
        </div>
    </body>
</html>
