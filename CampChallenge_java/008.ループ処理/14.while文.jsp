<%-- 
    Document   : 14.while文
    Created on : 2018/04/27, 23:41:11
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
        <%--
        
            変数を宣言し、その値を数値型の1000とする
            while文を利用して変数の値を2で割り続け、割った結果が100より小さくなったらループを抜ける
            ループ後に変数の値を画面に表示する
        
        --%>
        
        <%
        
            float num = 1000;
            
            while(num >= 100){
                num /= 2.0;
            }
            
            out.print(num);
            
        %>
    </body>
</html>
