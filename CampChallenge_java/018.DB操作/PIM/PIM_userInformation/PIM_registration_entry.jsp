<%-- 
    Document   : PIM_registration_entry
    Created on : 2018/05/28, 11:46:35
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>商品情報管理ページ -管理者登録</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String name1 = request.getParameter("name1");
            String name2 = request.getParameter("name2");
            String loginIDR = request.getParameter("loginIDR");
            String passwordR = request.getParameter("passwordR");
            
            String nameR = name1 + " " + name2;
            
            Connection con = null;
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection
                        ("jdbc:mysql://localhost:8889/Challenge_db2", "root", "root");
                
                String str1 = "INSERT INTO user(name, loginID, password) VALUES(?, ?, ?)";
                PreparedStatement pst = con.prepareStatement(str1);
                pst.setString(1, nameR);
                pst.setString(2, loginIDR);
                pst.setString(3, passwordR);
                int num = pst.executeUpdate();
                
                con.close();
            } catch(SQLException e) {
                out.print("エラーが起きました<br>");
                out.print(e.toString());
            } finally {
                if(con != null){
                    con.close();
                }
            }
        %>
        <div class="header"></div>
        <div class="contents">
            <div class="registrationBox">
                <h2>ようこそ、<% out.print(nameR); %>さん</h2>
                <p><a href="PIM_login.jsp">こちらのページ</a>よりログインしてください</p>
            </div>
        </div>
        <div class="footer"></div>
    </body>
</html>
