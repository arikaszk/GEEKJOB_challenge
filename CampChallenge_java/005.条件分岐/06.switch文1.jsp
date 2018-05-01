<%-- 
    Document   : switch文1
    Created on : 2018/04/27, 11:10:59
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
            
            変数の値が１の場合 ... 「one」と表示する
            変数の値が２の場合 ... 「two」と表示する
            それ以外の場合 ... 「想定外」と表示する
        
        --%>
        
        <%
            
            int num = 1; //変数numに初期値1を代入して宣言
            
            switch(num){
                case 1:
                    out.print("one");
                    break;
                    
                case 2:
                    out.print("two");
                    break;
                    
                default:
                    out.print("想定外");
                    break;
            }
            

        %>
    </body>
</html>
