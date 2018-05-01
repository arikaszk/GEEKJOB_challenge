<%-- 
    Document   : 11.for文1
    Created on : 2018/04/27, 13:13:48
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
        
            8 の 20 乗を計算し，計算結果を表示
        
        --%>
        
        <%@page import = "java.math.BigDecimal"%>
        
        <%
            
            long num = 1;
            
            for(int i = 0; i <= 20; i++){
                num *= 8;
            }
            
            out.print(num);
            
        %>
    </body>
</html>
