<%-- 
    Document   : FortuneTellingResult
    Created on : 2018/05/01, 13:52:06
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.camp.servlet.ResultData"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            ResultData data = (ResultData)request.getAttribute("DATA");
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(data != null){
                out.print("<h1>あなたの" + data.getD() + "の運勢は、" + data.getLuck() + "です</h1>");
            }
        %>
    </body>
</html>
