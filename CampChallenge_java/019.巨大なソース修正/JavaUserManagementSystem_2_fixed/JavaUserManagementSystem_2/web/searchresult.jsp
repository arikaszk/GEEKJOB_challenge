<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="jums.JumsHelper"
        import="jums.UserDataDTO" %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    ArrayList<UserDataDTO> udl = (ArrayList<UserDataDTO>) request.getAttribute("resultList");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS検索結果画面</title>
    </head>
    <body>
        <h1>検索結果</h1>
        <table border=1>
            <tr>
                <th>名前</th>
                <th>生年</th>
                <th>種別</th>
                <th>登録日時</th>
            </tr>
            <%
                if(udl.size() != 0) {
                    for(int i = 0; i < udl.size(); i++) {
                        UserDataDTO ud = udl.get(i);
                        out.print("<tr>");
                        out.println("<td><a href=\"ResultDetail?id=" + ud.getUserID() + "\">" + ud.getName() + "</a></td>");
                        out.println("<td>" + new SimpleDateFormat("yyyy年MM月dd日").format(ud.getBirthday()) + "</td>");
                        out.println("<td>" + jh.exTypenum(ud.getType()) +"</td>");
                        out.println("<td>" + new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss").format(ud.getNewDate()) +"</td>");
                        out.print("</tr>");
                    }
                } else {
                    out.print("<tr><td colspan=\"4\">該当データはありません</td></tr>");
                }
            %>
        </table>
        <br>
        <form action="search.jsp" method="POST">
        <input type="submit" name="back" value="検索画面へ戻る" style="width:100px">
        </form>
        <br>
    </body>
    <%=jh.home()%>
</html>
