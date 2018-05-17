<%-- 
    Document   : queryString2
    Created on : 2018/05/17, 14:21:54
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>クエリストリング（簡易素数分解）</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            int num = Integer.parseInt(request.getParameter("number"));
            int res = num;
            int l = 0;
            
            out.print(num + "=");
            for(int i = 2; i < 10; i++){
                if(res % i == 0 && l == 0){
                    out.print(i);
                    l++;
                    res /= i;
                }
                while(res % i == 0){
                    out.print("*" + i);
                    res /= i;
                }
            }
            
            if(res != 1){
                out.print("あまり" + res);
            }
        %>
    </body>
</html>
