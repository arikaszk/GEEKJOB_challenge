<%-- 
    Document   : queryString
    Created on : 2018/05/17, 13:59:52
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>クエリストリングの利用</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            int total = Integer.parseInt(request.getParameter("total"));
            int count = Integer.parseInt(request.getParameter("count"));
            int type = Integer.parseInt(request.getParameter("type"));
            
            int perPrice = total / count;
            String str = null;
            if(type == 1) {
                str = "雑貨";
            } else if(type == 2) {
                str = "生鮮食品";
            } else if(type == 3) {
                str = "その他";
            }
            
            int point = 0;
            if(total < 3000) {
                point = 0;
            } else if(total < 5000) {
                point = (int)((double)total * 0.04);
            } else {
                point = (int)((double)total * 0.05);
            }
            
            out.println("<table><tr><td>商品種別：</td><td>" + str + "</td></tr>");
            out.println("<table><tr><td>商品単価：</td><td>" + perPrice + "</td></tr>");
            out.println("<table><tr><td>獲得ポイント：</td><td>" + point + "</td></tr>");
        %>
    </body>
</html>
