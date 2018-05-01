<%-- 
    Document   : 変数の宣言と表示(自己紹介)
    Created on : 2018/04/26, 21:10:02
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

            String shoukai = "私の名前は鈴木有佳です。";
            out.print(shoukai);
            
        %>
    </body>
</html>
