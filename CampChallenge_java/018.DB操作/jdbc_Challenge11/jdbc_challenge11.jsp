<%-- 
    Document   : jdbc_challenge11
    Created on : 2018/05/25, 15:52:49
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>特定のレコードの更新</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String id = request.getParameter("ID");
            String name = request.getParameter("NAME");
            String tel1 = request.getParameter("TEL1");
            String tel2 = request.getParameter("TEL2");
            String tel3 = request.getParameter("TEL3");
            String age = request.getParameter("AGE");
            String bdy = request.getParameter("BDy");
            String bdm = request.getParameter("BDm");
            String bdd = request.getParameter("BDd");
            
            String tell = tel1 + "-" + tel2 + "-" + tel3;
            String bd = bdy + "-" + bdm + "-" + bdd;
            
            Connection con = null;
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection
                        ("jdbc:mysql://localhost:8889/Challenge_db", "root", "root");
                
                out.print("<h3>変更前のプロフィール</h3>");
                String sql1 = "SELECT * FROM profiles WHERE profilesID = ?";
                PreparedStatement pst1 = con.prepareStatement(sql1);
                pst1.setInt(1, Integer.parseInt(id));
                
                ResultSet rs1 = pst1.executeQuery();
                while(rs1.next()){
                    out.print("<table>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">ID：</td>");
                    out.print("<td>" + rs1.getString("profilesID") + "</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">氏名：</td>");
                    out.print("<td>" + rs1.getString("name") + "</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">電話番号：</td>");
                    out.print("<td>" + rs1.getString("tel") + "</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">年齢：</td>");
                    out.print("<td>" + rs1.getString("age") + "歳</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">生年月日：</td>");
                    out.print("<td>" + rs1.getString("birthday") + "</td>");
                    out.print("</tr>");
                    out.print("</table>");
                    out.print("<br>");
                }
                
                
                String sql2 = "UPDATE profiles SET name = ?, tel = ?, age = ?, birthday = ? WHERE profilesID = ?";
                PreparedStatement pst2 = con.prepareStatement(sql2);
                pst2.setString(1, name);
                pst2.setString(2, tell);
                pst2.setInt(3, Integer.parseInt(age));
                pst2.setString(4, bd);
                pst2.setInt(5, Integer.parseInt(id));
                
                int num = pst2.executeUpdate();
                
                String sql3 = "SELECT * FROM profiles WHERE profilesID = ?";
                PreparedStatement pst3 = con.prepareStatement(sql3);
                pst3.setInt(1, Integer.parseInt(id));
                
                out.print("<h3>変更後のプロフィール</h3>");
                ResultSet rs2 = pst3.executeQuery();
                while(rs2.next()){
                    out.print("<table>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">ID：</td>");
                    out.print("<td>" + rs2.getString("profilesID") + "</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">氏名：</td>");
                    out.print("<td>" + rs2.getString("name") + "</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">電話番号：</td>");
                    out.print("<td>" + rs2.getString("tel") + "</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">年齢：</td>");
                    out.print("<td>" + rs2.getString("age") + "歳</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">生年月日：</td>");
                    out.print("<td>" + rs2.getString("birthday") + "</td>");
                    out.print("</tr>");
                    out.print("</table>");
                    out.print("<br>");
                }
                
                out.print("<h2>現在のテーブル</h2>");
                String sql4 = "SELECT * FROM profiles";
                PreparedStatement pst4 = con.prepareStatement(sql4);
                
                ResultSet rs3 = pst4.executeQuery();
                while(rs3.next()){
                    out.print("<table>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">ID：</td>");
                    out.print("<td>" + rs3.getString("profilesID") + "</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">氏名：</td>");
                    out.print("<td>" + rs3.getString("name") + "</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">電話番号：</td>");
                    out.print("<td>" + rs3.getString("tel") + "</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">年齢：</td>");
                    out.print("<td>" + rs3.getString("age") + "歳</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                    out.print("<td align=\"right\">生年月日：</td>");
                    out.print("<td>" + rs3.getString("birthday") + "</td>");
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
