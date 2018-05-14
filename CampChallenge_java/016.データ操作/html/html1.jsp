<%-- 
    Document   : html1
    Created on : 2018/05/11, 10:43:57
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>入力内容の取得　-入力データの取得と表示</title>
        <style type="text/css">
               <!--
            body {
                line-height: 50px;
                font-family: monospace, Yu Gothic Medium, sans-serif;
                font-size: 20px;
            }
            
            p {
                line-height: 30px;
                font-size: 30px;
            }
            
            table {
                vertical-align: top;
            }
            -->
        </style>
    </head>
    <body>
        <%
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("NAME");
        String gender = request.getParameter("GENDER");
        String hobby = request.getParameter("HOBBY");
        
        if(gender.equals("male")){
            gender = "男";
        }else if(gender.equals("female")){
            gender = "女";
        }
        
        out.println("<p>入力内容の確認</p>");
        out.println("<table>");
        out.println("<tr><td>氏名：</td><td>" + name + "</td></tr>");
        out.println("<tr><td>性別：</td><td>" + gender + "</td></tr>");
        out.println("<tr><td>趣味：</td><td>" + hobby + "</td></tr>");
        out.println("</table>");
        %>
    </body>
</html>
