<%-- 
    Document   : session2-2
    Created on : 2018/05/17, 18:26:14
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>入力フィールドの作成と実装</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String name = request.getParameter("NAME");
            String gender = request.getParameter("GENDER");
            String hobby = request.getParameter("HOBBY");
            
            String sex = null;
            if(gender.equals("m")){
                sex = "男";
            } else if(gender.equals("f")){
                sex = "女";
            }
            
            session.setAttribute("name", name);
            session.setAttribute("gender", gender);
            session.setAttribute("hobby", hobby);
        %>
        
        <h3>以下の内容で入力を受け付けました！</h3>
        <table>
            <tr>
                <td>名前：</td>
                <td><% out.print(name); %></td>
            </tr>
            <tr>
                <td>性別：</td>
                <td><% out.print(sex); %></td>
            </tr>
            <tr>
                <td>趣味：</td>
                <td><% out.print(hobby); %></td>
            </tr>
        </table>
    </body>
</html>
