<%-- 
    Document   : 連想配列の作成
    Created on : 2018/04/27, 14:21:45
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import = "java.util.HashMap"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%--
        
            以下の順で、連想配列を作成
            "1"に"AAA", "hello"に"world", "soeda"に"33", "20"に"20"
        
        --%>
        
        <%
            
            //HashMapを宣言
            
            HashMap<String, String> hm = new HashMap<String, String>();
            
            //それぞれの要素を格納
            
            hm.put("1", "AAA");
            hm.put("hello", "world");
            hm.put("soeda", "33");
            hm.put("20", "20");
            

            
            /*
            //下記、要素がきちんと格納されているかのチェック
            out.print(hm.size());
            */
            

        %>
    </body>
</html>
