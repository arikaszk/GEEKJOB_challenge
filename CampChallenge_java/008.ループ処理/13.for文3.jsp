<%-- 
    Document   : 13.for文3
    Created on : 2018/04/27, 15:09:09
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
        
            変数を宣言し、その値を 0 から 100 までの合計値にする
            このとき変数の値は、for文を利用して 0 から始まる数値を順番に足しこむことで得る
            そして、その変数の値を画面に表示
        
        --%>
        
        <%
        
            int result = 0;
            
            for(int i = 0; i <= 100; i++){
                result += i;
            }
        
            out.print(result);
            
        %>
    </body>
</html>
