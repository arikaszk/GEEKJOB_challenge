<%-- 
    Document   : jdbc_challenge8
    Created on : 2018/05/24, 16:50:30
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>検索用フォームの用意と検索（部分一致）</title>
    </head>
    <body>
        <h3>検索結果</h3>
        <%
            request.setCharacterEncoding("UTF-8");
            String name = request.getParameter("NAME");
            
            
            Connection con = null;
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection
                        ("jdbc:mysql://localhost:8889/Challenge_db", "root", "root");
                
                String str = "SELECT * FROM profiles WHERE name LIKE ?";
                PreparedStatement ps = con.prepareStatement(str);
                ps.setString(1, "%" + name + "%");
                
                int count = 0;
                ResultSet rs = ps.executeQuery();
                while(rs.next()){
                    out.print("ID：" + rs.getString("profilesID") + "<br>");
                    out.print("名前：" + rs.getString("name") + "<br>");
                    out.print("電話番号：" + rs.getString("tel") + "<br>");
                    out.print("年齢：" + rs.getString("age") + "<br>");
                    out.print("誕生日：" + rs.getString("birthday"));
                    count++;
                }
                
                if(count == 0){
                    out.print("該当者はいませんでした。");
                }
                
                con.close();
            } catch(Exception e) {
                out.println("エラーが起きました");
            } finally {
                if(con != null){
                    con.close();
                }
            }
        %>
    </body>
</html>
