<%-- 
    Document   : switch文2
    Created on : 2018/04/27, 11:17:56
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
        
            変数の値が 'A' の場合 ... 「英語」と表示する
            変数の値が 'あ' の場合 ... 「日本語」と表示する
            それ以外の場合 ... 何も表示しない（処理を行わない）
        
        --%>
        
        <%
        
            char Str = 'あ'; //変数Strに初期値'あ'を代入して宣言
            
            switch(Str){
                case 'A':
                    out.print("英語");
                    break;
                    
                case 'あ':
                    out.print("日本語");
                    break;
                    
                default:
                    break;
            }

        %>
    </body>
</html>
