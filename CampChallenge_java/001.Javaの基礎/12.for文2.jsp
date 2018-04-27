<%-- 
    Document   : 12.for文2
    Created on : 2018/04/27, 14:56:46
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
            
            文字列型の変数を宣言後、反復処理を使い「 A が 30 文字続いたもの」とする
            for文を利用して 1 文字ずつ文字列連結し、画面表示は，処理の最後にただ一度だけ行う
        
        --%>
        
        <%
          
            String a = "A";
            
            
            for(int i = 1; i < 30; i++){
                a += "A";
            }
            
            out.print(a);

        %>
    </body>
</html>
