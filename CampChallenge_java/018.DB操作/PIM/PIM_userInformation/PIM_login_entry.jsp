<%-- 
    Document   : PIM_login_entry
    Created on : 2018/05/28, 14:13:59
    Author     : Arika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>商品情報管理ページ　-ログイン</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String loginID = request.getParameter("loginID");
            String password = request.getParameter("password");
            
            Connection con = null;
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection
                        ("jdbc:mysql://localhost:8889/Challenge_db2", "root", "root");
                String sql = "SELECT * FROM user WHERE loginID = ? && password = ?";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setString(1, loginID);
                pst.setString(2, password);
                ResultSet rs = pst.executeQuery();
                if(rs.next()){
                    session.setAttribute("login", "true");
                    session.setAttribute("user", rs.getString("userID"));
                    session.setAttribute("usrName", rs.getString("name"));
                    pageContext.forward("./PIM_welcome.jsp");
                } else {
                    session.setAttribute("login", "false");
                    pageContext.forward("./PIM_login.jsp");
                }
                con.close();
            } catch(SQLException e) {
                out.print("エラーが起きました(SQLException)：" + e.toString());
            } finally {
                if(con != null){
                    con.close();
                }
            }
        %>
        <div class="header"></div>
        <div class="contents"></div>
        <div class="footer"></div>
    </body>
</html>
