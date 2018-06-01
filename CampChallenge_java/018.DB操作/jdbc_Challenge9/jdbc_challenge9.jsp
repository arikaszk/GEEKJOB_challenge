<%-- 
    Document   : jdbc_challenge9
    Created on : 2018/05/25, 10:40:34
    Author     : Arika
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>フォームからデータを挿入</title>
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
                String sql = "INSERT INTO profiles VALUES(?, ?, ?, ?, ?)";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setInt(1, Integer.parseInt(id));
                pst.setString(2, name);
                pst.setString(3, tell);
                pst.setInt(4, Integer.parseInt(age));
                pst.setString(5, bd);
                
                int num = pst.executeUpdate();
                
                out.print("<h2>下記の内容で登録しました</h2>");
                out.print("<table>");
                out.print("<tr>");
                out.print("<td align=\"right\">ID：</td>");
                out.print("<td>" + id + "</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td align=\"right\">氏名：</td>");
                out.print("<td>" + name + "</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td align=\"right\">電話番号：</td>");
                out.print("<td>" + tell + "</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td align=\"right\">年齢：</td>");
                out.print("<td>" + age + "歳</td>");
                out.print("</tr>");
                out.print("<tr>");
                out.print("<td align=\"right\">生年月日：</td>");
                out.print("<td>" + bdy + "年" + bdm + "月" + bdd + "日" + "</td>");
                out.print("</tr>");
                out.print("</table>");
                
                out.print("<h2>現在のテーブル</h2>");
                String sql2 = "SELECT * FROM profiles";
                PreparedStatement ps = con.prepareStatement(sql2);
                
                ResultSet rs = ps.executeQuery();
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
