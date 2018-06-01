<%-- 
    Document   : PIM_itemlist_add
    Created on : 2018/06/01, 10:24:53
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
                <form method="POST" action="PIM_itemlist_addCheck.jsp">
                    <table class="add">
                        <tr>
                            <td align="right">商品名：</td>
                            <td><input type="text" name="name" size="40" placeholder="商品名" required></td>
                        </tr>
                        <tr>
                            <td align="right">商品名(ヨミ)：</td>
                            <td><input type="text" name="name_read" size="40" placeholder="ショウヒンメイ" required></td>
                        </tr>
                        <tr>
                            <td align="right">単価：</td>
                            <td><input type="number" name="price" size="20" value="100" required></td>
                        </tr>
                        <tr>
                            <td align="right">在庫数：</td>
                            <td><input type="number" name="number" size="20" value="10" required></td>
                        </tr>
                        <tr>
                        <td align="right">最終入荷日：</td>
                        <td><select name="Dy" required>
                                <option value="">-</option>
                                <option value="2010">2010</option>
                                <option value="2011">2011</option>
                                <option value="2012">2012</option>
                                <option value="2013">2013</option>
                                <option value="2014">2014</option>
                                <option value="2015">2015</option>
                                <option value="2016">2016</option>
                                <option value="2017">2017</option>
                                <option value="2018">2018</option>
                            </select>
                            &nbsp;年&nbsp;
                            <select name="Dm" required>
                                <option value="">-</option>
                                <option value="01">1</option>
                                <option value="02">2</option>
                                <option value="03">3</option>
                                <option value="04">4</option>
                                <option value="05">5</option>
                                <option value="06">6</option>
                                <option value="07">7</option>
                                <option value="08">8</option>
                                <option value="09">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                            &nbsp;月&nbsp;
                            <select name="Dd" required>
                                <option value="">-</option>
                                <option value="01">1</option>
                                <option value="02">2</option>
                                <option value="03">3</option>
                                <option value="04">4</option>
                                <option value="05">5</option>
                                <option value="06">6</option>
                                <option value="07">7</option>
                                <option value="08">8</option>
                                <option value="09">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                                <option value="16">16</option>
                                <option value="17">17</option>
                                <option value="18">18</option>
                                <option value="19">19</option>
                                <option value="20">20</option>
                                <option value="21">21</option>
                                <option value="22">22</option>
                                <option value="23">23</option>
                                <option value="24">24</option>
                                <option value="25">25</option>
                                <option value="26">26</option>
                                <option value="27">27</option>
                                <option value="28">28</option>
                                <option value="29">29</option>
                                <option value="30">30</option>
                                <option value="31">31</option>
                            </select>
                            &nbsp;日&nbsp;
                        </td>
                    </tr>
                    </table>
                    <input type="submit" name="SUBMIT" value="商品の追加">
                </form>
            </div>
        </div>
        <div class="footer"></div>
    </body>
</html>
