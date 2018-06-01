<%-- 
    Document   : jdbc_challenge12
    Created on : 2018/05/25, 16:58:41
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>複合検索</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String name = request.getParameter("NAME");
            String age = request.getParameter("AGE");
            String bdy = request.getParameter("BDy");
            String bdm = request.getParameter("BDm");
            String bdd = request.getParameter("BDd");
            
            String bd = bdy + "-" + bdm + "-" + bdd;
            

            Connection con = null;
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection
                        ("jdbc:mysql://localhost:8889/Challenge_db", "root", "root");
                String sql = "SELECT * FROM profiles WHERE name LIKE ? OR age = ? OR birthday = ?";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setString(1, "%" + name + "%");
                pst.setInt(2, Integer.parseInt(age));
                pst.setString(3, bd);
                
                out.print("<h2>検索結果</h2>");
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
                
                con.close();
            } catch(SQLException e){
                out.print("エラーが起きました：" + e.toString());
            } finally {
                if(con != null){
                    con.close();
                }
            }
        %>
    </body>
</html>
