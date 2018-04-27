<%-- 
    Document   : 変数の宣言と表示(四則演算)
    Created on : 2018/04/26, 21:27:08
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            int a = 15; //変数aを初期値15で宣言
            final int b = 4; //定数bを初期値4で宣言
            
            //以下四則演算の実行と結果の表示
            //表示の見やすさを考慮して一行ごとに改行
            
            out.print(a + b + "<br>"); //足し算
            out.print(a - b + "<br>"); //引き算
            out.print(a * b + "<br>"); //掛け算
            out.print(a / b); //割り算

        %>     
    </body>
</html>
