<%-- 
    Document   : session2
    Created on : 2018/05/17, 18:19:13
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
        <div>
            <%
                String name = (String)session.getAttribute("name");
                String gender = (String)session.getAttribute("gender");
                String hobby = (String)session.getAttribute("hobby");
            %>
            
            <h3>情報を入力してください</h3>
            <form method="GET" action="session2-2.jsp">
                <table>
                    <tr>
                        <td>名前：</td>
                        <td><input type="text" name="NAME" size="20" maxlength="20" 
                                   <% if(name != null){ out.print("value=" + name); }%>></td>
                    </tr>
                    <tr>
                        <td>性別：</td>
                        <td><label><input type="radio" name="GENDER" value="m" 
                                          <% if(gender != null && gender.equals("m")){ out.print("checked"); } %>>男</label>
                            <label><input type="radio" name="GENDER" value="f"
                                          <% if(gender != null && gender.equals("f")){ out.print("checked"); } %>>女</label></td>
                    </tr>
                    <tr>
                        <td>趣味：</td>
                        <td><input type="text" name="HOBBY" size="20" 
                                   <% if(hobby != null){ out.print("value=" + hobby); } %>></td>
                    </tr>
                </table>
                <input type="submit" name="SUBMIT" size="10" value="送信する">
            </form>
        </div>
    </body>
</html>
