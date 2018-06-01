<%-- 
    Document   : PIM_itemlist
    Created on : 2018/05/31, 17:31:01
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>商品情報管理ページ　-商品情報一覧</title>
    </head>
    <body>
        <div class="header">
            <ul>
                <li><a href="../PIM_userInformation/PIM_logout.jsp">ログアウト</a></li>
            </ul>
        </div>
        <div class="contents">
            <div class="contents_left">
                <ul>
                    <li><a href="PIM_itemlist.jsp">商品情報一覧</a></li>
                    <li><a href="PIM_itemlist_add.jsp">商品情報新規登録</a></li>
                </ul> 
            </div>
            <div class="contents_right">
                <table class="itemlist">
                    <tr>
                        <th>商品名</th>
                        <th>商品名(ヨミ)</th>
                        <th>単価</th>
                        <th>在庫数</th>
                        <th>最終入荷日</th>
                    </tr>
                    <%
                        Connection con = null;
                        try {
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            con = DriverManager.getConnection
                                    ("jdbc:mysql://localhost:8889/Challenge_db2", "root", "root");
                            String sql = "SELECT * FROM item";
                            PreparedStatement pst = con.prepareStatement(sql);
                            ResultSet rs = pst.executeQuery();
                            int rsCheck = 0;
                            while(rs.next()){
                                out.print("<tr>");
                                out.print("<td>" + rs.getString("name") + "</td>");
                                out.print("<td>" + rs.getString("name_read") + "</td>");
                                out.print("<td>" + rs.getString("price") + "</td>");
                                out.print("<td>" + rs.getString("number") + "</td>");
                                out.print("<td>" + rs.getString("arrivalDay") + "</td>");
                                out.print("</tr>");
                                rsCheck++;
                            }
                            if(rsCheck == 0){
                                out.print("登録された商品はありません");
                            }
                            con.close();
                        } catch(SQLException e) {
                            out.print("エラーが起きました(SQLException)：" + e.toString());
                        } catch(Exception e) {
                            out.print("エラーが起きました(Exception)：" + e.toString());
                        } finally {
                            if(con != null){
                                con.close();
                            }
                        }
                    %>
                </table>
            </div>
        </div>
        <div class="footer"></div>
    </body>
</html>
