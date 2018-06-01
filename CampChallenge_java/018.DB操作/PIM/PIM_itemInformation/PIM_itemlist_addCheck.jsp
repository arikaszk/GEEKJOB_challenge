<%-- 
    Document   : PIM_itemlist_addCheck
    Created on : 2018/06/01, 10:35:17
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>商品情報管理ページ　-商品情報新規登録</title>
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
                <%
                    request.setCharacterEncoding("UTF-8");
                    String name = request.getParameter("name");
                    String name_read = request.getParameter("name_read");
                    int price = Integer.parseInt(request.getParameter("price"));
                    int number = Integer.parseInt(request.getParameter("number"));
                    String dy = request.getParameter("Dy");
                    String dm = request.getParameter("Dm");
                    String dd = request.getParameter("Dd");
                    String arrivalDay = dy + "-" + dm + "-" + dd;
                    
                    Connection con = null;
                    try {
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        con = DriverManager.getConnection
                                ("jdbc:mysql://localhost:8889/Challenge_db2", "root", "root");
                        String sql = "INSERT INTO item(name, name_read, price, number, arrivalDay) VALUES(?, ?, ?, ?, ?)";
                        PreparedStatement pst = con.prepareStatement(sql);
                        pst.setString(1, name);
                        pst.setString(2, name_read);
                        pst.setInt(3, price);
                        pst.setInt(4, number);
                        pst.setString(5, arrivalDay);
                        int num = pst.executeUpdate();
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
                <h3>下記の内容で商品情報を登録しました</h3>
                <table class="add">
                    <tr>
                        <td align="right">商品名：</td>
                        <td><% out.print(name); %></td>
                    </tr>
                    <tr>
                        <td align="right">商品名(ヨミ)：</td>
                        <td><% out.print(name_read); %></td>
                    </tr>
                    <tr>
                        <td align="right">単価：</td>
                        <td><% out.print(price); %></td>
                    </tr>
                    <tr>
                        <td align="right">在庫数：</td>
                        <td><% out.print(number); %></td>
                    </tr>
                    <tr>
                        <td align="right">最終入荷日：</td>
                        <td><% out.print(arrivalDay); %></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="footer"></div>
    </body>
</html>
