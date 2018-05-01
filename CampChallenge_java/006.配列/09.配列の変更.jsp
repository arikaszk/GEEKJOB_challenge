<%-- 
    Document   : 配列の変更
    Created on : 2018/04/27, 11:52:39
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
        
            課題「配列の作成」
            配列型か ArrayList 型の変数を宣言
            要素の型は，文字列型
            文字列型とします）。そして変数を，下記の要素が順番に格納された状態にし
            各要素を順番に表示して，正しく要素が格納されたことを確認
        
            "10"， "100"， "soeda"， "hayashi"， "-20"， "118"， "END"
        
        
            課題「配列の変更」
            「配列の作成」で作成した配列について，要素 "soeda" の値を "33" に書き換え
        
        --%>
        
        <%
            
            //配列型変数Strに要素を格納
            
            String[] Str = {"10", "100", "soeda", "hayashi", "-20", "118", "END"};
          
            //Str要素の"soreda"を"33"に書き換え
            
            Str[2] = "33";
            
            //下記にて配列の中身を確認
            //見やすさを考慮して一行ごとに改行
            
            out.print(Str[0] + "<br>");
            out.print(Str[1] + "<br>");
            out.print(Str[2] + "<br>");
            out.print(Str[3] + "<br>");
            out.print(Str[4] + "<br>");
            out.print(Str[5] + "<br>");
            out.print(Str[6]);
            
        %>
    </body>
</html>
