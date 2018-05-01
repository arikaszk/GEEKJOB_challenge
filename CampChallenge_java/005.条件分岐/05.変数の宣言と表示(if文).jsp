<%-- 
    Document   : 変数の宣言と表示(if文)
    Created on : 2018/04/27, 10:43:54
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
            
            変数の値が１の場合 ... 「１です！」と表示する
            変数の値が２の場合 ... 「プログラミングキャンプ！」と表示する
            それ以外の場合 ... 「その他です！」と表示する
            
        --%>
        
        <%
            
            int num = 2; //変数numに初期値2を代入して宣言
            
            if(num == 1){
                out.print("1です！");
            }else if(num == 2){
                out.print("プログラミングキャンプ！");
            }else{
                out.print("その他です！");
            }
            
        %>
    </body>
</html>
