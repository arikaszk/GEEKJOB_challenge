<%@page import="java.text.SimpleDateFormat"%>
<%@page import="jums.JumsHelper"
        import="jums.UserDataDTO" %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    UserDataDTO udd = (UserDataDTO)request.getAttribute("resultData");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMSユーザー情報詳細画面</title>
    </head>
    <body>
        <h1>詳細情報</h1>
        名前:<%= udd.getName()%><br>
        生年月日:<%= new SimpleDateFormat("yyyy年MM月dd日").format(udd.getBirthday())%><br>
        種別:<%= jh.exTypenum(udd.getType())%><br>
        電話番号:<%= udd.getTell()%><br>
        自己紹介:<%= udd.getComment()%><br>
        登録日時:<%= new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss").format(udd.getNewDate())%><br>
        <br>
        <form action="Update" method="POST">
        <input type="submit" name="update" value="変更" style="width:100px">
        </form>
        <form action="Delete" method="POST">
        <input type="submit" name="delete" value="削除" style="width:100px">
        </form><br>
        <form action="search.jsp" method="POST">
        <input type="submit" name="back" value="検索画面へ戻る" style="width:100px">
        </form>
        <br>
    </body>
    <%= jh.home() %>
</html>
