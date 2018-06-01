<%-- 
    Document   : jdbc_challenge10
    Created on : 2018/05/25, 14:26:43
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>特定のレコードの削除をするフォーム作成</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String id = request.getParameter("ID");
            
            Connection con = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection
                        ("jdbc:mysql://localhost:8889/Challenge_db", "root", "root");
                
                String sql = "SELECT * FROM profiles WHERE profilesID = ?";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setInt(1, Integer.parseInt(id));
                
                out.print("<h2>下記のプロフィールを削除しました</h2>");
                ResultSet rs = pst.executeQuery();
                while(rs.next()){
                    out.print("<table>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">ID：</td>");
                    out.print("<td>" + rs.getString("profilesID") + "</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">氏名：</td>");
                    out.print("<td>" + rs.getString("name") + "</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">電話番号：</td>");
                    out.print("<td>" + rs.getString("tel") + "</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">年齢：</td>");
                    out.print("<td>" + rs.getString("age") + "歳</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">生年月日：</td>");
                    out.print("<td>" + rs.getString("birthday") + "</td>");
                    out.print("</tr>");
                    out.print("</table>");
                    out.print("<br>");
                }
                
                String sql2 = "DELETE FROM profiles WHERE profilesID = ?";
                PreparedStatement ps = con.prepareStatement(sql2);
                ps.setInt(1, Integer.parseInt(id));
                
                int num = ps.executeUpdate();
                
                out.print("<h2>現在のテーブル</h2>");
                String sql3 = "SELECT * FROM profiles";
                PreparedStatement pstm = con.prepareStatement(sql3);
                
                ResultSet rst = pstm.executeQuery();
                while(rst.next()){
                    out.print("<table>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">ID：</td>");
                    out.print("<td>" + rst.getString("profilesID") + "</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">氏名：</td>");
                    out.print("<td>" + rst.getString("name") + "</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">電話番号：</td>");
                    out.print("<td>" + rst.getString("tel") + "</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">年齢：</td>");
                    out.print("<td>" + rst.getString("age") + "歳</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">生年月日：</td>");
                    out.print("<td>" + rst.getString("birthday") + "</td>");
                    out.print("</tr>");
                    out.print("</table>");
                    out.print("<br>");
                }
                
                con.close();
            } catch(SQLException e) {
                out.print("エラーが起きました：" + e.toString());
            } finally {
                if(con != null){
                    con.close();
                }
            }
        %>
    </body>
</html>
