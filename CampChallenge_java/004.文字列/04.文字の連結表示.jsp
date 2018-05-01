<%-- 
    Document   : 文字の連結表示
    Created on : 2018/04/27, 2:28:42
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
           
           //以下、連結する文字列を変数に代入
           
           String a = "groove";
           String b = "-";
           String c = "gear";
           
           out.print(a + b + c); //変数を連結して表示

        %>
    </body>
</html>
